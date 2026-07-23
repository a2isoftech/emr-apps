import 'package:emr_one_core/controllers/controllers.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_crm/graphql/trader/mutations/add_tag_template.graphql.dart';
import 'package:emr_one_crm/graphql/trader/mutations/add_tags.graphql.dart';
import 'package:emr_one_crm/graphql/trader/mutations/update_tag_template.graphql.dart';
import 'package:emr_one_crm/graphql/trader/mutations/update_tags.graphql.dart';
import 'package:emr_one_crm/graphql/trader/queries/get_guide_price_list_lines.graphql.dart';
import 'package:emr_one_crm/graphql/trader/queries/guide_price_list_lines_facet.graphql.dart';
import 'package:emr_one_crm/graphql/trader/queries/queries.dart';
import 'package:emr_one_crm/graphql/trader/queries/tagging/get_active_tag_templates.graphql.dart';
import 'package:emr_one_crm/graphql/trader/schema.graphql.dart';
import 'package:emr_one_crm/models/expiration_date.dart';
import 'package:emr_one_crm/models/guide_price_lists/gpl_mappers.dart';
import 'package:emr_one_crm/models/guide_price_lists/guide_price_list_line.dart';
import 'package:emr_one_crm/models/guide_price_lists/tag_template.dart';
import 'package:emr_one_crm/models/guide_price_lists/tags_mappers.dart';
import 'package:emr_one_crm/models/models.dart';
import 'package:emr_one_crm/models/tagging/adjust_tag.dart';
import 'package:emr_one_crm/screens/pricing-admin/gpl_query_search_filters.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class GplService {
  GplService({
    required this.httpClient,
    required this.settingsController,
    this.cacheTtl = const Duration(minutes: 1),
  }) {
    SharedPrefsCacheProvider.createFromDefaultInstance().then((value) {
      cacheProvider = value;
    });
  }
  final BaseClient httpClient;
  final SettingsController settingsController;
  final Duration cacheTtl;
  EmrCacheProvider? cacheProvider;

  Future<List<Grade>> getGrades(
    List<String>? gradeTypes,
    String query,
  ) async {
    final result = await documentNodeQueryGetGradesForUser.execute(
      httpClient,
      Query$GetGradesForUser.fromJson,
      cacheProvider: cacheProvider,
      cacheTtl: cacheTtl,
      forceLoad: true,
    );

    if (result.hasErrors() || result.data?.gradesForUser == null) {
      throw Exception('There was an error');
    }

    final queryLowerCase = query.toLowerCase();

    return result.data!.gradesForUser
        .where(
          (g) =>
              gradeTypes == null ||
              gradeTypes.isEmpty ||
              gradeTypes.contains(g.gradeType),
        )
        .map(
          (e) => Grade(
            e.gradeCode,
            e.comment,
            e.gradeGroup,
            e.gradeType,
          ),
        )
        .toList()
        .where(
          (element) =>
              element.gradeCode.toLowerCase().contains(queryLowerCase) ||
              element.description.toLowerCase().contains(queryLowerCase),
        )
        .toList();
  }

  Future<List<String>> getGradeGroups(
    String query,
  ) async {
    final result = await documentNodeQueryGetGradesForUser.execute(
      httpClient,
      Query$GetGradesForUser.fromJson,
      cacheProvider: cacheProvider,
      cacheTtl: cacheTtl,
      forceLoad: true,
    );

    if (result.hasErrors() || result.data?.gradesForUser == null) {
      throw Exception('There was an error');
    }

    final queryLowerCase = query.toLowerCase();

    return result.data!.gradesForUser
        .map(
          (e) => e.gradeGroup,
        )
        .toList()
        .where(
          (g) => g.toLowerCase().contains(queryLowerCase),
        )
        .toSet()
        .toList();
  }

  Future<List<String>> getGradeTypes(
    String query,
  ) async {
    final result = await documentNodeQueryGetGradesForUser.execute(
      httpClient,
      Query$GetGradesForUser.fromJson,
      cacheProvider: cacheProvider,
      cacheTtl: cacheTtl,
      forceLoad: true,
    );

    if (result.hasErrors() || result.data?.gradesForUser == null) {
      throw Exception('There was an error');
    }

    final queryLowerCase = query.toLowerCase();

    return result.data!.gradesForUser
        .map(
          (e) => e.gradeType,
        )
        .toList()
        .where(
          (element) => element.toLowerCase().contains(queryLowerCase),
        )
        .toSet()
        .toList();
  }

  Future<
      (
        List<GuidePriceListLine>,
        EmrQueryGraphQLMetadata<Query$PriceListFacet>
      )> searchPriceLists(
    GplQuerySearchFilters filters,
    String query,
    int? first,
    String? before,
    String? after,
    int? last,
  ) async {
    if (filters.managedBuyerId == null && filters.partyAccountNos == null) {
      return (
        <GuidePriceListLine>[],
        EmrQueryGraphQLMetadata<Query$PriceListFacet>(
          Query$PriceListFacet(
            priceListFacet: [],
          ), // Assuming facets are null or some valid value
          0, // Default count
          EmrQueryGraphQLPageInfo(
            hasPreviousPage: false,
            hasNextPage: false,
            startCursor: null,
            endCursor: null,
          ),
        )
      );
    }
    final facets = await searchPriceListFacet(
      query: query,
      filters: filters,
    );

    final response = await documentNodeQueryGetGuidePriceDetails.execute(
      httpClient,
      Query$GetGuidePriceDetails.fromJson,
      variables: Variables$Query$GetGuidePriceDetails(
        input: Input$GetGuidePricesInput(
          searchText: '*$query*',
          publicationIds:
              filters.publicationId == null ? [] : [filters.publicationId!],
          searchDate: DateTime.now().dateOnly,
          buyerIds:
              filters.managedBuyerId == null ? [] : [filters.managedBuyerId!],
          partyAccountNos: filters.partyAccountNos,
          gradeCodes: filters.gradeCodes,
          yardCodes: filters.yardCode,
          tagReason: filters.tag,
          expirationDate: filters.expirationDate,
          gradeTypes: filters.gradeTypes,
        ),
        first: first,
        last: last,
        before: before,
        after: after,
      ),
    );
    if (response.hasErrors()) {
      throw Exception(response.errors);
    }

    return (
      GplMappers.gplMapper(response.data?.priceList?.nodes ?? []),
      EmrQueryGraphQLMetadata<Query$PriceListFacet>(
        facets,
        response.data?.priceList?.totalCount ?? 0,
        EmrQueryGraphQLPageInfo(
          hasPreviousPage:
              response.data?.priceList?.pageInfo.hasPreviousPage ?? false,
          hasNextPage: response.data?.priceList?.pageInfo.hasNextPage ?? false,
          startCursor: response.data?.priceList?.pageInfo.startCursor,
          endCursor: response.data?.priceList?.pageInfo.endCursor,
        ),
      )
    );
  }

  Future<Query$PriceListFacet> searchPriceListFacet({
    required GplQuerySearchFilters filters,
    String? query,
  }) async {
    final response = await documentNodeQueryPriceListFacet.execute(
      httpClient,
      Query$PriceListFacet.fromJson,
      variables: Variables$Query$PriceListFacet(
        input: Input$GetGuidePricesInput(
          searchText: '*$query*',
          publicationIds:
              filters.publicationId == null ? [] : [filters.publicationId!],
          searchDate: DateTime.now().dateOnly,
          buyerIds:
              filters.managedBuyerId == null ? [] : [filters.managedBuyerId!],
          partyAccountNos: filters.partyAccountNos,
          gradeCodes: filters.gradeCodes,
          yardCodes: filters.yardCode,
          tagReason: filters.tag,
          expirationDate: filters.expirationDate,
          gradeTypes: filters.gradeTypes,
        ),
      ),
    );

    if (response.hasErrors()) {
      throw Exception(response.errors);
    }

    return response.data!;
  }

  Future<GraphQLResponse<Query$GetTagNames>>? getTagNames() async {
    return documentNodeQueryGetTagNames.execute(
      httpClient,
      Query$GetTagNames.fromJson,
      variables: Variables$Query$GetTagNames(
        input: settingsController.territory,
        query: '**',
        first: 10,
      ),
    );
  }

  Future<
      (
        List<TagTemplates>,
        EmrQueryGraphQLMetadata<Query$GetTagNames$tagTemplates>
      )> getTagTemplatesList(
    String searchText,
    int? first,
    String? before,
    String? after,
    int? last,
  ) async {
    final results = await documentNodeQueryGetTagNames.execute(
      httpClient,
      Query$GetTagNames.fromJson,
      variables: Variables$Query$GetTagNames(
        input: settingsController.territory,
        query: '*$searchText*',
        first: first,
        before: before,
        after: after,
        last: last,
      ),
    );
    final pageData = results.data!.tagTemplates!.nodes
            ?.map(TagTemplateMappers.tagMapper)
            .toList() ??
        [];
    final meta = EmrQueryGraphQLMetadata<Query$GetTagNames$tagTemplates>(
      Query$GetTagNames$tagTemplates(
        nodes: [],
        totalCount: results.data!.tagTemplates!.totalCount,
        pageInfo: results.data!.tagTemplates!.pageInfo,
      ), // Assuming facets are null or some valid value
      results.data?.tagTemplates?.totalCount ?? 0,
      EmrQueryGraphQLPageInfo(
        hasPreviousPage:
            results.data?.tagTemplates?.pageInfo.hasPreviousPage ?? false,
        hasNextPage: results.data?.tagTemplates?.pageInfo.hasNextPage ?? false,
        startCursor: results.data?.tagTemplates?.pageInfo.startCursor,
        endCursor: results.data?.tagTemplates?.pageInfo.endCursor,
      ),
    );
    return (pageData, meta);
  }

  Future<List<Query$GetTagNames$tagTemplates$nodes>>? getTagTemplates() async {
    final results = await documentNodeQueryGetTagNames.execute(
      httpClient,
      Query$GetTagNames.fromJson,
      variables: Variables$Query$GetTagNames(
        input: settingsController.territory,
        query: '**',
        first: 10,
      ),
    );
    return results.data!.tagTemplates!.nodes ?? [];
  }

  Future<List<ExpirationDate>>? getExpirationDates(BuildContext context) async {
    final now = DateTime.now();
    final startDate = now.month == 12
        ? DateTime(now.year + 1)
        : DateTime(now.year, now.month + 1);
    final expirationDates = <ExpirationDate>[
      ExpirationDate(
        context.l10n.yardLiveLoadDateFilterThisWeek,
        DateTime.now().add(const Duration(days: 7)),
      ),
      ExpirationDate(
        context.l10n.yardLiveLoadDateFilterNextWeek,
        DateTime.now().add(const Duration(days: 14)),
      ),
      ExpirationDate(
        context.l10n.thisMonth,
        startDate.add(const Duration(days: -1)),
      ),
    ];

    return Future.value(expirationDates);
  }

  Future<GraphQLResponse<Mutation$AddTagTemplates>>? addTagTemplates(
    TagTemplates tagTemplate,
  ) async {
    return documentNodeMutationAddTagTemplates.execute(
      httpClient,
      Mutation$AddTagTemplates.fromJson,
      variables: Variables$Mutation$AddTagTemplates(
        input: Input$AddTagTemplateInput(
          category: tagTemplate.tagCategory,
          reason: tagTemplate.tagReason,
          territory: tagTemplate.tagTerritory,
        ),
      ),
    );
  }

  Future<GraphQLResponse<Mutation$AddTags>>? addTags(
    AdjustTag adjustTag,
    List<Input$PriceListIdGradesInput> priceListIdGrades,
  ) async {
    return documentNodeMutationAddTags.execute(
      httpClient,
      Mutation$AddTags.fromJson,
      variables: Variables$Mutation$AddTags(
        input: Input$AddTagInput(
          tag: Input$ItemTagInput(
            tagId: 0,
            category: adjustTag.tagName,
            reason: adjustTag.tagName,
            startDate: adjustTag.startDate,
            endDate: adjustTag.endDate,
            active: true,
            rate: adjustTag.tagDelta.value,
            rateUoM: adjustTag.tagDelta.uom.toString(),
            rateUoMValue: adjustTag.tagDelta.value,
            functional: true,
          ),
          priceListIds: priceListIdGrades,
        ),
      ),
    );
  }

  Future<GraphQLResponse<Mutation$UpdateTags>>? updateTags(
    String tagId,
    String priceListId,
    DateTime endDate,
    String productCode,
  ) async {
    return documentNodeMutationUpdateTags.execute(
      httpClient,
      Mutation$UpdateTags.fromJson,
      variables: Variables$Mutation$UpdateTags(
        input: Input$UpdateTagInput(
          tagId: tagId,
          priceListId: priceListId,
          endDate: endDate,
          productCode: productCode,
        ),
      ),
    );
  }

  int getDefaultUom() {
    return settingsController.uomId();
  }

  Future<GraphQLResponse<Mutation$UpdateTagTemplates>>? updateTagTemplates(
    TagTemplates tagTemplate,
  ) async {
    return documentNodeMutationUpdateTagTemplates.execute(
      httpClient,
      Mutation$UpdateTagTemplates.fromJson,
      variables: Variables$Mutation$UpdateTagTemplates(
        input: Input$UpdateTagTemplateInput(
          id: tagTemplate.id,
          category: tagTemplate.tagCategory,
          reason: tagTemplate.tagReason,
        ),
      ),
    );
  }
}
