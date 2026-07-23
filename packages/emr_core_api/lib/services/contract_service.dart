import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_core_api/extensions/contracts_factory.dart';
import 'package:emr_core_api/graphql/queries/contracts/get_contracts_list.graphql.dart';
import 'package:emr_core_api/models/contracts_output.dart';
import 'package:emr_one_core/data/emr_facet_result_value.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/widgets.dart';

class ContractService {
  ContractService({
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

  String source = 'ContractService';

  Future<ContractsOutput?> executeContractsQuery({
    Iterable<String>? accountCodes,
    List<String>? internalContractReferences,
    List<String>? customerContractReferences,
    List<String>? status,
    List<String>? products,
    List<String>? contractOrderBookTypeName,
    List<String>? pricingBasis,
    List<String>? deliveryMethod,
    String? searchText,
    String? after,
    String? before,
    int? first,
    int? last,
    List<Map<String, dynamic>>? order,
  }) async {
    try {
      final input = Input$GetContractsFlattenedInput(
        accountCodes: accountCodes?.toList() ?? const [],
        internalContractReferences: internalContractReferences ?? [],
        customerContractReferences: customerContractReferences ?? [],
        status: status ?? [],
        products: products ?? [],
        deliveryMethod: deliveryMethod ?? [],
        pricingBasis: pricingBasis ?? [],
        contractOrderBookTypeName: contractOrderBookTypeName ?? [],
      );

      final response = await documentNodeQueryGetContracts.execute(
        httpClient,
        Query$GetContracts.fromJson,
        variables: Variables$Query$GetContracts(
          input: input,
        ),
      );

      if (response.data?.contracts == null ||
          (response.errors?.isNotEmpty ?? false)) {
        EmrLogger.event(
          'Failed to get account prices',
          params: {
            'accountCodes': accountCodes?.join(',') ?? '',
            'internalContractReferences':
                internalContractReferences?.join(',') ?? '',
            'customerContractReferences':
                customerContractReferences?.join() ?? '',
            'status': status?.join(',') ?? '',
            'products': products?.join(',') ?? '',
            'deliveryMethod': deliveryMethod?.join(',') ?? '',
            'pricingBasis': pricingBasis?.join(',') ?? '',
            'searchText': searchText ?? '',
          },
          type: EmrOneCoreTelemetry.kTypeResult,
          severity: EmrLogLevel.error,
          source: source,
        );

        return null;
      }

      final results =
          response.data!.contracts?.nodes
              ?.map(
                (r) => r.toContracts(),
              )
              .toList() ??
          const [];

      final facets = {
        for (final (key, facetSection) in _mapApiFacets(response))
          key: facetSection,
      };

      final totalCount = response.data!.contracts?.totalCount;

      final pageInfo = EmrQueryGraphQLPageInfo(
        hasPreviousPage: response.data!.contracts!.pageInfo.hasPreviousPage,
        hasNextPage: response.data!.contracts!.pageInfo.hasNextPage,
        startCursor: response.data!.contracts!.pageInfo.startCursor,
        endCursor: response.data!.contracts!.pageInfo.endCursor,
      );

      final meta = EmrQueryGraphQLMetadata<Map<String, EmrFacetResult>>(
        facets,
        totalCount!,
        pageInfo,
      );

      return ContractsOutput(
        contracts: results,
        metadata: meta,
      );
    } on Exception catch (e, trace) {
      EmrLogger.error(
        'Failed to get account prices',
        params: {
          'accountCodes': accountCodes?.join(',') ?? '',
          'internalContractReferences':
              internalContractReferences?.join(',') ?? '',
          'customerContractReferences':
              customerContractReferences?.join() ?? '',
          'status': status?.join(',') ?? '',
          'products': products?.join(',') ?? '',
          'deliveryMethod': deliveryMethod?.join(',') ?? '',
          'pricingBasis': pricingBasis?.join(',') ?? '',

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

  static Iterable<(String, EmrFacetResult)> _mapApiFacets(
    GraphQLResponse<Query$GetContracts> response,
  ) =>
      response.data?.contractsFacets.map(
        _mapApiFacet,
      ) ??
      const <(String, EmrFacetResult)>[];

  static (String, EmrFacetResult) _mapApiFacet(
    Query$GetContracts$contractsFacets apiFacet,
  ) {
    final facetSection = EmrFacetResult(
      name: switch (apiFacet.value.name) {
        'ContractOrderBookTypeName' => 'OrderBook',
        'PricingBasis' => 'Pricing Basis',
        'AccountCode' => 'Account Code',
        'Status' => 'Status',
        'Products' => 'Products',
        'DeliveryMethod' => 'Delivery Method',
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
      'ContractOrderBookTypeName' => kOrderBookKey,
      'PricingBasis' => kPricingKey,
      'AccountCode' => kAccountCodeKey,
      'Status' => kStatusKey,
      'Products' => kProductsKey,
      'DeliveryMethod' => kDeliveryMethodKey,
      _ => throw ArgumentError.value(
        apiFacet.value.name,
        'apiFacet.value.name',
      ),
    };

    return (key, facetSection);
  }

  static const kAccountCodeKey = 'AccountCode';
  static const kStatusKey = 'Status';
  static const kOrderBookKey = 'ContractOrderBookTypeName';
  static const kDeliveryMethodKey = 'DeliveryMethod';
  static const kProductsKey = 'Products';
  static const kPricingKey = 'PricingBasis';

  Future<Iterable<String>> getContractStatuses(
    String pattern,
    BuildContext context,
  ) async {
    final result = <String>[];
    result.add(Enum$ContractStatus.OPEN.displayString(context));
    result.add(Enum$ContractStatus.HOLD.displayString(context));
    result.add(Enum$ContractStatus.DRAFT.displayString(context));
    result.add(Enum$ContractStatus.CLOSED.displayString(context));
    result.add(
      Enum$ContractStatus.COMPLETED_NO_POSITION.displayString(context),
    );
    result.add(
      Enum$ContractStatus.CANCELLED_NO_POSITION.displayString(context),
    );
    result.add(Enum$ContractStatus.ON_STOP_NO_POSITION.displayString(context));
    return result;
  }

  Future<Iterable<String>> getContractPricingBasis(
    String pattern,
    BuildContext context,
  ) async {
    final result = <String>[];
    result.add(Enum$ContractPricingBasis.SPOT.displayString(context));
    result.add(Enum$ContractPricingBasis.FIXED.displayString(context));
    result.add(Enum$ContractPricingBasis.UNFIXED.displayString(context));

    return result;
  }

  Future<Iterable<String>> getDeliveryMethod(
    String pattern,
    BuildContext context,
  ) async {
    final result = <String>[];
    result.add(Enum$DeliveryMethod.DELIVERED.displayString(context));
    result.add(Enum$DeliveryMethod.COLLECTED.displayString(context));
    return result;
  }
}
