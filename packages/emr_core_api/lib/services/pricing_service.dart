import 'dart:async';

import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_core/data/emr_facet_result_value.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:emr_sharedtypes/pricing/publication.dart';

class PricingService {
  PricingService({
    required this.httpClient,
    this.defaultCacheTtl = const Duration(
      minutes: EmrCoreApiConstants.cacheDurationInMin,
    ),
  }) {
    SharedPrefsCacheProvider.createFromDefaultInstance().then((value) {
      emrCacheProvider = value;
    });
  }

  final CoreApiClient httpClient;
  final Duration defaultCacheTtl;

  EmrCacheProvider? emrCacheProvider;

  String source = 'PricingService';

  Future<List<Yard>> getYards({
    Iterable<String>? territoryCodes,
    List<String>? yardCodes,
    String? query,
  }) async {
    final input = Input$SearchYardInput(
      territoryCodes: territoryCodes?.toList(),
      yardCodes: yardCodes,
      query: query,
    );
    final response = await documentNodeQueryGetAllYards.execute(
      httpClient,
      Query$GetAllYards.fromJson,
      variables: Variables$Query$GetAllYards(
        input: input,
        first: 50,
        order: [
          Input$YardSortInput.fromJson({
            'yardCode': 'ASC',
          }),
          Input$YardSortInput.fromJson({
            'shortName': 'ASC',
          }),
        ],
      ),
    );

    if ((response.errors?.isNotEmpty ?? false) ||
        response.data?.yards == null) {
      EmrLogger.event(
        'Failed to get yards',
        params: {
          'query': query ?? '',
          'territoryCodes': territoryCodes?.join(',') ?? '',
          'yardCodes': yardCodes?.join(',') ?? '',
        },
        type: EmrOneCoreTelemetry.kTypeResult,
        severity: EmrLogLevel.error,
        source: source,
      );

      return const [];
    }

    if (!response.hasErrors() && (response.data?.yards != null)) {
      return response.data!.yards!.edges != null
          ? response.data!.yards!.edges!
                .map(
                  (x) => Yard(
                    id: x.node.id,
                    yardCode: x.node.yardCode,
                    name: x.node.name,
                    shortName: x.node.shortName,
                  ),
                )
                .toList()
          : [];
    }
    return const [];
  }

  Future<List<TagTemplateOutput>> getTagTemplates({
    required List<String> territoryIds,
    String? query,
  }) async {
    final input = Input$GetTagTemplatesInput(
      territoryIds: territoryIds,
      query: query,
    );
    final response = await documentNodeQueryTagTemplates.execute(
      httpClient,
      Query$TagTemplates.fromJson,
      variables: Variables$Query$TagTemplates(
        input: input,
        first: 50,
      ),
    );

    if ((response.errors?.isNotEmpty ?? false) ||
        response.data?.tagTemplates?.nodes == null) {
      EmrLogger.event(
        'Failed to get templates',
        params: {
          'query': query ?? '',
          'territoryIds': territoryIds.join(','),
        },
        type: EmrOneCoreTelemetry.kTypeResult,
        severity: EmrLogLevel.error,
        source: source,
      );

      return const [];
    }

    if (!response.hasErrors() &&
        (response.data?.tagTemplates!.nodes?.isNotEmpty ?? false)) {
      return response.data!.tagTemplates!.nodes!
          .map(
            (x) => TagTemplateOutput(
              id: x.id,
              category: x.category,
              reason: x.reason,
            ),
          )
          .toList();
    }
    return const [];
  }

  Future<List<Product>> getProducts(
    List<String>? productFamilies, {
    String? query,
    bool loadAll = false,
  }) async {
    final products = <Product>[];
    var hasNextPage = true;
    String? nextPageToken;

    while (hasNextPage) {
      final response = await documentNodeQueryAllProducts.execute(
        httpClient,
        Query$AllProducts.fromJson,
        variables: {
          'first': 50,
          'after': nextPageToken,
          'query': query == '' ? null : query,
          'productFamilies': productFamilies,
          'order': [
            Input$ProductSortInput.fromJson({
              'code': 'ASC',
            }),
            Input$ProductSortInput.fromJson({
              'description': 'ASC',
            }),
          ],
        },
        cacheProvider: emrCacheProvider,
        cacheTtl: defaultCacheTtl,
        forceLoad: true,
      );

      if ((response.errors?.isNotEmpty ?? false) ||
          response.data?.products?.nodes == null) {
        EmrLogger.event(
          'Failed to get products',
          params: {
            'query': query ?? '',
            'productFamilies': productFamilies?.join(',') ?? '',
          },
          type: EmrOneCoreTelemetry.kTypeResult,
          severity: EmrLogLevel.error,
          source: source,
        );

        return const [];
      }

      if (!response.hasErrors() &&
          (response.data?.products!.nodes?.isNotEmpty ?? false)) {
        products.addAll(
          response.data!.products!.nodes!.map(
            (p) => Product(
              code: p.code,
              description: p.description,
              id: p.id,
            ),
          ),
        );

        nextPageToken = response.data?.products?.pageInfo.endCursor;
        if (loadAll) {
          hasNextPage = response.data?.products?.pageInfo.hasNextPage ?? false;
        } else {
          hasNextPage = false;
        }
      } else {
        hasNextPage = false;
      }
    }

    return products;
  }

  Future<AccountPricesOutput?> executePricingQuery({
    Iterable<String>? accountCodes,
    List<String>? managerNames,
    List<String>? publicationNames,
    List<String>? productFamilies,
    List<String>? productCodes,
    List<String>? yardCodes,
    List<DeliveryMethod>? deliveryMethods,
    List<String>? tags,
    String? searchText,
    DateTime? tagExpiryDate,
    String? after,
    String? before,
    int? first,
    int? last,
    List<Map<String, dynamic>>? order,
    List<String>? territoryIds,
  }) async {
    try {
      final input = Input$GetPricesFlattenedInput(
        accountCodes: accountCodes?.toList() ?? const [],
        accountManagers: managerNames,
        publicationNames: publicationNames,
        productFamilies: productFamilies,
        productCodes: productCodes,
        yardCodes: yardCodes,
        dateTimeOffset: DateTime.now(),
        tags: tags ?? [],
        searchText: searchText ?? '',
        deliveryMethods: deliveryMethods?.map(_toApiDeliveryMethod).toList(),
        territoryIds: territoryIds,
        expirationDate: tagExpiryDate,
      );

      final sorting = order
          ?.map(
            Input$OutputSortInput.fromJson,
          )
          .toList();

      final response = await documentNodeQueryAccountPrices.execute(
        httpClient,
        Query$AccountPrices.fromJson,
        variables: Variables$Query$AccountPrices(
          input: input,
          after: after,
          before: before,
          first: first,
          last: last,
          tagExpiryDate: tagExpiryDate,
          sorting: sorting,
        ),
      );

      if (response.data?.accountPricesFlattened == null ||
          (response.errors?.isNotEmpty ?? false)) {
        EmrLogger.event(
          'Failed to get account prices',
          params: {
            'accountCodes': accountCodes?.join(',') ?? '',
            'managerNames': managerNames?.join(',') ?? '',
            'publicationNames': publicationNames?.join() ?? '',
            'productFamilies': productFamilies?.join(',') ?? '',
            'productCodes': productCodes?.join(',') ?? '',
            'yardCodes': yardCodes?.join(',') ?? '',
            'deliveryMethods': deliveryMethods?.join(',') ?? '',
            'tags': tags?.join(',') ?? '',
            'searchText': searchText ?? '',
          },
          type: EmrOneCoreTelemetry.kTypeResult,
          severity: EmrLogLevel.error,
          source: source,
        );

        return null;
      }

      var results =
          response.data!.accountPricesFlattened?.nodes
              ?.map(
                (r) => r.toAccountPrice(),
              )
              .toList() ??
          const [];

      final facets = {
        for (final (key, facetSection) in _mapApiFacets(response))
          key: facetSection,
      };

      if (tagExpiryDate != null) {
        results = results.where((x) => x.tags.isNotEmpty).toList();
      }

      final totalCount = response.data!.accountPricesFlattened?.totalCount;

      final pageInfo = EmrQueryGraphQLPageInfo(
        hasPreviousPage:
            response.data!.accountPricesFlattened!.pageInfo.hasPreviousPage,
        hasNextPage:
            response.data!.accountPricesFlattened!.pageInfo.hasNextPage,
        startCursor:
            response.data!.accountPricesFlattened!.pageInfo.startCursor,
        endCursor: response.data!.accountPricesFlattened!.pageInfo.endCursor,
      );

      final meta = EmrQueryGraphQLMetadata<Map<String, EmrFacetResult>>(
        facets,
        totalCount!,
        pageInfo,
      );

      return AccountPricesOutput(
        accountPrices: results,
        metadata: meta,
      );
    } on Exception catch (e, trace) {
      EmrLogger.error(
        'Failed to get account prices',
        params: {
          'accountCodes': accountCodes?.join(',') ?? '',
          'managerNames': managerNames?.join(',') ?? '',
          'publicationNames': publicationNames?.join() ?? '',
          'productFamilies': productFamilies?.join(',') ?? '',
          'productCodes': productCodes?.join(',') ?? '',
          'yardCodes': yardCodes?.join(',') ?? '',
          'deliveryMethods': deliveryMethods?.join(',') ?? '',
          'tags': tags?.join(',') ?? '',
          'searchText': searchText ?? '',
        },
        type: EmrOneCoreTelemetry.kTypeResult,
        stackTrace: trace,
        error: e,
        source: source,
      );

      return null;
    }
  }

  Future<List<Publication>> getPublicationsById(
    List<String> publicationIds,
  ) async {
    try {
      final response = await documentNodeQueryGetPublicationsById.execute(
        httpClient,
        Query$GetPublicationsById.fromJson,
        variables: Variables$Query$GetPublicationsById(
          publicationIds: publicationIds,
        ),
      );

      if (response.errors?.isNotEmpty ?? false) {
        EmrLogger.event(
          'Failed to get publications',
          params: {
            'publicationIds': publicationIds.join(','),
          },
          severity: EmrLogLevel.error,
          source: source,
          type: EmrOneCoreTelemetry.kTypeResult,
        );

        return const [];
      }

      return (response.data?.publications ?? [])
          .map(
            (p) => Publication(
              id: p.id,
              name: p.name,
              availableProducts: p.availableProducts
                  .map(
                    (p) => Product(
                      id: p.id,
                      code: p.code,
                      description: p.description,
                    ),
                  )
                  .toList(),
              availableYards: p.availableYards
                  .map(
                    (p) => Yard(
                      yardCode: p.yardCode,
                      name: p.name,
                      shortName: p.name,
                      id: p.id,
                    ),
                  )
                  .toList(),
            ),
          )
          .toList();
    } on Exception catch (e, trace) {
      EmrLogger.error(
        'Failed to get publications',
        params: {
          'publicationIds': publicationIds.join(','),
        },
        stackTrace: trace,
        error: e,
        source: source,
        type: EmrOneCoreTelemetry.kTypeResult,
      );

      return const [];
    }
  }

  Future<List<String>> getProductFamilies(String? query) async {
    try {
      final response = await documentNodeQueryProductFamilies.execute(
        httpClient,
        Query$ProductFamilies.fromJson,
      );

      if (response.errors?.isNotEmpty ?? false) {
        EmrLogger.event(
          'Failed to get product families',
          params: {
            'query': query ?? '',
          },
          type: EmrOneCoreTelemetry.kTypeResult,
          severity: EmrLogLevel.error,
          source: source,
        );

        return const [];
      }

      if (query?.isNotEmpty ?? false) {
        final regex = RegExp(query!, caseSensitive: false);

        final results = response.data?.productFamilies
            .where((f) => f.contains(regex))
            .toList();
        final sortedResults = results?..sort((a, b) => a.compareTo(b));
        return sortedResults ?? [];
      }

      final result = response.data?.productFamilies.toList();
      final sortedResult = result?..sort((a, b) => a.compareTo(b));
      return sortedResult ?? [];
    } on Exception catch (e, trace) {
      EmrLogger.error(
        'Failed to get product families',
        params: {
          'query': query ?? '',
        },
        stackTrace: trace,
        source: source,
        error: e,
        type: EmrOneCoreTelemetry.kTypeResult,
      );

      return const [];
    }
  }

  Future<(bool, List<String?>?)> createTags({
    required String tagTemplateId,
    required List<AccountPrice> input,
    DateTime? validFrom,
    DateTime? validTo,
    UomValue? tagRate,
    UomValue? haulageCharge,
    String? overrideDefaultRateReason,
    bool showToCustomer = false,
    bool fullyCharged = false,
    List<String>? accountLocationsKeys,
    bool? isCollected,
    bool? expireOnNextPublicationIssue,
  }) async {
    try {
      final apiInputs = input
          .map(
            (x) => Input$CreateTagInput(
              tagTemplateId: tagTemplateId,
              accountId: x.accountId,
              productId: x.productId,
              yardId: x.yardId,
              deliveryMethod: _toApiDeliveryMethod(x.deliveryMethod),
              effectiveFrom: validFrom,
              effectiveTo: validTo,
              rate: tagRate == null ? null : _toApiUomValue(tagRate),
              tagTargetId: x.publicationId,
              showToCustomer: showToCustomer || fullyCharged,
              fullyCharged: fullyCharged,
              accountLocationsKeys: accountLocationsKeys,
              isCollected: isCollected ?? false,
              expireOnNextPublicationIssue: expireOnNextPublicationIssue,
              haulageRate: haulageCharge == null
                  ? null
                  : _toApiUomValue(haulageCharge),
            ),
          )
          .toList();

      final response = await documentNodeMutationCreateTags.execute(
        httpClient,
        Mutation$CreateTags.fromJson,
        variables: Variables$Mutation$CreateTags(inputs: apiInputs),
      );

      if (response.hasErrors() || response.data?.createTags == null) {
        EmrLogger.event(
          'Error creating tag',
          params: {
            'tagTemplateId': tagTemplateId,
            'accountIds': input.map((x) => x.accountCode).join(','),
            'yardIds': input.map((x) => x.yardId).join(','),
            'productIds': input.map((x) => x.productId).join(','),
            'validFrom': validFrom.toString(),
            'validTo': validTo.toString(),
            'tagRate': tagRate?.toRateString() ?? '',
            'haulageRate': haulageCharge?.toRateString() ?? '',
          },
          type: EmrOneCoreTelemetry.kTypeResult,
          severity: EmrLogLevel.error,
          source: source,
        );

        final errors = List<String?>.empty(growable: true);
        response.errors?.forEach(
          (error) {
            if (error.extensions?['errorCode'] != null) {
              errors.add(error.extensions?['errorCode'] as String);
            } else {
              errors.add('Error');
            }
          },
        );
        return (false, errors);
      }
    } on Exception catch (ex, trace) {
      EmrLogger.error(
        'Error creating tag',
        params: {
          'tagTemplateId': tagTemplateId,
          'accountIds': input.map((x) => x.accountCode).join(','),
          'yardIds': input.map((x) => x.yardId).join(','),
          'productIds': input.map((x) => x.productId).join(','),
          'validFrom': validFrom.toString(),
          'validTo': validTo.toString(),
          'tagRate': tagRate?.toRateString() ?? '',
          'haulageRate': haulageCharge?.toRateString() ?? '',
        },
        type: EmrOneCoreTelemetry.kTypeResult,
        stackTrace: trace,
        error: ex,
        source: source,
      );

      return (false, null);
    }

    return (true, null);
  }

  Future<(bool?, List<String?>?)> updateTag({
    required String tagId,
    required DateTime newEndDate,
    required String accountId,
  }) async {
    final apiInput = Input$UpdateTagEndDateInput(
      tagId: tagId,
      newEndDate: newEndDate,
      accountId: accountId,
    );

    final response = await documentNodeMutationUpdateTagEndDate.execute(
      httpClient,
      Mutation$UpdateTagEndDate.fromJson,
      variables: Variables$Mutation$UpdateTagEndDate(input: apiInput),
    );

    final errors = List<String?>.empty(growable: true);
    if (response.hasErrors()) {
      response.errors?.forEach(
        (error) {
          if (error.extensions?['errorCode'] != null) {
            errors.add(error.extensions?['errorCode'] as String);
          } else {
            errors.add('Error');
          }
        },
      );
      return (false, errors);
    }

    return response.data!.updateTagEndDate!.when(
      tag: (tag) => (true, null),
      updateTagEndDateError: (error) {
        EmrLogger.event(
          'Error extending tag',
          params: {
            'tagId': tagId,
            'newEndDate': newEndDate.toString(),
            'accountId': accountId,
          },
          type: EmrOneCoreTelemetry.kTypeResult,
          severity: EmrLogLevel.error,
          source: source,
        );
        return (false, errors);
      },
      orElse: () {
        EmrLogger.event(
          'Error extending tag',
          params: {
            'tagId': tagId,
            'newEndDate': newEndDate.toString(),
            'accountId': accountId,
            for (final (index, error) in response.errors!.indexed)
              '$index': error.message,
          },
          type: EmrOneCoreTelemetry.kTypeResult,
          severity: EmrLogLevel.error,
          source: source,
        );

        return (false, errors);
      },
    );
  }

  Future<List<TagCategoryOutput>> getTagCategories({
    required List<String> territoryIds,
  }) async {
    final input = Input$GetTagCategoriesInput(
      territoryIds: territoryIds,
    );

    final response = await documentNodeQueryTagCategories.execute(
      httpClient,
      Query$TagCategories.fromJson,
      variables: Variables$Query$TagCategories(input: input),
    );

    if (response.data != null) {
      return response.data!.tagCategories
          .map(
            (x) => TagCategoryOutput(
              id: x.id,
              name: x.name,
              functional: x.functional,
            ),
          )
          .toList();
    } else {
      return const [];
    }
  }

  Future<List<TagReasonOutput>> getTagReasons() async {
    final response = await documentNodeQueryTagReasons.execute(
      httpClient,
      Query$TagReasons.fromJson,
    );

    if (response.data != null) {
      return response.data!.tagReasons
          .map(
            (x) => TagReasonOutput(
              id: x.id,
              reason: x.name,
            ),
          )
          .toList();
    } else {
      return const [];
    }
  }

  Future<(TagTemplateOutput?, List<String?>?)> createTagTemplates({
    required String categoryId,
    required String reason,
  }) async {
    try {
      final input = Input$CreateTagTemplateInput(
        categoryId: categoryId,
        reason: reason,
      );

      final response = await documentNodeMutationCreateTagTemplate.execute(
        httpClient,
        Mutation$CreateTagTemplate.fromJson,
        variables: Variables$Mutation$CreateTagTemplate(input: input),
      );

      final errors = List<String?>.empty(growable: true);
      if (response.hasErrors()) {
        response.errors?.forEach(
          (error) {
            if (error.extensions?['errorCode'] != null) {
              errors.add(error.extensions?['errorCode'] as String);
            } else {
              errors.add('Error');
            }
          },
        );
        return (null, errors);
      }

      return response.data!.createTagTemplate!.when(
        tagTemplate: (tag) {
          return (
            TagTemplateOutput(
              id: tag.id,
              category: tag.category,
              reason: tag.reason,
            ),
            null,
          );
        },
        createTagTemplateError: (error) {
          EmrLogger.event(
            'Error creating tag',
            params: {
              'categoryId': categoryId,
              'reason': reason,
            },
            type: EmrOneCoreTelemetry.kTypeResult,
            severity: EmrLogLevel.error,
            source: source,
          );

          return (null, errors);
        },
        orElse: () {
          EmrLogger.event(
            'Error creating tag',
            params: {
              'categoryId': categoryId,
              'reason': reason,
              for (final (index, error) in response.errors!.indexed)
                '$index': error.message,
            },
            type: EmrOneCoreTelemetry.kTypeResult,
            severity: EmrLogLevel.error,
            source: source,
          );

          return (null, errors);
        },
      );
    } on Exception catch (ex, trace) {
      EmrLogger.error(
        'Error creating tag',
        params: {
          'categoryId': categoryId,
          'reason': reason,
        },
        type: EmrOneCoreTelemetry.kTypeResult,
        stackTrace: trace,
        error: ex,
        source: source,
      );

      return (null, null);
    }
  }

  Future<(TagCategoryOutput?, List<String?>?)> createTagCategories({
    required List<String> territoryIds,
    required String category,
    bool functional = false,
  }) async {
    try {
      final input = Input$CreateTagCategoryInput(
        name: category,
        functional: functional,
        territoryIds: territoryIds,
      );

      final response = await documentNodeMutationCreateTagCategory.execute(
        httpClient,
        Mutation$CreateTagCategory.fromJson,
        variables: Variables$Mutation$CreateTagCategory(input: input),
      );

      final errors = List<String?>.empty(growable: true);
      if (response.hasErrors()) {
        response.errors?.forEach(
          (error) {
            if (error.extensions?['errorCode'] != null) {
              errors.add(error.extensions?['errorCode'] as String);
            } else {
              errors.add('Error');
            }
          },
        );
        return (null, errors);
      }

      return response.data!.createTagCategory!.when(
        tagCategory: (category) {
          return (
            TagCategoryOutput(
              name: category.name,
              functional: category.functional,
              id: category.id,
            ),
            null,
          );
        },
        createTagCategoryError: (error) {
          EmrLogger.event(
            'Error creating tag category',
            params: {
              'categoryName': category,
              'function': functional.toString(),
              'territoryIds': territoryIds.join(','),
            },
            type: EmrOneCoreTelemetry.kTypeResult,
            severity: EmrLogLevel.error,
            source: source,
          );

          return (null, errors);
        },
        orElse: () {
          EmrLogger.event(
            'Error creating tag category',
            params: {
              'categoryName': category,
              'function': functional.toString(),
              'territoryIds': territoryIds.join(','),
              for (final (index, error) in response.errors!.indexed)
                '$index': error.message,
            },
            type: EmrOneCoreTelemetry.kTypeResult,
            severity: EmrLogLevel.error,
            source: source,
          );

          return (null, errors);
        },
      );
    } on Exception catch (ex, trace) {
      EmrLogger.error(
        'Error creating tag category',
        params: {
          'categoryName': category,
          'function': functional.toString(),
          'territoryIds': territoryIds.join(','),
        },
        type: EmrOneCoreTelemetry.kTypeResult,
        error: ex,
        stackTrace: trace,
        source: source,
      );

      return (null, null);
    }
  }

  Future<(bool success, String? error)> setAllowedProducts(
    String accountId,
    List<AccountPublication> publications,
  ) async {
    try {
      final response = await documentNodeMutationSetAllowedProducts.execute(
        httpClient,
        variables: Variables$Mutation$SetAllowedProducts(
          input: Input$CreateAllowedProductsInput(
            accountId: accountId,
            allowedProducts: publications.isNotEmpty
                ? publications
                      .map(
                        (p) => Input$AllowedProductInput(
                          publicationId: p.publication.id,
                          productIds: p.allowedProducts.productIds,
                          yardIds: p.allowedProducts.yardIds,
                        ),
                      )
                      .toList()
                : [],
          ),
        ),
        Mutation$UpdateAccountPublications.fromJson,
      );

      if (response.errors?.isNotEmpty ?? false) {
        EmrLogger.event(
          'Failed to set allowed products for publication',
          params: {
            'accountId': accountId,
            'publicationIds': publications
                .map((p) => p.publication.id)
                .join(','),
          },
          type: EmrOneCoreTelemetry.kTypeResult,
          severity: EmrLogLevel.error,
          source: source,
        );

        return (
          false,
          'An error occurred while setting allowed products for publication. : '
              '${response.errors!.join(',')}',
        );
      }

      return (true, '');
    } on Exception catch (e, trace) {
      EmrLogger.error(
        'Failed to set allowed products for publication',
        params: {
          'accountId': accountId,
          'publicationIds': publications.map((p) => p.publication.id).join(','),
        },
        type: EmrOneCoreTelemetry.kTypeResult,
        error: e,
        stackTrace: trace,
        source: source,
      );

      return (
        false,
        'An error occurred while setting allowed products '
            'for publication.',
      );
    }
  }

  Future<bool> delete(String accountId, Tag tag) async {
    final response = await documentNodeMutationRemoveTag.execute(
      httpClient,
      variables: Variables$Mutation$RemoveTag(
        input: Input$RemoveTagInput(accountId: accountId, tagId: tag.id),
      ),
      Mutation$RemoveTag.fromJson,
    );

    if (response.errors?.isNotEmpty ?? false) {
      EmrLogger.event(
        'Failed to set allowed products for publication',
        params: {
          'accountId': accountId,
          'tagId': tag.id,
        },
        type: EmrOneCoreTelemetry.kTypeResult,
        severity: EmrLogLevel.error,
        source: source,
      );

      return false;
    }

    final data = response.data?.removeTag;
    if (data == null) return false;

    if (data.$__typename == 'RemoveTagSuccess') {
      return true;
    } else {
      return false;
    }
  }

  Future<(bool?, List<String?>?)> sendEmail({
    required String accountId,
    required List<String> recipients,
    required String senderEmail,
    required String buyingManagerName,
    required String mainContactName,
    required String accountPrimaryAddress,
    List<String>? managersEmail,
  }) async {
    final apiInput = Input$EmailInput(
      accountId: accountId,
      recipients: recipients,
      ccRecipients: managersEmail,
      senderEmail: senderEmail,
      buyingManagerName: buyingManagerName,
      mainContactName: mainContactName,
      accountPrimaryAddress: accountPrimaryAddress,
    );

    final response = await documentNodeMutationSendMail.execute(
      httpClient,
      Mutation$SendMail.fromJson,
      variables: Variables$Mutation$SendMail(input: apiInput),
    );

    final errors = List<String?>.empty(growable: true);
    if (response.hasErrors()) {
      response.errors?.forEach(
        (error) {
          if (error.extensions?['errorCode'] != null) {
            errors.add(error.extensions?['errorCode'] as String);
          } else {
            errors.add('Error');
          }
        },
      );
      return (false, errors);
    }

    return (response.data?.sendEmail, null);
  }

  static Input$UomValueInput _toApiUomValue(UomValue uomValue) {
    final mappedValue = Input$UomValueInput(
      isRate: uomValue.isRate,
      uom: _toApiUom(uomValue.uom),
      value: uomValue.value,
    );

    return mappedValue;
  }

  static Enum$DeliveryMethod _toApiDeliveryMethod(DeliveryMethod dm) =>
      switch (dm) {
        DeliveryMethod.none => Enum$DeliveryMethod.NONE,
        DeliveryMethod.delivered => Enum$DeliveryMethod.DELIVERED,
        DeliveryMethod.collected => Enum$DeliveryMethod.COLLECTED,
        DeliveryMethod.collectedLessCharge =>
          Enum$DeliveryMethod.COLLECTED_LESS_CHARGE,
        DeliveryMethod.collectedFullyCharged =>
          Enum$DeliveryMethod.COLLECTED_FULLY_CHARGED,
      };

  static Enum$Uom _toApiUom(Uom uom) => switch (uom) {
    Uom.mt => Enum$Uom.MT,
    Uom.lb => Enum$Uom.LB,
    Uom.gt => Enum$Uom.GT,
    Uom.nt => Enum$Uom.NT,
    Uom.kg => Enum$Uom.KG,
    Uom.ld => Enum$Uom.LD,
    Uom.ea => Enum$Uom.EA,
    Uom.lt => Enum$Uom.LT,
    Uom.hr => Enum$Uom.HR,
    Uom.cwt => Enum$Uom.CWT,
    Uom.unknown => throw ArgumentError.value(uom, 'uom'),
  };

  static Iterable<(String, EmrFacetResult)> _mapApiFacets(
    GraphQLResponse<Query$AccountPrices> response,
  ) =>
      response.data?.accountPricesFlattenedFacets.map(
        _mapApiFacet,
      ) ??
      const <(String, EmrFacetResult)>[];

  static (String, EmrFacetResult) _mapApiFacet(
    Query$AccountPrices$accountPricesFlattenedFacets apiFacet,
  ) {
    final facetSection = EmrFacetResult(
      name: switch (apiFacet.value.name) {
        'YardCode' => 'Yard',
        'AccountCode' => 'Account Code',
        'ProductCode' => 'Product Code', //'By Product',
        'PublicationName' => 'Publication',
        'DeliveryMethod' => 'Delivery Method',
        'PrimaryAccountManagerName' => 'Account Manager',
        'TagsReasons' => 'Tags Reasons',
        _ => throw ArgumentError.value(
          apiFacet.value.name,
          'apiFacet.value.name',
        ),
      },
      values:
          apiFacet.value.values
              ?.map(
                (f) => EmrFacetResultValue(
                  text: f?.range?.toUpperCase() ?? '',
                  value: f?.range ?? '',
                  count: f?.count ?? 0,
                ),
              )
              .toList() ??
          const [],
    );

    final key = switch (apiFacet.value.name) {
      'YardCode' => kYardCodeKey,
      'AccountCode' => kAccountCodeKey,
      'ProductCode' => kProductCodeKey, //'By Product',
      'PublicationName' => kPublicationNameKey,
      'DeliveryMethod' => kDeliveryMethodKey,
      'PrimaryAccountManagerName' => kManagedBuyerKey,
      'TagsReasons' => kTagsKey,
      _ => throw ArgumentError.value(
        apiFacet.value.name,
        'apiFacet.value.name',
      ),
    };

    return (key, facetSection);
  }

  // Required filters.
  static const kManagedBuyerKey = 'Manager';
  static const kAccountCodeKey = 'AccountCode';

  // Optional filters.
  static const kProductFamilyKey = 'ProductFamily';
  static const kProductCodeKey = 'ProductCode';
  static const kPublicationNameKey = 'PublicationName';
  static const kTagsKey = 'TagsReasons';
  static const kYardCodeKey = 'Yard';
  static const kDeliveryMethodKey = 'DeliveryMethod';
  static const kExpiration = 'ExpirationDate';
}
