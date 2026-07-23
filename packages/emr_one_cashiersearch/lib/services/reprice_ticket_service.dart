import 'package:collection/collection.dart';
import 'package:emr_core_api/graphql/graphql.dart';
import 'package:emr_core_api/graphql/queries/account/get_account_by_account_number.graphql.dart';
import 'package:emr_core_api/graphql/queries/ticket/get_price.graphql.dart';
import 'package:emr_core_api/models/api_response.dart';
import 'package:emr_one_cashiersearch/base/base_service.dart';
import 'package:emr_one_cashiersearch/emr_one_cashiersearch.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_sharedtypes/uom/uom_value.dart';

abstract class IRepriceTicketService extends BaseService {
  IRepriceTicketService({required super.httpClient});

  Future<List<Product>> getProducts(String pattern);
  Future<List<Location>> getLocations(
    String pattern,
    String yardCode,
    String? productCode,
  );

  Future<ApiResponse<String>> saveTicket(
    List<TicketLine> ticketLines,
    String ticketId, {
    TicketAccount? account,
  });
  Future<String> getAccountIdByAccountNumber({required String accountNumber});

  Future<String> getYardIdByYardCode({required String yardCode});
  Future<
    GraphQLResponse<Map<String, Map<String, Map<DeliveryMethod, UomValue>>>>
  >
  getRate({
    required List<String> productIds,
    required List<String> accountIds,
    required String yardId,
  });

  Future<List<Account>> searchCashierAccounts({
    required String query,
    String? territoryId,
  });
}

class RepriceTicketService extends IRepriceTicketService {
  RepriceTicketService({required super.httpClient});

  @override
  Future<List<Product>> getProducts(String pattern) async {
    final results = await documentNodeQueryAllProducts.execute(
      httpClient,
      Query$AllProducts.fromJson,
      variables: Variables$Query$AllProducts(first: 100, query: '*$pattern*'),
    );

    if (results.hasErrors()) {
      throw Exception(results.errors);
    }
    return results.data?.products?.nodes
            ?.map((x) => Product.fromJson(x.toJson()))
            .where((x) => x.code.toLowerCase() != 'dirt')
            .toList() ??
        [];
  }

  Input$TicketLineInput convertTicketLineToInput(TicketLine line) {
    return Input$TicketLineInput(
      lineNumber: line.lineNumber!,
      productId: line.product!.id,
      locationId: line.location!.id,
      grossWeight: Input$UomValueInput.fromJson(line.grossWeight!.toJson()),
      netWeight: Input$UomValueInput.fromJson(line.netWeight!.toJson()),
      rate: Input$UomValueInput.fromJson(line.rate!.toJson()),
      deductions: line.deductions
          .map((x) => Input$LineDeductionInput.fromJson(x.toJson()))
          .toList(),
      mediaAssets: [],
      costs: [],
      financialCostImpacts: [],
      internalComments: [],
      isActive: true,
      provPrice: 0,
      confPrice: 0,
      priceOrigin: Enum$PriceOriginType.FIXED,
      created: Input$CreatedInput(
        userInfoId: line.created!.userInfoId,
        at: line.created!.at,
        userName: line.created!.userName,
      ),
      modified: Input$ModifiedInput(
        userInfoId: line.modified?.userInfoId ?? '',
        at: line.modified?.at ?? DateTime.now(),
        userName: line.modified?.userName ?? '',
      ),
      isGrossFromPreviousWeight: false,
      hasSeenZero: false,
      elvQuoteIds: [],
      extendedProperties: line.extendedProperties,
      grossWeightDateTime: line.grossWeightDateTime,
      deductionCharges: line.deductionCharges,
      payableAfterCostAndDeduction: line.payableAfterCostAndDeduction,
      payableBeforeCostAndDeduction: line.payableBeforeCostAndDeduction,
      prorateDeductions: line.prorateDeductions
          .map((x) => Input$DeductionInput.fromJson(x.toJson()))
          .toList(),
    );
  }

  @override
  Future<ApiResponse<String>> saveTicket(
    List<TicketLine> ticketLines,
    String ticketId, {
    TicketAccount? account,
  }) async {
    try {
      final updateLineInputs = ticketLines
          .map(convertTicketLineToInput)
          .toList();

      final result = await documentNodeMutationupdateTicketLines.execute(
        httpClient,
        Mutation$updateTicketLines.fromJson,
        variables: Variables$Mutation$updateTicketLines(
          input: Input$UpdateTicketLineInput(
            ticketId: ticketId,
            updatedLines: updateLineInputs,
            ticketAccount: account != null
                ? Input$TicketAccountInput.fromJson(account.toJson())
                : null,
          ),
        ),
      );
      if (result.data == null || result.hasErrors()) {
        return ApiResponse(success: false, message: result.errors!.join(','));
      }

      return ApiResponse(data: result.data!.updateTicketLines.id);
    } catch (ex) {
      return ApiResponse(success: false, message: 'error');
    }
  }

  @override
  Future<List<Location>> getLocations(
    String pattern,
    String yardCode,
    String? productCode,
  ) async {
    final results = await documentNodeQueryGetInventoryLocations.execute(
      httpClient,
      Query$GetInventoryLocations.fromJson,
      variables: Variables$Query$GetInventoryLocations(
        pattern: '*$pattern',
        yardCode: yardCode,
        productCode: productCode,
      ),
    );
    if (results.hasErrors()) {
      throw Exception(results.errors);
    }
    return results.data?.searchInventoryLocations?.nodes
            ?.map((x) => Location.fromJson(x.toJson()))
            .toList() ??
        [];
  }

  @override
  Future<String> getAccountIdByAccountNumber({
    required String accountNumber,
  }) async {
    final response = await documentNodeQueryGetAccountByAccountNumber.execute(
      httpClient,
      Query$GetAccountByAccountNumber.fromJson,
      variables: Variables$Query$GetAccountByAccountNumber(
        query: accountNumber,
      ),
    );
    if (response.hasErrors() ||
        (response.data?.searchAccounts?.nodes?.isEmpty ?? true)) {
      throw Exception(
        'Error in getAccountIdByAccountNumber or no data in response',
      );
    }

    final account = response.data!.searchAccounts!.nodes!.firstWhereOrNull(
      (x) => x.code == accountNumber,
    );
    if (account == null) {
      throw Exception(
        'Results of getAccountIdByAccountNumber does not match account number',
      );
    }

    return account.id;
  }

  @override
  Future<String> getYardIdByYardCode({required String yardCode}) async {
    final response = await documentNodeQueryGetAllYards.execute(
      httpClient,
      Query$GetAllYards.fromJson,
      variables: Variables$Query$GetAllYards(
        input: Input$SearchYardInput(query: yardCode),
      ),
    );

    if (response.hasErrors() ||
        (response.data?.yards?.edges?.isEmpty ?? true)) {
      throw Exception('Error in getYardIdByYardCode or no data in response');
    }

    final yard = response.data!.yards!.edges!.firstWhereOrNull(
      (x) => x.node.yardCode == yardCode,
    );
    if (yard == null) {
      throw Exception(
        'Results of getYardIdByYardCode does not match yard code',
      );
    }

    return yard.node.id;
  }

  @override
  Future<
    GraphQLResponse<Map<String, Map<String, Map<DeliveryMethod, UomValue>>>>
  >
  getRate({
    required List<String> productIds,
    required List<String> accountIds,
    required String yardId,
  }) => documentNodeQueryGetPrice.execute(
    httpClient,
    (data) {
      final response = Query$GetPrice.fromJson(data);
      final results = <String, Map<String, Map<DeliveryMethod, UomValue>>>{};
      for (final priceForAccount in response.pricesForAccounts) {
        final yard = priceForAccount.yards.firstWhereOrNull(
          (x) => x.key == yardId,
        );
        if (yard == null) continue;

        final matchingProducts = yard.value.productsByDeliveryMethod
            .where((x) => productIds.contains(x.key))
            .toList();

        if (matchingProducts.isEmpty) continue;

        results.addEntries([
          MapEntry(priceForAccount.accountId, {
            for (final product in matchingProducts.where(
              (p) => productIds.contains(p.key),
            ))
              product.key: Map.fromEntries(
                product.value.products.map((x) {
                  final key = switch (x.key) {
                    Enum$DeliveryMethod.NONE => DeliveryMethod.none,
                    Enum$DeliveryMethod.DELIVERED => DeliveryMethod.delivered,
                    Enum$DeliveryMethod.COLLECTED => DeliveryMethod.collected,
                    Enum$DeliveryMethod.COLLECTED_LESS_CHARGE =>
                      DeliveryMethod.collectedLessCharge,
                    Enum$DeliveryMethod.COLLECTED_FULLY_CHARGED =>
                      DeliveryMethod.collectedFullyCharged,
                    Enum$DeliveryMethod.$unknown => DeliveryMethod.none,
                  };

                  return MapEntry(
                    key,
                    UomValue.fromJson(x.value.rate.toJson()),
                  );
                }),
              ),
          }),
        ]);
      }
      return results;
    },
    variables: Variables$Query$GetPrice(
      accountIds: accountIds,
      productIds: productIds,
      yardIds: [yardId],
    ),
  );

  @override
  Future<List<Account>> searchCashierAccounts({
    required String query,
    String? territoryId,
  }) async {
    final response = await documentNodeQueryEditTicketAccountSearch.execute(
      httpClient,
      (data) {
        final result = Query$EditTicketAccountSearch.fromJson(data);

        return result.searchRetailAccounts?.nodes
                ?.map((e) => Account.fromJson(e.toJson()))
                .where(checkAccountType)
                .toList() ??
            <Account>[];
      },
      variables: Variables$Query$EditTicketAccountSearch(
        query: query,
        ravenSearchQuery: query.toRavenSearchableText(),
        territoryId: territoryId,
        includeOnlyMatchedAddresses: false,
        includeOnlyMatchedLocations: false,
      ),
    );

    if (response.hasErrors()) {
      throw Exception(response.errors);
    }

    return response.data ?? <Account>[];
  }

  bool checkAccountType(Account account) =>
      ((account.accountSubTypes
                  ?.firstWhereOrNull((x) => x.key == EnumAccountSubType.trader)
                  ?.value ??
              false) ==
          true) ||
      ((account.accountSubTypes
                  ?.firstWhereOrNull(
                    (x) => x.key == EnumAccountSubType.customer,
                  )
                  ?.value ??
              false) ==
          true);
}
