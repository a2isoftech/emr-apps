import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_core_api/graphql/mutations/reference_data/reference_data.dart';
import 'package:emr_core_api/graphql/mutations/reference_data/save_weighbridge_group.graphql.dart';
import 'package:emr_core_api/graphql/mutations/workflows/modify_workflow_yard_payment_rule.graphql.dart';
import 'package:emr_core_api/graphql/queries/reference_data/get_company_bank_account.graphql.dart';
import 'package:emr_core_api/graphql/queries/reference_data/get_company_bank_accounts.graphql.dart';
import 'package:emr_one_core/data/emr_query_scope_sort_order.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:emr_sharedtypes/enums/enums.dart';

class ReferenceDataService {
  ReferenceDataService({
    required this.httpClient,
    this.uomService,
  });

  final CoreApiClient httpClient;

  final UomService? uomService;

  Future<List<Territory>> territories(String query) async {
    var formattedSearchQuery = '';
    if (query.isNotEmpty) {
      final tokens = query.split(' ');
      formattedSearchQuery = '${tokens.join('* ')}*';
    }

    final response = await documentNodeQueryGetTerritories.execute(
      httpClient,
      Query$GetTerritories.fromJson,
      variables: Variables$Query$GetTerritories(
        query: formattedSearchQuery,
        first: 50,
      ),
    );

    return response.data?.territories?.nodes
            ?.map(
              (element) => Territory(
                element.code,
                element.name,
                const [],
                id: element.id,
              ),
            )
            .sortedBy<String>((x) => x.code)
            .toList() ??
        [];
  }

  Future<List<Yard>> yards(
    String query, {
    List<Territory> territories = const [],
  }) async {
    final territoriesCodes = territories
        .map((toElement) => toElement.code)
        .toList();

    var formattedSearchQuery = '';
    if (query.isNotEmpty) {
      final tokens = query.split(' ');
      formattedSearchQuery = '*${tokens.join('* ')}*';
    }

    final response = await documentNodeQueryGetYards.execute(
      httpClient,
      Query$GetYards.fromJson,
      variables: Variables$Query$GetYards(
        query: formattedSearchQuery,
        territoryCodes: territoriesCodes,
      ),
    );

    final yards = (response.data?.yards?.edges ?? [])
        .map((e) => Yard.fromJson(e.node.toJson()))
        .toList();

    return yards;
  }

  Future<List<Depot>> depots(
    String query, {
    List<Territory> territories = const [],
  }) async {
    final territoriesCodes = territories
        .map((toElement) => toElement.code)
        .toList();

    final response = await documentNodeQueryGetDepots.execute(
      httpClient,
      Query$GetDepots.fromJson,
      variables: Variables$Query$GetDepots(territoryCodes: territoriesCodes),
    );

    return response.data?.depots
            .map(
              (e) => Depot(e.id, e.shortName),
            )
            .toList() ??
        [];
  }

  Future<List<String>> countries(String query) async {
    final response = await documentNodeQueryGetCountries.execute(
      httpClient,
      Query$GetCountries.fromJson,
      variables: Variables$Query$GetCountries(query: query),
    );

    return response.data?.countries.map((e) => e.name).toList() ?? [];
  }

  Future<List<String>> timezones(String query) async {
    final response = await documentNodeQueryGetTimeZones.execute(
      httpClient,
      Query$GetTimeZones.fromJson,
      variables: Variables$Query$GetTimeZones(query: query),
    );

    return response.data?.timezones.map((e) => e.displayName).toList() ?? [];
  }

  Future<List<String>> languages(String query) async {
    final response = await documentNodeQueryGetLanguages.execute(
      httpClient,
      Query$GetLanguages.fromJson,
      variables: Variables$Query$GetLanguages(query: query),
    );

    return response.data?.languages.map((e) => e.name).toList() ?? [];
  }

  Future<List<String>> territoryCodes(String query) async {
    final response = await territories(query);
    return response.map((territory) => territory.code).toList();
  }

  Future<List<String>> getFinancialPaymentMethods() async {
    final response = await documentNodeQueryGetReferenceData.execute(
      httpClient,
      Query$GetReferenceData.fromJson,
      variables: {
        'name': 'FinancialPaymentMethods',
      },
    );
    return (response.data?.referenceData?['Data'] as List<dynamic>?)
            ?.cast<String>() ??
        [];
  }

  Future<Map<String, dynamic>> getWeighbridgeAppConfiguration() async {
    return getMapOfStringAndDynamic('WeighbridgeAppConfig');
  }

  Future<Map<String, dynamic>> getMapOfStringAndDynamic(String name) async {
    final response = await documentNodeQueryGetReferenceData.execute(
      httpClient,
      Query$GetReferenceData.fromJson,
      variables: {
        'name': name,
      },
    );
    return (response.data?.referenceData?['Data'] as Map<String, dynamic>?) ??
        {};
  }

  Future<Map<String, String>> getSignupRoles() async {
    return getMapOfStringAndString('Roles');
  }

  Future<Map<String, Enum$VisitFrequency>> getVisitFrequencies() async {
    final input = await getMapOfStringAndString('VisitFrequencies');
    return input.map(
      (key, value) => MapEntry(
        key,
        EnumService.stringToEnum<Enum$VisitFrequency>(
              value,
              Enum$VisitFrequency.values,
            ) ??
            Enum$VisitFrequency.$unknown,
      ),
    );
  }

  Future<Map<String, String>> getTitles() async {
    return getMapOfStringAndString('Titles');
  }

  Future<Map<String, String>> getMapOfStringAndString(String name) async {
    final input = await getMapOfStringAndDynamic(name);
    return input.map(
      (key, value) => MapEntry(
        key,
        value.toString(),
      ),
    );
  }

  Future<Map<String, dynamic>> getPaymentMethodNames() async {
    final response = await documentNodeQueryGetReferenceData.execute(
      httpClient,
      Query$GetReferenceData.fromJson,
      variables: {
        'name': 'paymentMethodNames',
      },
    );
    return (response.data?.referenceData?['Data'] as Map<String, dynamic>?) ??
        {};
  }

  Future<ApiResponse<(List<Company>, EmrQueryGraphQLMetadata<dynamic>)>>
  getCompanies({
    int? first,
    int? last,
    String? after,
    String? before,
    String? query,
    List<EmrQueryScopeSortOrder>? sortOrders,
  }) async {
    final orderBy = <Input$CompanySortInput>[];

    if (sortOrders != null && sortOrders.isNotEmpty) {
      for (final sortBy in sortOrders) {
        orderBy.add(
          Input$CompanySortInput.fromJson(
            {sortBy.field: sortBy.direction.toString()},
          ),
        );
      }
    }

    final response = await documentNodeQueryGetCompanies.execute(
      httpClient,
      Query$GetCompanies.fromJson,
      variables: Variables$Query$GetCompanies(
        first: first,
        after: after,
        before: before,
        last: last,
        input: Input$SearchCompanyInput(query: query),
        order: orderBy,
      ),
    );

    if (response.hasErrors()) {
      return ApiResponse(
        success: false,
        message: response.errors!.map((error) => error.message).join(','),
      );
    }

    final companies = response.data!.companies!.nodes!
        .map(
          (c) => Company(
            id: c.id,
            code: c.code,
            fullName: c.fullName,
            shortName: c.shortName,
            territoryCode: c.territoryCode,
          ),
        )
        .toList();

    final totalRecords = response.data?.companies?.totalCount ?? 0;

    return ApiResponse(
      data: (
        companies,
        EmrQueryGraphQLMetadata<dynamic>(
          <dynamic, dynamic>{},
          totalRecords,
          EmrQueryGraphQLPageInfo(
            hasPreviousPage:
                response.data?.companies?.pageInfo.hasPreviousPage ?? false,
            hasNextPage:
                response.data?.companies?.pageInfo.hasNextPage ?? false,
            startCursor: response.data?.companies?.pageInfo.startCursor,
            endCursor: response.data?.companies?.pageInfo.endCursor,
          ),
        ),
      ),
    );
  }

  Future<Company> getCompanyById(String id) async {
    final company = await documentNodeQueryGetCompanyById.execute(
      httpClient,
      Query$GetCompanyById.fromJson,
      variables: {
        'id': id,
      },
    );
    final result = company.data!.companyById;
    return Company(
      code: result.code,
      shortName: result.shortName,
      fullName: result.fullName,
      territoryCode: result.territoryCode,
      territoryId: result.territoryId,
      territory: Territory(
        result.territory!.code,
        result.territory!.name,
        const [],
        id: result.territory!.id,
      ),
      id: id,
      active: result.active,
      chequeSignatures: result.chequeSignatures,
      valueRequiredForTwoSignaturesOnCheque:
          result.valueRequiredForTwoSignaturesOnCheque,
    );
  }

  Future<ApiResponse<Company>> saveCompany(Company company) async {
    try {
      if (company.id.isEmpty) {
        final response = await documentNodeMutationCreateCompany.execute(
          httpClient,
          Mutation$CreateCompany.fromJson,
          variables: Variables$Mutation$CreateCompany(
            input: Input$CreateCompanyInput(
              code: company.code,
              fullName: company.fullName,
              shortName: company.shortName,
              territoryId: company.territoryId,
              valueRequiredForTwoSignaturesOnCheque:
                  company.valueRequiredForTwoSignaturesOnCheque,
            ),
          ),
        );

        if (response.hasErrors()) {
          return ApiResponse(
            success: false,
            message: response.errors!.map((error) => error.message).join(','),
          );
        }
      } else {
        final response = await documentNodeMutationUpdateCompany.execute(
          httpClient,
          Mutation$UpdateCompany.fromJson,
          variables: Variables$Mutation$UpdateCompany(
            input: Input$UpdateCompanyInput(
              id: company.id,
              fullName: company.fullName,
              shortName: company.shortName,
              territoryId: company.territoryId,
              active: company.active,
              valueRequiredForTwoSignaturesOnCheque:
                  company.valueRequiredForTwoSignaturesOnCheque,
            ),
          ),
        );
        if (response.hasErrors()) {
          return ApiResponse(
            success: false,
            message: response.errors!.join(','),
          );
        }
      }

      return ApiResponse();
    } catch (e) {
      return ApiResponse(
        success: false,
        message: 'Failed to save company',
      );
    }
  }

  Future<ApiResponse<Company>> addCompanySignatures(
    Company company,
    String chequeSignature,
  ) async {
    try {
      final response = await documentNodeMutationAddCompanyChequeSignatures
          .execute(
            httpClient,
            Mutation$AddCompanyChequeSignatures.fromJson,
            variables: Variables$Mutation$AddCompanyChequeSignatures(
              input: Input$AddCompanyChequeSignaturesInput(
                id: company.id,
                chequeSignatures: [chequeSignature],
              ),
            ),
          );

      if (response.hasErrors()) {
        return ApiResponse(
          success: false,
          message: response.errors!.map((error) => error.message).join(','),
        );
      }
      if (response.hasErrors()) {
        return ApiResponse(
          success: false,
          message: response.errors!.join(','),
        );
      }

      return ApiResponse();
    } catch (e) {
      return ApiResponse(
        success: false,
        message: 'Failed to save company',
      );
    }
  }

  Future<ApiResponse<Company>> removeCompanySignatures(
    Company company,
    int index,
  ) async {
    try {
      final response = await documentNodeMutationRemoveCompanyChequeSignature
          .execute(
            httpClient,
            Mutation$RemoveCompanyChequeSignature.fromJson,
            variables: Variables$Mutation$RemoveCompanyChequeSignature(
              input: Input$RemoveCompanyChequeSignatureInput(
                id: company.id,
                chequeSignatureIndex: index,
              ),
            ),
          );

      if (response.hasErrors()) {
        return ApiResponse(
          success: false,
          message: response.errors!.map((error) => error.message).join(','),
        );
      }

      return ApiResponse();
    } catch (e) {
      return ApiResponse(
        success: false,
        message: 'Failed to save company',
      );
    }
  }

  Future<ApiResponse<(List<Territory>, EmrQueryGraphQLMetadata<dynamic>)>>
  searchTerritories({
    String? query,
    String? before,
    String? after,
    int? first,
    int? last,
    List<EmrQueryScopeSortOrder>? sortOrder,
  }) async {
    try {
      var formattedSearchQuery = '';

      if (query != null && query.isNotEmpty) {
        final tokens = query.split(' ');
        formattedSearchQuery = '${tokens.join('* ')}*';
      }

      final input = Input$SearchTerritoryInput(query: formattedSearchQuery);

      final order = sortOrder
          ?.map(
            (e) => Input$TerritorySortInput.fromJson(
              jsonDecode('{ "${e.field}": "${e.direction}" }')
                  as Map<String, dynamic>,
            ),
          )
          .toList();

      final response = await documentNodeQueryGetAllTerritories.execute(
        httpClient,
        Query$GetAllTerritories.fromJson,
        variables: Variables$Query$GetAllTerritories(
          input: input,
          before: before,
          after: after,
          first: first,
          last: last,
          order: order,
        ),
      );

      if (response.hasErrors()) {
        return ApiResponse(
          success: false,
          message: 'Failed to load territories',
        );
      }

      if (response.data?.territories?.edges == null) {
        return ApiResponse(
          success: false,
          message: 'Failed to load territories',
        );
      }

      final territories =
          response.data?.territories?.edges!
              .map((element) => element.node)
              .toList() ??
          [];

      final totalRecords = response.data?.territories?.totalCount ?? 0;

      return ApiResponse(
        data: (
          territories
              .map(
                (node) => Territory(
                  node.code, // territoryCode
                  node.name, // name
                  const [], // depots (empty list)
                  defaultCompanyId: node.defaultCompanyId,
                  // defaultCompanyId
                  id: node.id,
                  // id
                  active: node.active,
                  // active
                  uomId: node.uomId,
                  // uomId
                  currencyCode: node.currencyCode,
                  // currencyCode
                  defaultCompany: node.defaultCompany != null
                      ? Company(
                          fullName: node.defaultCompany!.fullName,
                          code: node.defaultCompany!.code,
                          id: node.defaultCompany!.id,
                        )
                      : null,
                ),
              )
              .toList(),
          // Ensure it's a List<Territory>
          EmrQueryGraphQLMetadata<dynamic>(
            <dynamic, dynamic>{},
            totalRecords,
            EmrQueryGraphQLPageInfo(
              hasPreviousPage:
                  response.data?.territories?.pageInfo.hasPreviousPage ?? false,
              hasNextPage:
                  response.data?.territories?.pageInfo.hasNextPage ?? false,
              startCursor: response.data?.territories?.pageInfo.startCursor,
              endCursor: response.data?.territories?.pageInfo.endCursor,
            ),
          ),
        ),
      );
    } catch (e) {
      return ApiResponse(success: false, message: 'Failed to load territories');
    }
  }

  Future<ApiResponse<Territory?>?> saveTerritory({
    required Territory territory,
  }) async {
    try {
      if (territory.id!.endsWith(EmrCoreApiConstants.kEmptyGuid)) {
        final response = await documentNodeMutationCreateTerritory.execute(
          httpClient,
          Mutation$CreateTerritory.fromJson,
          variables: Variables$Mutation$CreateTerritory(
            id: 'territories/${territory.code}',
            // Ensure concatenation
            name: territory.name,
            code: territory.code,
            defaultCompanyId: territory.defaultCompanyId!,
            currencyCode: territory.currencyCode!,
            uomId: territory.uomId!,
          ),
        );

        if (response.hasErrors()) {
          return ApiResponse(
            success: false,
            message: response.errors!.map((error) => error.message).join('\n'),
          );
        }

        final createTerritory = response.data?.createTerritory;

        if (createTerritory == null) {
          return ApiResponse<Territory>(
            success: false,
            message: 'Failed to save territory',
          );
        }

        return ApiResponse(
          data: Territory(
            createTerritory.code,
            createTerritory.name,
            const [],
            id: createTerritory.id,
            active: createTerritory.active,
            uomId: createTerritory.uomId,
            currencyCode: createTerritory.currencyCode,
            defaultCompanyId: createTerritory.defaultCompanyId,
          ),
        );
      } else {
        final response = await documentNodeMutationUpdateTerritory.execute(
          httpClient,
          Mutation$UpdateTerritory.fromJson,
          variables: Variables$Mutation$UpdateTerritory(
            id: territory.id!,
            active: territory.active!,
            name: territory.name,
            code: territory.code,
            currencyCode: territory.currencyCode!,
            uomId: territory.uomId!,
            defaultCompanyId: territory.defaultCompanyId!,
          ),
        );

        if (response.hasErrors()) {
          return ApiResponse(
            success: false,
            message: response.errors!.map((error) => error.message).join('\n'),
          );
        }

        final updateTerritory = response.data?.updateTerritory;

        if (updateTerritory == null) {
          return ApiResponse<Territory>(
            success: false,
            message: 'Failed to save territory',
          );
        }
        return null;
      }
    } catch (e) {
      return ApiResponse(
        success: false,
        message: 'Failed to save the territory.',
      );
    }
  }

  Future<Territory> getTerritoryById(String id) async {
    final response = await documentNodeQueryGetTerritoryById.execute(
      httpClient,
      Query$GetTerritoryById.fromJson,
      variables: {
        'territoryId': id,
      },
    );
    final result = response.data!.territoryById;
    return Territory(
      result!.code,
      result.name,
      const [],
      active: result.active,
      currencyCode: result.currencyCode,
      defaultCompanyId: result.defaultCompanyId,
      uomId: result.uomId,
      id: id,
      defaultCompany: result.defaultCompany != null
          ? Company(
              fullName: result.defaultCompany!.fullName,
              code: result.defaultCompany!.code,
              id: result.defaultCompany!.id,
            )
          : null,
    );
  }

  Future<List<EmrOneCoreUom>> allowedUoms(
    String query,
    String territory,
  ) async {
    final upperQuery = query.toUpperCase();
    var initialList = <EmrOneCoreUom>[];

    try {
      final uoms = uomService!.getUoms(territory);
      initialList = uoms
          .map((e) => EmrOneCoreUomConstants.lookup[e.index])
          .toList();
    } catch (e) {
      initialList = EmrOneCoreUomConstants.lookup;
    }

    return initialList.where((x) => x.uomCode.contains(upperQuery)).toList();
  }

  Future<List<Company>> companies(String query) async {
    var formattedSearchQuery = '';
    if (query.isNotEmpty) {
      final tokens = query.split(' ');
      formattedSearchQuery = '${tokens.join('* ')}*';
    }

    final input = Input$SearchCompanyInput(query: formattedSearchQuery);

    final response = await documentNodeQueryGetCompanies.execute(
      httpClient,
      Query$GetCompanies.fromJson,
      variables: Variables$Query$GetCompanies(input: input),
    );

    return response.data!.companies!.nodes!
        .map(
          (element) => Company(
            fullName: element.fullName,
            code: element.code,
            shortName: element.shortName,
            territoryCode: element.territoryCode,
            id: element.id,
          ),
        )
        .toList();
  }

  Future<ApiResponse<List<String>>> ticketPrintTemplates({
    String? query,
  }) async {
    try {
      final response = await documentNodeQuerygetTicketPrintTemplates.execute(
        httpClient,
        Query$getTicketPrintTemplates.fromJson,
        variables: Variables$Query$getTicketPrintTemplates(query: query),
      );
      return ApiResponse(
        data: response.data?.ticketPrintTemplates.toList() ?? [],
      );
    } catch (e) {
      return ApiResponse(
        success: false,
        message: 'Unable to load ticket tmeplates, error: $e',
      );
    }
  }

  Future<
    ApiResponse<(List<WeighbridgeGroup>, EmrQueryGraphQLMetadata<dynamic>)>
  >
  searchWeighbridgeGroups({
    String? query,
    List<String>? yardCodes,
    String? before,
    String? after,
    int? first,
    int? last,
  }) async {
    try {
      final response = await documentNodeQuerysearchWeighbridgeGroups.execute(
        httpClient,
        Query$searchWeighbridgeGroups.fromJson,
        variables: Variables$Query$searchWeighbridgeGroups(
          input: Input$SearchWeighbridgeGroupsInput(
            query: query,
            yardCodes: yardCodes,
          ),
          before: before,
          after: after,
          first: first,
          last: last,
        ),
      );

      final weighbridgeGroups =
          response.data?.searchWeighbridgeGroups?.nodes!
              .map((wg) => WeighbridgeGroup.fromJson(wg.toJson()))
              .toList() ??
          [];
      return ApiResponse(
        data: (
          weighbridgeGroups,
          EmrQueryGraphQLMetadata<dynamic>(
            <dynamic, dynamic>{},
            response.data?.searchWeighbridgeGroups?.totalCount ?? 0,
            EmrQueryGraphQLPageInfo(
              hasPreviousPage:
                  response
                      .data
                      ?.searchWeighbridgeGroups
                      ?.pageInfo
                      .hasPreviousPage ??
                  false,
              hasNextPage:
                  response
                      .data
                      ?.searchWeighbridgeGroups
                      ?.pageInfo
                      .hasNextPage ??
                  false,
              startCursor:
                  response.data?.searchWeighbridgeGroups?.pageInfo.startCursor,
              endCursor:
                  response.data?.searchWeighbridgeGroups?.pageInfo.endCursor,
            ),
          ),
        ),
      );
    } catch (e) {
      return ApiResponse(
        success: false,
        message: 'Unable to load Weighbridge Groups, error: $e',
      );
    }
  }

  Future<ApiResponse<WeighbridgeGroup>> saveWeighbridgeGroups(
    WeighbridgeGroup weighbridgeGroup,
  ) async {
    try {
      final response = await documentNodeMutationsaveWeighbridgeGroup.execute(
        httpClient,
        Mutation$saveWeighbridgeGroup.fromJson,
        variables: Variables$Mutation$saveWeighbridgeGroup(
          input: Input$WeighbridgeGroupInput.fromJson(
            weighbridgeGroup.toJson(),
          ),
        ),
      );

      if (response.hasErrors()) {
        return ApiResponse(
          success: false,
          message: response.errors!.map((error) => error.message).join(','),
        );
      }
      if (response.data == null) {
        return ApiResponse(
          success: false,
          message: 'Failed to save Weighbridge Groups',
        );
      }
      return ApiResponse(
        data: WeighbridgeGroup.fromJson(
          response.data!.saveWeighbridgeGroup.toJson(),
        ),
      );
    } catch (e) {
      return ApiResponse(
        success: false,
        message: 'Failed to save Weighbridge Groups',
      );
    }
  }

  Future<ApiResponse<(List<PaymentRules>, EmrQueryGraphQLMetadata<dynamic>)>>
  searchYardPaymentRules({
    String? query,
    String? before,
    String? after,
    int? first,
    int? last,
    List<EmrQueryScopeSortOrder>? sortOrder,
    List<String>? yardCodes,
    List<String>? territoryCodes,
  }) async {
    try {
      var formattedSearchQuery = '';

      if (query != null && query.isNotEmpty) {
        final tokens = query.split(' ');
        formattedSearchQuery = '*${tokens.join('* ')}*';
      }

      final input = Input$GetPaymentRuleInput(
        id: formattedSearchQuery,
      );

      final order = sortOrder
          ?.map(
            (e) => Input$PaymentRulesSortInput.fromJson(
              jsonDecode('{ "${e.field}": "${e.direction}" }')
                  as Map<String, dynamic>,
            ),
          )
          .toList();

      final response = await documentNodeQueryGetAllPaymentRules.execute(
        httpClient,
        Query$GetAllPaymentRules.fromJson,
        variables: Variables$Query$GetAllPaymentRules(
          PaymentRuleId: input,
          before: before,
          after: after,
          first: first,
          last: last,
          order: order,
        ),
      );

      if (response.hasErrors()) {
        return ApiResponse(
          success: false,
          message: 'Failed to load yard payment rules',
        );
      }

      if (response.data?.paymentRules?.edges == null) {
        return ApiResponse(
          success: false,
          message: 'Failed to load yard payment rules',
        );
      }

      final paymentRules =
          response.data?.paymentRules?.edges!
              .map((element) => element.node)
              .toList() ??
          [];

      final totalRecords = response.data?.paymentRules?.totalCount ?? 0;

      return ApiResponse(
        data: (
          paymentRules
              .map(
                (node) => PaymentRules(
                  id: node.id,
                  yardCode: node.yardCode,
                  authorityReportable: node.authorityReportable,
                  authorityReportableProductIds:
                      node.authorityReportableProductIds,
                  drivingLicenceRequired: node.drivingLicenceRequired,
                  drivingLicenceRequiredProductIds:
                      node.drivingLicenceRequiredProductIds,
                  cashCardRequired: node.cashCardRequired,
                  cashCardRequiredProductIds: node.cashCardRequiredProductIds,
                  copperSellersLicenseRequired:
                      node.copperSellersLicenseRequired,
                  copperSellersLicenseRequiredProductIds:
                      node.copperSellersLicenseRequiredProductIds,
                  exemptedSellerStatusRequired:
                      node.exemptedSellerStatusRequired,
                  exemptedSellerStatusRequiredProductIds:
                      node.exemptedSellerStatusRequiredProductIds,
                  preventCashPayment: node.preventCashPayment,
                  preventCashPaymentProductIds:
                      node.preventCashPaymentProductIds,
                  proofOfOwnershipRequired: node.proofOfOwnershipRequired,
                  proofOfOwnershipRequiredProductIds:
                      node.proofOfOwnershipRequiredProductIds,
                  vehicleDetailsRequired: node.vehicleDetailsRequired,
                  vehicleDetailsRequiredProductIds:
                      node.vehicleDetailsRequiredProductIds,
                  executedAffidavitDocumentRequired:
                      node.executedAffidavitDocumentRequired,
                  executedAffidavitDocumentRequiredProductIds:
                      node.executedAffidavitDocumentRequiredProductIds,
                  allowedForAutoConfirm: node.allowedForAutoConfirm,
                  allowedForAutoConfirmProductIds:
                      node.allowedForAutoConfirmProductIds,
                ),
              )
              .toList(),
          EmrQueryGraphQLMetadata<dynamic>(
            <dynamic, dynamic>{},
            totalRecords,
            EmrQueryGraphQLPageInfo(
              hasPreviousPage:
                  response.data?.paymentRules?.pageInfo.hasPreviousPage ??
                  false,
              hasNextPage:
                  response.data?.paymentRules?.pageInfo.hasNextPage ?? false,
              startCursor: response.data?.paymentRules?.pageInfo.startCursor,
              endCursor: response.data?.paymentRules?.pageInfo.endCursor,
            ),
          ),
        ),
      );
    } catch (e) {
      return ApiResponse(
        success: false,
        message: 'Failed to load yard payment rules',
      );
    }
  }

  Future<ApiResponse<PaymentRules?>?> savePaymentRules({
    required PaymentRules paymentRule,
  }) async {
    try {
      if (paymentRule.id.endsWith(EmrCoreApiConstants.kRouteNewYardCode)) {
        final response = await documentNodeMutationCreateYardPaymentRule
            .execute(
              httpClient,
              Mutation$CreateYardPaymentRule.fromJson,
              variables: Variables$Mutation$CreateYardPaymentRule(
                PaymentRule: Input$CreatePaymentRuleInput(
                  yardCode: paymentRule.yardCode,
                  authorityReportable: paymentRule.authorityReportable,
                  drivingLicenceRequired: paymentRule.drivingLicenceRequired,
                  cashCardRequired: paymentRule.cashCardRequired,
                  copperSellersLicenseRequired:
                      paymentRule.copperSellersLicenseRequired,
                  exemptedSellerStatusRequired:
                      paymentRule.exemptedSellerStatusRequired,
                  preventCashPayment: paymentRule.preventCashPayment,
                  proofOfOwnershipRequired:
                      paymentRule.proofOfOwnershipRequired,
                  executedAffidavitDocumentRequired:
                      paymentRule.executedAffidavitDocumentRequired,
                  vehicleDetailsRequired: paymentRule.vehicleDetailsRequired,
                  authorityReportableProductIds: paymentRule
                      .authorityReportableProductIds
                      .toList(),
                  cashCardRequiredProductIds:
                      paymentRule.cashCardRequiredProductIds,
                  copperSellersLicenseRequiredProductIds:
                      paymentRule.copperSellersLicenseRequiredProductIds,
                  drivingLicenceRequiredProductIds:
                      paymentRule.drivingLicenceRequiredProductIds,
                  executedAffidavitDocumentRequiredProductIds:
                      paymentRule.executedAffidavitDocumentRequiredProductIds,
                  exemptedSellerStatusRequiredProductIds:
                      paymentRule.exemptedSellerStatusRequiredProductIds,
                  preventCashPaymentProductIds:
                      paymentRule.preventCashPaymentProductIds,
                  proofOfOwnershipRequiredProductIds:
                      paymentRule.proofOfOwnershipRequiredProductIds,
                  vehicleDetailsRequiredProductIds:
                      paymentRule.vehicleDetailsRequiredProductIds,
                  allowedForAutoConfirm: paymentRule.allowedForAutoConfirm,
                  allowedForAutoConfirmProductIds:
                      paymentRule.allowedForAutoConfirmProductIds,
                ),
              ),
            );

        if (response.hasErrors()) {
          return ApiResponse(
            success: false,
            message: response.errors!.map((e) => e.message).join('\n'),
          );
        }

        final createdPaymentRule = response.data?.createYardPaymentRule;

        if (createdPaymentRule == null) {
          return ApiResponse<PaymentRules>(
            success: false,
            message: 'Failed to create payment rules.',
          );
        }

        return ApiResponse<PaymentRules>(
          data: PaymentRules(
            yardCode: createdPaymentRule.yardCode,
            id: 'paymentRules/${createdPaymentRule.yardCode}',
            authorityReportable: createdPaymentRule.authorityReportable,
            drivingLicenceRequired: createdPaymentRule.drivingLicenceRequired,
            cashCardRequired: createdPaymentRule.cashCardRequired,
            copperSellersLicenseRequired:
                createdPaymentRule.copperSellersLicenseRequired,
            exemptedSellerStatusRequired:
                createdPaymentRule.exemptedSellerStatusRequired,
            preventCashPayment: createdPaymentRule.preventCashPayment,
            proofOfOwnershipRequired:
                createdPaymentRule.proofOfOwnershipRequired,
            executedAffidavitDocumentRequired:
                createdPaymentRule.executedAffidavitDocumentRequired,
            vehicleDetailsRequired: createdPaymentRule.vehicleDetailsRequired,
            authorityReportableProductIds: createdPaymentRule
                .authorityReportableProductIds
                .toList(),
            cashCardRequiredProductIds:
                createdPaymentRule.cashCardRequiredProductIds,
            copperSellersLicenseRequiredProductIds:
                createdPaymentRule.copperSellersLicenseRequiredProductIds,
            drivingLicenceRequiredProductIds:
                createdPaymentRule.drivingLicenceRequiredProductIds,
            executedAffidavitDocumentRequiredProductIds:
                createdPaymentRule.executedAffidavitDocumentRequiredProductIds,
            exemptedSellerStatusRequiredProductIds:
                createdPaymentRule.exemptedSellerStatusRequiredProductIds,
            preventCashPaymentProductIds:
                createdPaymentRule.preventCashPaymentProductIds,
            proofOfOwnershipRequiredProductIds:
                createdPaymentRule.proofOfOwnershipRequiredProductIds,
            vehicleDetailsRequiredProductIds:
                createdPaymentRule.vehicleDetailsRequiredProductIds,
            allowedForAutoConfirm: createdPaymentRule.allowedForAutoConfirm,
            allowedForAutoConfirmProductIds:
                createdPaymentRule.allowedForAutoConfirmProductIds,
          ),
        );
      } else {
        final response = await documentNodeMutationUpdateYardPaymentRule
            .execute(
              httpClient,
              Mutation$UpdateYardPaymentRule.fromJson,
              variables: Variables$Mutation$UpdateYardPaymentRule(
                input: Input$UpdateYardPaymentRuleInput(
                  id: paymentRule.id,
                  authorityReportable: paymentRule.authorityReportable,
                  drivingLicenceRequired: paymentRule.drivingLicenceRequired,
                  cashCardRequired: paymentRule.cashCardRequired,
                  copperSellersLicenseRequired:
                      paymentRule.copperSellersLicenseRequired,
                  exemptedSellerStatusRequired:
                      paymentRule.exemptedSellerStatusRequired,
                  preventCashPayment: paymentRule.preventCashPayment,
                  proofOfOwnershipRequired:
                      paymentRule.proofOfOwnershipRequired,
                  executedAffidavitDocumentRequired:
                      paymentRule.executedAffidavitDocumentRequired,
                  vehicleDetailsRequired: paymentRule.vehicleDetailsRequired,
                  authorityReportableProductIds: paymentRule
                      .authorityReportableProductIds
                      .toList(),
                  cashCardRequiredProductIds:
                      paymentRule.cashCardRequiredProductIds,
                  copperSellersLicenseRequiredProductIds:
                      paymentRule.copperSellersLicenseRequiredProductIds,
                  drivingLicenceRequiredProductIds:
                      paymentRule.drivingLicenceRequiredProductIds,
                  executedAffidavitDocumentRequiredProductIds:
                      paymentRule.executedAffidavitDocumentRequiredProductIds,
                  exemptedSellerStatusRequiredProductIds:
                      paymentRule.exemptedSellerStatusRequiredProductIds,
                  preventCashPaymentProductIds:
                      paymentRule.preventCashPaymentProductIds,
                  proofOfOwnershipRequiredProductIds:
                      paymentRule.proofOfOwnershipRequiredProductIds,
                  vehicleDetailsRequiredProductIds:
                      paymentRule.vehicleDetailsRequiredProductIds,
                  allowedForAutoConfirm: paymentRule.allowedForAutoConfirm,
                  allowedForAutoConfirmProductIds:
                      paymentRule.allowedForAutoConfirmProductIds,
                ),
              ),
            );

        if (response.hasErrors()) {
          return ApiResponse(
            success: false,
            message: response.errors!.map((error) => error.message).join('\n'),
          );
        }

        final updatePaymentRule = response.data?.updateYardPaymentRule;

        if (updatePaymentRule == null) {
          return ApiResponse<PaymentRules>(
            success: false,
            message: 'Failed to save Payment Rule',
          );
        }
        return null;
      }
    } catch (e) {
      return ApiResponse(
        success: false,
        message: 'Failed to save the Payment Rule',
      );
    }
  }

  Future<PaymentRules> getPaymentRuleById(String id) async {
    final response = await documentNodeQueryGetPaymentRuleById.execute(
      httpClient,
      Query$GetPaymentRuleById.fromJson,
      variables: Variables$Query$GetPaymentRuleById(PaymentRuleId: id),
    );

    final result = response.data;

    return PaymentRules(
      id: result!.paymentRule.id,
      yardCode: result.paymentRule.yardCode,
      authorityReportable: result.paymentRule.authorityReportable,
      authorityReportableProductIds:
          result.paymentRule.authorityReportableProductIds,
      drivingLicenceRequired: result.paymentRule.drivingLicenceRequired,
      drivingLicenceRequiredProductIds:
          result.paymentRule.drivingLicenceRequiredProductIds,
      cashCardRequired: result.paymentRule.cashCardRequired,
      cashCardRequiredProductIds: result.paymentRule.cashCardRequiredProductIds,
      copperSellersLicenseRequired:
          result.paymentRule.copperSellersLicenseRequired,
      copperSellersLicenseRequiredProductIds:
          result.paymentRule.copperSellersLicenseRequiredProductIds,
      exemptedSellerStatusRequired:
          result.paymentRule.exemptedSellerStatusRequired,
      exemptedSellerStatusRequiredProductIds:
          result.paymentRule.exemptedSellerStatusRequiredProductIds,
      preventCashPayment: result.paymentRule.preventCashPayment,
      preventCashPaymentProductIds:
          result.paymentRule.preventCashPaymentProductIds,
      proofOfOwnershipRequired: result.paymentRule.proofOfOwnershipRequired,
      proofOfOwnershipRequiredProductIds:
          result.paymentRule.proofOfOwnershipRequiredProductIds,
      vehicleDetailsRequired: result.paymentRule.vehicleDetailsRequired,
      vehicleDetailsRequiredProductIds:
          result.paymentRule.vehicleDetailsRequiredProductIds,
      executedAffidavitDocumentRequired:
          result.paymentRule.executedAffidavitDocumentRequired,
      executedAffidavitDocumentRequiredProductIds:
          result.paymentRule.executedAffidavitDocumentRequiredProductIds,
      allowedForAutoConfirm: result.paymentRule.allowedForAutoConfirm,
      allowedForAutoConfirmProductIds:
          result.paymentRule.allowedForAutoConfirmProductIds,
    );
  }

  Future<ApiResponse<(List<Product>, EmrQueryGraphQLMetadata<dynamic>)>>
  searchProducts({
    String? query,
    String? before,
    String? after,
    int? first,
    int? last,
    List<EmrQueryScopeSortOrder>? sortOrder,
  }) async {
    try {
      var formattedSearchQuery = '';

      if (query != null && query.isNotEmpty) {
        final tokens = query.split(' ');
        formattedSearchQuery = '${tokens.join('* ')}*';
      }

      final order = sortOrder
          ?.map(
            (e) => Input$ProductSortInput.fromJson(
              jsonDecode('{ "${e.field}": "${e.direction}" }')
                  as Map<String, dynamic>,
            ),
          )
          .toList();

      final response = await documentNodeQueryGetAllProducts.execute(
        httpClient,
        Query$GetAllProducts.fromJson,
        variables: Variables$Query$GetAllProducts(
          query: formattedSearchQuery,
          before: before,
          after: after,
          first: first,
          last: last,
          order: order,
        ),
      );

      if (response.hasErrors()) {
        return ApiResponse(
          success: false,
          message: 'Failed to load products',
        );
      }

      if (response.data?.products?.edges == null) {
        return ApiResponse(
          success: false,
          message: 'Failed to load products',
        );
      }

      final products =
          response.data?.products?.edges!
              .map((element) => element.node)
              .toList() ??
          [];

      final totalRecords = response.data?.products?.totalCount ?? 0;

      return ApiResponse(
        data: (
          products
              .map(
                (node) => Product(
                  id: node.id,
                  code: node.code,
                  description: node.description,
                ),
              )
              .toList(),
          EmrQueryGraphQLMetadata<dynamic>(
            <dynamic, dynamic>{},
            totalRecords,
            EmrQueryGraphQLPageInfo(
              hasPreviousPage:
                  response.data?.products?.pageInfo.hasPreviousPage ?? false,
              hasNextPage:
                  response.data?.products?.pageInfo.hasNextPage ?? false,
              startCursor: response.data?.products?.pageInfo.startCursor,
              endCursor: response.data?.products?.pageInfo.endCursor,
            ),
          ),
        ),
      );
    } catch (e) {
      return ApiResponse(
        success: false,
        message: 'Failed to load products',
      );
    }
  }

  Future<List<Product>> products(
    String query,
  ) async {
    var formattedSearchQuery = '';

    if (query.isNotEmpty) {
      final tokens = query.split(' ');
      formattedSearchQuery = '${tokens.join('* ')}*';
    }

    final response = await documentNodeQueryGetAllProducts.execute(
      httpClient,
      Query$GetAllProducts.fromJson,
      variables: Variables$Query$GetAllProducts(
        query: formattedSearchQuery,
      ),
    );

    return response.data!.products!.edges!
        .map(
          (e) => Product(
            id: e.node.id,
            code: e.node.code,
            description: e.node.description,
          ),
        )
        .toList();
  }

  Future<ApiResponse<(List<Yard>, EmrQueryGraphQLMetadata<dynamic>)>>
  searchYards({
    String? query,
    String? before,
    String? after,
    int? first,
    int? last,
    List<EmrQueryScopeSortOrder>? sortOrder,
    List<String>? yardCodes,
    List<String>? territoryCodes,
  }) async {
    try {
      var formattedSearchQuery = '';

      if (query != null && query.isNotEmpty) {
        final tokens = query.split(' ');
        formattedSearchQuery = '${tokens.join('* ')}*';
      }

      final input = Input$SearchYardInput(
        query: formattedSearchQuery,
        yardCodes: yardCodes,
        territoryCodes: territoryCodes,
      );
      final orderBy = <Input$YardSortInput>[];

      if (sortOrder != null && sortOrder.isNotEmpty) {
        for (final sortBy in sortOrder) {
          orderBy.add(
            Input$YardSortInput.fromJson(
              {sortBy.field: sortBy.direction.toString()},
            ),
          );
        }
      }

      final response = await documentNodeQueryGetAllYards.execute(
        httpClient,
        Query$GetAllYards.fromJson,
        variables: Variables$Query$GetAllYards(
          input: input,
          before: before,
          after: after,
          first: first,
          last: last,
          order: orderBy,
        ),
      );

      if (response.hasErrors()) {
        return ApiResponse(
          success: false,
          message: 'Failed to load yards',
        );
      }

      if (response.data?.yards?.edges == null) {
        return ApiResponse(
          success: false,
          message: 'Failed to load yards',
        );
      }

      final yards = (response.data?.yards?.edges ?? [])
          .map((e) => Yard.fromJson(e.node.toJson()))
          .toList();

      final totalRecords = response.data?.yards?.totalCount ?? 0;

      return ApiResponse(
        data: (
          yards,
          EmrQueryGraphQLMetadata<dynamic>(
            <dynamic, dynamic>{},
            totalRecords,
            EmrQueryGraphQLPageInfo(
              hasPreviousPage:
                  response.data?.yards?.pageInfo.hasPreviousPage ?? false,
              hasNextPage: response.data?.yards?.pageInfo.hasNextPage ?? false,
              startCursor: response.data?.yards?.pageInfo.startCursor,
              endCursor: response.data?.yards?.pageInfo.endCursor,
            ),
          ),
        ),
      );
    } catch (e) {
      return ApiResponse(success: false, message: 'Failed to load yards');
    }
  }

  /// Input must be a correctly formatted id for this to give results.
  Future<ApiResponse<Yard>> getYardById({required String id}) async {
    final results = await documentNodeQueryGetYardById.execute(
      httpClient,
      Query$GetYardById.fromJson,
      variables: Variables$Query$GetYardById(yardId: id),
    );
    if (results.hasErrors()) {
      return ApiResponse(
        success: false,
        message: results.errors?.map((x) => x.message).firstOrNull ?? '',
      );
    }

    return ApiResponse(
      data: Yard.fromJson(results.data!.yard.toJson()),
    );
  }

  Future<List<Timezone>> fetchTimezones(String query) async {
    var formattedSearchQuery = '';

    if (query.isNotEmpty) {
      final tokens = query.split(' ');
      formattedSearchQuery = '${tokens.join('* ')}*';
    }

    final response = await documentNodeQueryGetTimeZones.execute(
      httpClient,
      Query$GetTimeZones.fromJson,
      variables: Variables$Query$GetTimeZones(query: formattedSearchQuery),
    );
    return response.data?.timezones
            .map(
              (t) => Timezone(
                timeZoneId: t.timeZoneId,
                displayName: t.displayName,
              ),
            )
            .toList() ??
        [];
  }

  Future<List<Region>> fetchRegions({
    required bool hasParentRegion,
    String? query,
  }) async {
    var formattedSearchQuery = '';

    if (query != null && query.isNotEmpty) {
      final tokens = query.split(' ');
      formattedSearchQuery = '${tokens.join('* ')}*';
    }

    final response = await documentNodeQueryGetRegions.execute(
      httpClient,
      Query$GetRegions.fromJson,
      variables: Variables$Query$GetRegions(
        input: Input$RegionSearchInput(
          hasParentRegion: hasParentRegion,
          query: formattedSearchQuery,
        ),
      ),
    );

    final regions = response.data?.regions?.edges;
    if (regions == null) return [];

    return regions
        .map((r) => Region(r.node.id, r.node.name, r.node.parentRegionId))
        .toList();
  }

  Future<ApiResponse<Yard?>?> saveYard({
    required Yard yard,
  }) async {
    try {
      final isNew = yard.id!.endsWith(EmrCoreApiConstants.kEmptyGuid);

      if (isNew) {
        final response = await documentNodeMutationCreateYard.execute(
          httpClient,
          Mutation$CreateYard.fromJson,
          variables: Variables$Mutation$CreateYard(
            input: Input$CreateYardInput(
              name: yard.name,
              shortName: yard.name,
              companyId: yard.companyId!,
              companyCode: yard.companyCode!,
              yardCode: yard.yardCode,
              regionId: yard.regionId!,
              timeZoneId: yard.timeZoneId!,
              defaultRetailAccountPool: yard.defaultRetailAccountPool!,
              territoryId: yard.territoryId!,
              territoryCode: yard.territoryCode!,
              active: yard.active,
              addressLine1: yard.addressLine1,
              addressLine2: yard.addressLine2,
              addressLine3: yard.addressLine3,
              addressLine4: yard.addressLine4,
              addressLine5: yard.addressLine5,
              addressLine6: yard.addressLine6,
              postCode: yard.postCode,
              telephone: yard.telephone,
              wasteCarrierRegNo: yard.wasteCarrierRegNo,
              wmlExemptionNo: yard.wmlExemptionNo,
              extendedProperties: yard.extendedProperties,
              managerIds: yard.managerIds ?? [],
              promptForPhotoDefault: yard.promptForPhotoDefault ?? false,
              enforceIssueDateForUtilityBill:
                  yard.enforceIssueDateForUtilityBill ?? false,
              blockExpiredUtilityBill: yard.blockExpiredUtilityBill ?? false,
              defaultPaymentMethod: mapToGraphQLPaymentMethod(
                yard.defaultPaymentMethod,
              ),
              paymentMethods: mapToGraphQLPaymentMethods(yard.paymentMethods),
              primaryCashierPaymentSystem: yard.primaryCashierPaymentSystem
                  .toPaymentSystemEnum(),
            ),
          ),
        );

        if (response.hasErrors()) {
          return ApiResponse(
            success: false,
            message: response.errors!.map((e) => e.message).join('\n'),
          );
        }

        final createdYard = response.data?.createYard;

        if (createdYard == null) {
          return ApiResponse<Yard>(
            success: false,
            message: 'Failed to create yard',
          );
        } else {
          // Create the device for the yard
          await saveDevices(devices: yard.devices);
        }

        return ApiResponse<Yard>(
          data: Yard.fromJson(createdYard.toJson()),
        );
      } else {
        final response = await documentNodeMutationUpdateYard.execute(
          httpClient,
          Mutation$UpdateYard.fromJson,
          variables: Variables$Mutation$UpdateYard(
            input: Input$UpdateYardInput(
              addressLine1: yard.addressLine1 ?? '',
              addressLine2: yard.addressLine2 ?? '',
              addressLine3: yard.addressLine3 ?? '',
              addressLine4: yard.addressLine4 ?? '',
              addressLine5: yard.addressLine5 ?? '',
              addressLine6: yard.addressLine6 ?? '',
              postCode: yard.postCode ?? '',
              telephone: yard.telephone ?? '',
              companyCode: yard.companyCode!,
              companyId: yard.companyId!,
              defaultRetailAccountPool: yard.defaultRetailAccountPool ?? '',
              extendedProperties: yard.extendedProperties,
              managerIds: yard.managerIds,
              id: 'yards/${yard.yardCode}',
              name: yard.name,
              regionId: yard.region!.id,
              shortName: yard.shortName,
              territoryCode: yard.territoryCode!,
              territoryId: yard.territoryId!,
              timeZoneId: yard.timezone!.timeZoneId,
              wasteCarrierRegNo: yard.wasteCarrierRegNo ?? '',
              wmlExemptionNo: yard.wmlExemptionNo ?? '',
              active: yard.active,
              promptForPhotoDefault: yard.promptForPhotoDefault ?? false,
              enforceIssueDateForUtilityBill:
                  yard.enforceIssueDateForUtilityBill ?? false,
              blockExpiredUtilityBill: yard.blockExpiredUtilityBill ?? false,
              defaultPaymentMethod: mapToGraphQLPaymentMethod(
                yard.defaultPaymentMethod,
              ),
              paymentMethods: mapToGraphQLPaymentMethods(yard.paymentMethods),
              primaryCashierPaymentSystem: yard.primaryCashierPaymentSystem
                  .toPaymentSystemEnum(),
            ),
          ),
        );

        if (response.hasErrors()) {
          return ApiResponse(
            success: false,
            message: response.errors!.map((e) => e.message).join('\n'),
          );
        }

        final updatedYard = response.data?.updateYard;

        if (updatedYard == null) {
          return ApiResponse<Yard>(
            success: false,
            message: 'Failed to update yard',
          );
        } else {
          await saveDevices(devices: yard.devices);
        }

        return ApiResponse<Yard>(
          data: Yard.fromJson(updatedYard.toJson()),
        );
      }
    } catch (e) {
      return ApiResponse(
        success: false,
        message: 'Failed to save the yard',
      );
    }
  }

  Future<List<PaymentMethod>> getAvailablePaymentMethods() async {
    return Enum$PaymentMethod.values
        .where(
          (e) => e != Enum$PaymentMethod.$unknown,
        )
        .map((e) => e.toPaymentMethod())
        .toList();
  }

  Future<List<RoundingType>> getAvailableRoundingType() async {
    return Enum$RoundingType.values
        .where(
          (e) => e != Enum$RoundingType.$unknown,
        )
        .map((e) => e.toAtmRoundingType())
        .toList();
  }

  Future<ApiResponse<(List<Devices>, EmrQueryGraphQLMetadata<dynamic>)>>
  searchDevices({
    String? query,
    String? before,
    String? after,
    int? first,
    int? last,
    List<EmrQueryScopeSortOrder>? sortOrder,
  }) async {
    try {
      var formattedSearchQuery = '';

      if (query != null && query.isNotEmpty) {
        final tokens = query.split(' ');
        formattedSearchQuery = '${tokens.join('* ')}*';
      }

      final input = Input$GetDevicesInput(yardCode: formattedSearchQuery);
      final orderBy = <Input$DevicesSortInput>[];

      if (sortOrder != null && sortOrder.isNotEmpty) {
        for (final sortBy in sortOrder) {
          orderBy.add(
            Input$DevicesSortInput.fromJson(
              {sortBy.field: sortBy.direction.toString()},
            ),
          );
        }
      }

      final response = await documentNodeQueryGetDevices.execute(
        httpClient,
        Query$GetDevices.fromJson,
        variables: Variables$Query$GetDevices(
          input: Input$GetDevicesInput(
            yardCode: input.yardCode,
          ),
          before: before,
          after: after,
          first: first,
          last: last,
          order: orderBy,
        ),
      );

      if (response.hasErrors()) {
        return ApiResponse(
          success: false,
          message: 'Failed to load devices',
        );
      }

      if (response.data?.devices?.edges == null) {
        return ApiResponse(
          success: false,
          message: 'Failed to load devices',
        );
      }

      final devices = (response.data?.devices?.edges ?? [])
          .map((e) => Devices.fromJson(e.node.toJson()))
          .toList();

      final totalRecords = response.data?.devices?.totalCount ?? 0;

      return ApiResponse(
        data: (
          devices,
          EmrQueryGraphQLMetadata<dynamic>(
            <dynamic, dynamic>{},
            totalRecords,
            EmrQueryGraphQLPageInfo(
              hasPreviousPage:
                  response.data?.devices?.pageInfo.hasPreviousPage ?? false,
              hasNextPage:
                  response.data?.devices?.pageInfo.hasNextPage ?? false,
              startCursor: response.data?.devices?.pageInfo.startCursor,
              endCursor: response.data?.devices?.pageInfo.endCursor,
            ),
          ),
        ),
      );
    } catch (e) {
      return ApiResponse(success: false, message: 'Failed to load devices');
    }
  }

  Future<ApiResponse<Devices?>?> saveDevices({
    required Devices devices,
  }) async {
    try {
      final isNew = devices.id.isEmpty;

      if (isNew) {
        final response = await documentNodeMutationCreateDevices.execute(
          httpClient,
          Mutation$CreateDevices.fromJson,
          variables: Variables$Mutation$CreateDevices(
            input: Input$CreateDevicesInput.fromJson(devices.toJson()),
          ),
        );

        if (response.hasErrors()) {
          return ApiResponse(
            success: false,
            message: response.errors!.map((e) => e.message).join('\n'),
          );
        }

        final createdDevices = response.data?.createDevices;

        if (createdDevices == null) {
          return ApiResponse<Devices>(
            success: false,
            message: 'Failed to create device',
          );
        }

        return ApiResponse<Devices>(
          data: Devices.fromJson(createdDevices.toJson()),
        );
      } else {
        final response = await documentNodeMutationUpdateDevices.execute(
          httpClient,
          Mutation$UpdateDevices.fromJson,
          variables: Variables$Mutation$UpdateDevices(
            input: Input$UpdateDevicesInput.fromJson(devices.toJson()),
          ),
        );

        if (response.hasErrors()) {
          return ApiResponse(
            success: false,
            message: response.errors!.map((e) => e.message).join('\n'),
          );
        }

        final updatedDevices = response.data?.updateDevices;

        if (updatedDevices == null) {
          return ApiResponse<Devices>(
            success: false,
            message: 'Failed to update device',
          );
        }

        return ApiResponse<Devices>(
          data: Devices.fromJson(updatedDevices.toJson()),
        );
      }
    } catch (e) {
      return ApiResponse(
        success: false,
        message: 'Failed to save the device',
      );
    }
  }

  Future<Devices?> fetchDeviceById(String deviceId) async {
    try {
      final response = await documentNodeQueryGetDevice.execute(
        httpClient,
        Query$GetDevice.fromJson,
        variables: Variables$Query$GetDevice(
          input: Input$GetDeviceInput(
            deviceId: deviceId,
          ),
        ),
      );

      if (response.hasErrors()) {
        return null;
      }

      final deviceNode = response.data?.device;
      if (deviceNode == null) {
        return null;
      }

      return Devices.fromJson(deviceNode.toJson());
    } catch (e) {
      return null;
    }
  }

  Future<ApiResponse<List<Query$SearchWorkflowRules$searchWorkflowRules>>>
  searchWorkfloweRules({
    required Enum$WorkflowType workflowType,
    String? query,
    List<String>? territoryCodes,
    List<String>? yardCodes,
    List<String>? productFamilies,
  }) async {
    final input = Variables$Query$SearchWorkflowRules(
      input: Input$WorkflowRuleSearchInput(
        yardCodes: yardCodes ?? [],
        territoryCodes: territoryCodes ?? [],
        productFamilies: productFamilies,
        workflowType: workflowType,
        query: query,
      ),
    );
    final response = await documentNodeQuerySearchWorkflowRules.execute(
      httpClient,
      Query$SearchWorkflowRules.fromJson,
      variables: input,
    );

    if (response.hasErrors()) {
      return ApiResponse(
        success: false,
        message: 'Failed to fetch Workflow Rules.',
      );
    }

    return ApiResponse(data: response.data?.searchWorkflowRules);
  }

  Future<ApiResponse<List<String>>> addLevelUser(
    String? stocktakeRuleId,
    String yardCode,
    int level,
    List<String> userEmails,
    String productFamily,
    Enum$WorkflowType workflowType,
    double? minAmount,
    double? maxAmount,
  ) async {
    final input = Variables$Mutation$AddUserLevel(
      input: Input$AddUserLevelInput(
        workflowType: workflowType,
        yardCode: yardCode,
        workflowRuleId: stocktakeRuleId,
        level: level,
        userEmails: userEmails,
        productFamily: productFamily,
        minAmount: minAmount,
        maxAmount: maxAmount,
      ),
    );

    final response = await documentNodeMutationAddUserLevel.execute(
      httpClient,
      Mutation$AddUserLevel.fromJson,
      variables: input,
    );

    if (response.hasErrors()) {
      return ApiResponse(
        success: false,
        message: 'Failed to add user to level.',
      );
    }

    return ApiResponse(data: response.data!.addUserLevel);
  }

  Future<ApiResponse<Map<String, List<String>>>> getWorkflowRuleFilterValues(
    Enum$WorkflowType workflowType,
  ) async {
    final response = await documentNodeQueryGetWorkflowRuleFilterValues.execute(
      httpClient,
      Query$GetWorkflowRuleFilterValues.fromJson,
      variables: Variables$Query$GetWorkflowRuleFilterValues(
        WorkflowType: workflowType,
      ),
    );

    if (response.hasErrors()) {
      return ApiResponse(
        success: false,
        message: 'Failed to get filters for Workflows.',
      );
    }
    final map = <String, List<String>>{};
    for (final x in response.data!.workflowRuleFilterValues) {
      map.addAll({x.key: x.value});
    }

    return ApiResponse(
      data: map,
    );
  }

  Future<ApiResponse<List<String>>> searchProductFamilies({
    required String query,
  }) async {
    final response = await documentNodeQueryProductFamilies.execute(
      httpClient,
      Query$ProductFamilies.fromJson,
    );

    if (response.hasErrors()) {
      return ApiResponse(
        success: false,
        message: 'Failed to get Product Families.',
      );
    }

    final data = response.data!.productFamilies
        .where((p) => p.contains(query))
        .toList();

    return ApiResponse(
      data: data,
    );
  }

  Future<ApiResponse<List<String>>> getStocktakeProductFamilyFilterValues({
    required String query,
  }) async {
    final response =
        await documentNodeQueryGetStocktakeProductFamilyFilterValues.execute(
          httpClient,
          Query$GetStocktakeProductFamilyFilterValues.fromJson,
        );

    if (response.hasErrors()) {
      return ApiResponse(
        success: false,
        message: 'Failed to get Product Families for filter.',
      );
    }

    final data = response.data!.stocktakeProductFamilyFilterValues
        .where((p) => p.contains(query))
        .toList();

    return ApiResponse(
      data: data,
    );
  }

  Future<ApiResponse<WorkflowConfiguration>> getWorkflowRuleConfiguration(
    Enum$WorkflowType workflowType,
  ) async {
    final response = await documentNodeQueryGetWorkflowConfiguration.execute(
      httpClient,
      Query$GetWorkflowConfiguration.fromJson,
      variables: Variables$Query$GetWorkflowRuleFilterValues(
        WorkflowType: workflowType,
      ),
    );

    if (response.hasErrors()) {
      return ApiResponse(
        success: false,
        message: 'Failed to get Workflow Rule Configurations.',
      );
    }

    final map = <int, String>{};
    for (final x in response.data!.workflowConfiguration!.levelTitle) {
      map[x.key] = x.value;
    }

    final data = WorkflowConfiguration(
      id: response.data!.workflowConfiguration!.id,
      levelTitle: map,
    );

    return ApiResponse(
      data: data,
    );
  }

  Future<ApiResponse<int>> addWorkflowConfiguration({
    required String id,
    required int level,
    String title = '',
  }) async {
    final response = await documentNodeMutationAddWorkflowConfiguration.execute(
      httpClient,
      Mutation$AddWorkflowConfiguration.fromJson,
      variables: Variables$Mutation$AddWorkflowConfiguration(
        input: Input$AddWorkflowConfigurationInput(
          id: id,
          level: level,
          title: title,
        ),
      ),
    );

    if (response.hasErrors()) {
      return ApiResponse(
        success: false,
        message: 'Failed to Save Workflow Rule Configurations.',
      );
    }

    return ApiResponse(
      data: response.data!.addWorkflowConfiguration.first.key,
    );
  }

  Future<ApiResponse<WorkflowRuleMaxLevel>> getWorkflowRuleMaxLevel({
    required Enum$WorkflowType workflowType,
  }) async {
    final response = await documentNodeQueryGetWorkflowRulesMaxLevel.execute(
      httpClient,
      Query$GetWorkflowRulesMaxLevel.fromJson,
      variables: Variables$Query$GetWorkflowRulesMaxLevel(
        workflowType: workflowType,
      ),
    );

    if (response.hasErrors()) {
      return ApiResponse(
        success: false,
        message: 'Failed to Save Workflow Configurations.',
      );
    }

    return ApiResponse(
      data: WorkflowRuleMaxLevel(
        maxLevel: response.data!.workflowRulesMaxLevel.maxLevel,
        workflowType: response.data!.workflowRulesMaxLevel.workflowType
            .toString(),
      ),
    );
  }

  Future<CompanyBankAccount?> fetchCompanyBankAccountByCode(
    String code,
  ) async {
    try {
      final response = await documentNodeQueryGetCompanyBankAccount.execute(
        httpClient,
        Query$GetCompanyBankAccount.fromJson,
        variables: Variables$Query$GetCompanyBankAccount(
          input: Input$CompanyBankAccountSearchInput(
            code: code,
          ),
        ),
      );

      if (response.hasErrors()) {
        return null;
      }

      final companyBankAccount = response.data?.companyBankAccount;
      if (companyBankAccount == null) {
        return null;
      }

      return CompanyBankAccount.fromJson(companyBankAccount.toJson());
    } catch (e) {
      return null;
    }
  }

  Future<
    ApiResponse<(List<CompanyBankAccount>, EmrQueryGraphQLMetadata<dynamic>)>
  >
  searchCompanyBankAccounts({
    String? query,
    String? territoryCode,
    String? before,
    String? after,
    int? first,
    int? last,
    List<EmrQueryScopeSortOrder>? sortOrder,
  }) async {
    try {
      var formattedSearchQuery = '';

      if (query != null) {
        formattedSearchQuery = '$query*';
      }

      final input = Input$CompanyBankAccountsSearchInput(
        territoryCode: territoryCode,
        query: formattedSearchQuery,
      );

      final orderBy = <Input$CompanyBankAccountSortInput>[];

      if (sortOrder != null && sortOrder.isNotEmpty) {
        for (final sortBy in sortOrder) {
          orderBy.add(
            Input$CompanyBankAccountSortInput.fromJson({
              sortBy.field: sortBy.direction.toString(),
            }),
          );
        }
      }

      final response = await documentNodeQueryGetCompanyBankAccounts.execute(
        httpClient,
        Query$GetCompanyBankAccounts.fromJson,
        variables: Variables$Query$GetCompanyBankAccounts(
          input: Input$CompanyBankAccountsSearchInput(
            territoryCode: input.territoryCode,
            query: input.query,
          ),
          before: before,
          after: after,
          first: first,
          last: last,
          order: orderBy,
        ),
      );

      if (response.hasErrors()) {
        return ApiResponse(
          success: false,
          message: 'Failed to load Company Bank Accounts',
        );
      }

      if (response.data?.companyBankAccounts?.edges == null) {
        return ApiResponse(
          success: false,
          message: 'Failed to load Company Bank Accounts',
        );
      }

      final companyBankAccounts =
          (response.data?.companyBankAccounts?.edges ?? [])
              .map((e) => CompanyBankAccount.fromJson(e.node.toJson()))
              .toList();

      final totalRecords = response.data?.companyBankAccounts?.totalCount ?? 0;

      return ApiResponse(
        data: (
          companyBankAccounts,
          EmrQueryGraphQLMetadata<dynamic>(
            <dynamic, dynamic>{},
            totalRecords,
            EmrQueryGraphQLPageInfo(
              hasPreviousPage:
                  response
                      .data
                      ?.companyBankAccounts
                      ?.pageInfo
                      .hasPreviousPage ??
                  false,
              hasNextPage:
                  response.data?.companyBankAccounts?.pageInfo.hasNextPage ??
                  false,
              startCursor:
                  response.data?.companyBankAccounts?.pageInfo.startCursor,
              endCursor: response.data?.companyBankAccounts?.pageInfo.endCursor,
            ),
          ),
        ),
      );
    } catch (e) {
      return ApiResponse(
        success: false,
        message: 'Failed to load Company Bank Accounts',
      );
    }
  }

  Future<ApiResponse<CompanyBankAccount?>?> saveCompanyBankAccount({
    required CompanyBankAccount companyBankAccount,
  }) async {
    try {
      final isNew = companyBankAccount.id.endsWith(
        EmrCoreApiConstants.kEmptyGuid,
      );

      if (isNew) {
        final response = await documentNodeMutationCreateCompanyBankAccount
            .execute(
              httpClient,
              Mutation$CreateCompanyBankAccount.fromJson,
              variables: Variables$Mutation$CreateCompanyBankAccount(
                input: Input$CreateCompanyBankAccountInput(
                  code: companyBankAccount.code,
                  bankName: companyBankAccount.bankName,
                  companyId: companyBankAccount.companyId,
                  defaultAccount: companyBankAccount.defaultAccount,
                  companyCode: companyBankAccount.companyCode,
                  territoryId: companyBankAccount.territoryId,
                  territoryCode: companyBankAccount.territoryCode,
                  sortCode: companyBankAccount.sortCode,
                  accountNumber: companyBankAccount.accountNumber,
                  address: Input$AddressInput(
                    address1: companyBankAccount.address.address1,
                    address2: companyBankAccount.address.address2,
                    address3: companyBankAccount.address.address3,
                    address4: companyBankAccount.address.address4,
                    address5: companyBankAccount.address.address5,
                    address6: companyBankAccount.address.address6,
                    postCode: companyBankAccount.address.postCode,
                  ),
                ),
              ),
            );

        if (response.hasErrors()) {
          return ApiResponse(
            success: false,
            message: response.errors!.map((e) => e.message).join('\n'),
          );
        }

        final createdCompanyBankAccount =
            response.data?.createCompanyBankAccount;

        if (createdCompanyBankAccount == null) {
          return ApiResponse<CompanyBankAccount>(
            success: false,
            message: 'Failed to create Company Bank Account',
          );
        }

        return ApiResponse<CompanyBankAccount>(
          data: CompanyBankAccount.fromJson(createdCompanyBankAccount.toJson()),
        );
      } else {
        final response = await documentNodeMutationUpdateCompanyBankAccount
            .execute(
              httpClient,
              Mutation$UpdateCompanyBankAccount.fromJson,
              variables: Variables$Mutation$UpdateCompanyBankAccount(
                input: Input$UpdateCompanyBankAccountInput(
                  companyCode: companyBankAccount.companyCode,
                  bankName: companyBankAccount.bankName,
                  code: companyBankAccount.code,
                  territoryCode: companyBankAccount.territoryCode,
                  defaultAccount: companyBankAccount.defaultAccount,
                  sortCode: companyBankAccount.sortCode,
                  accountNumber: companyBankAccount.accountNumber,
                  address: Input$AddressInput(
                    address1: companyBankAccount.address.address1,
                    address2: companyBankAccount.address.address2,
                    address3: companyBankAccount.address.address3,
                    address4: companyBankAccount.address.address4,
                    address5: companyBankAccount.address.address5,
                    address6: companyBankAccount.address.address6,
                    postCode: companyBankAccount.address.postCode,
                  ),
                ),
              ),
            );

        if (response.hasErrors()) {
          return ApiResponse(
            success: false,
            message: response.errors!.map((e) => e.message).join('\n'),
          );
        }

        final updatedCompanyBankAccount =
            response.data?.updateCompanyBankAccount;

        if (updatedCompanyBankAccount == null) {
          return ApiResponse<CompanyBankAccount>(
            success: false,
            message: 'Failed to update Company Bank Account',
          );
        }

        return ApiResponse<CompanyBankAccount>(
          data: CompanyBankAccount.fromJson(updatedCompanyBankAccount.toJson()),
        );
      }
    } catch (e) {
      return ApiResponse(
        success: false,
        message: 'Failed to save the Company Bank Account',
      );
    }
  }

  Future<ApiResponse<YardPaymentRule>> modifyWorkflowYardPaymentRule(
    String id,
    double minAmount,
    double maxAmount,
  ) async {
    final response = await documentNodeMutationModifyWorkflowYardPaymentRule
        .execute(
          httpClient,
          Mutation$ModifyWorkflowYardPaymentRule.fromJson,
          variables: Variables$Mutation$ModifyWorkflowYardPaymentRule(
            input: Input$ModifyWorkflowYardPaymentRuleInput(
              id: id,
              maxAmount: maxAmount,
              minAmount: minAmount,
            ),
          ),
        );

    if (response.hasErrors()) {
      return ApiResponse(
        success: false,
        message: response.errors!.map((e) => e.message).join('\n'),
      );
    }

    final yardPaymentRule = response.data?.modifyWorkflowYardPaymentRule;
    return ApiResponse(
      data: YardPaymentRule(
        id: yardPaymentRule!.id,
        yardCode: yardPaymentRule.yardCode,
        levelUserEmails: {},
        minAmount: yardPaymentRule.minAmount,
        maxAmount: yardPaymentRule.maxAmount,
      ),
    );
  }

  Future<ApiResponse<List<ChequeBook>>> searchChequeBooks({
    required String bankAccountCode,
    String? yardCode,
  }) async {
    try {
      final input = Variables$Query$SearchChequeBooks(
        bankAccountCode: bankAccountCode,
        yardCode: yardCode,
      );

      final response = await documentNodeQuerySearchChequeBooks.execute(
        httpClient,
        Query$SearchChequeBooks.fromJson,
        variables: Variables$Query$SearchChequeBooks(
          bankAccountCode: input.bankAccountCode,
          yardCode: input.yardCode,
        ),
      );

      if (response.hasErrors()) {
        return ApiResponse(
          success: false,
          message: 'Failed to load Cheque Numbers',
        );
      }

      if (response.data?.searchChequeBooks == null) {
        return ApiResponse(
          success: false,
          message: 'Failed to load Cheque Numbers',
        );
      }

      final chequeNumbers = (response.data?.searchChequeBooks ?? [])
          .map((e) => ChequeBook.fromJson(e.toJson()))
          .toList();

      return ApiResponse(data: chequeNumbers);
    } catch (e) {
      return ApiResponse(
        success: false,
        message: 'Failed to load Cheque Numbers',
      );
    }
  }

  Future<ApiResponse<List<ChequeBook>>> allocateChequeNumbers({
    required String bankAccountCode,
    required String yardCode,
    required String parentYardCode,
    required int allocationSize,
  }) async {
    try {
      final input = Variables$Mutation$AllocateChequeNumbers(
        input: Input$AllocateChequeNumbersInput(
          bankAccountCode: bankAccountCode,
          yardCode: yardCode,
          parentYardCode: parentYardCode,
          blockSize: allocationSize,
        ),
      );

      final response = await documentNodeMutationAllocateChequeNumbers.execute(
        httpClient,
        Mutation$AllocateChequeNumbers.fromJson,
        variables: input,
      );

      if (response.hasErrors()) {
        return ApiResponse(
          success: false,
          message: 'Failed to Allocate Cheque Numbers',
        );
      }

      if (response.data?.allocateChequeNumbers == null) {
        return ApiResponse(
          success: false,
          message: 'Failed to Allocate Cheque Numbers',
        );
      }

      final chequeNumbers = (response.data?.allocateChequeNumbers ?? [])
          .map((e) => ChequeBook.fromJson(e.toJson()))
          .toList();

      return ApiResponse(data: chequeNumbers);
    } catch (e) {
      return ApiResponse(
        success: false,
        message: 'Failed to load Cheque Numbers',
      );
    }
  }

  Future<ApiResponse<ChequeBook>> addChequeBook({
    required String bankAccountCode,
    required Yard yard,
    required int startNumber,
    required Map<String, String> uniqueNumbers,
  }) async {
    try {
      final input = Variables$Mutation$AddChequeBook(
        input: Input$AddChequeBookInput(
          bankAccountCode: bankAccountCode,
          yardId: yard.id ?? '',
          yardCode: yard.yardCode,
          numberOfDigits: 6,
          startNumber: startNumber,
          uniqueNumbers: uniqueNumbers.entries
              .map(
                (e) => Input$KeyValuePairOfStringAndStringInput(
                  key: e.key,
                  value: e.value,
                ),
              )
              .toList(),
        ),
      );

      final response = await documentNodeMutationAddChequeBook.execute(
        httpClient,
        Mutation$AddChequeBook.fromJson,
        variables: input,
      );

      if (response.hasErrors()) {
        return ApiResponse(success: false, message: 'Input error');
      }

      if (response.data?.addChequeBook == null) {
        return ApiResponse(
          success: false,
          message: 'Failed to Allocate Cheque Numbers',
        );
      }

      final responseData = response.data!.addChequeBook;

      final chequeNumbers = ChequeBook(
        yardCode: responseData.yardCode,
        total: responseData.count,
        remaining: responseData.remaining,
      );

      return ApiResponse(data: chequeNumbers);
    } catch (e) {
      return ApiResponse(
        success: false,
        message: 'Failed to load Cheque Numbers',
      );
    }
  }

  Future<List<PickerItem<String, String>>> pickerProducts(
    String query,
  ) async {
    final results = await searchProducts(
      query: query,
      sortOrder: [
        EmrQueryScopeSortOrder(
          field: 'code',
          direction: .asc,
        ),
      ],
    );

    return results.data?.$1
            .map((p) => PickerItem(p.description, p.code))
            .where(
              (data) => (data.key.isNotEmpty) && (data.value.isNotEmpty),
            )
            .toList() ??
        [];
  }

  Future<ApiResponse<(List<StockTakeConfig>, EmrQueryGraphQLMetadata<dynamic>)>>
  getStockTakeConfigurations(
    String? query,
    String? before,
    String? after,
    int? first,
    int? last,
  ) async {
    final response = await documentNodeQuerySearchStockTakeConfigurations
        .execute(
          httpClient,
          Query$SearchStockTakeConfigurations.fromJson,
          variables: Variables$Query$SearchStockTakeConfigurations(
            input: Input$GetStockTakeConfigurationsInput(query: query),
            before: before,
            after: after,
            first: first,
            last: last,
          ),
        );

    if (response.hasErrors()) {
      return ApiResponse(
        success: false,
        message:
            'Unexpected error occured while getting stock take configurations',
      );
    }

    final result = response.data?.stockTakeConfigurations;
    final configs =
        result?.nodes
            ?.map(
              (d) => StockTakeConfig(
                yardCode: d.key,
                isDeltaSnapshotEnabled: d.value.isDeltaSnapshotEnabled,
              ),
            )
            .toList() ??
        [];

    return ApiResponse(
      data: (
        configs,
        EmrQueryGraphQLMetadata(
          <dynamic, dynamic>{},
          result?.totalCount ?? 0,
          EmrQueryGraphQLPageInfo(
            hasPreviousPage: result?.pageInfo.hasPreviousPage ?? false,
            hasNextPage: result?.pageInfo.hasNextPage ?? false,
            startCursor: result?.pageInfo.startCursor,
            endCursor: result?.pageInfo.endCursor,
          ),
        ),
      ),
    );
  }

  Future<StockTakeConfig?> getStockTakeConfiguration(String yardCode) async {
    final response = await documentNodeQueryGetStockTakeConfigurationByYardCode
        .execute(
          httpClient,
          Query$GetStockTakeConfigurationByYardCode.fromJson,
          variables: Variables$Query$GetStockTakeConfigurationByYardCode(
            input: Input$GetStockTakeConfigurationByYardCodeInput(
              yardCode: yardCode,
            ),
          ),
        );

    if (response.hasErrors()) {
      return null;
    }

    final result = response.data?.stockTakeConfigurationByYardCode;
    return StockTakeConfig(
      yardCode: yardCode,
      isDeltaSnapshotEnabled: result?.isDeltaSnapshotEnabled,
    );
  }

  Future<Mutation$SaveStockTakeConfiguration$saveStockTakeConfigurations?>
  saveStockTakeConfiguration(
    String yardCode, {
    bool isDeltaSnapshotEnabled = true,
    bool isDeleted = false
  }) async {
    final response = await documentNodeMutationSaveStockTakeConfiguration
        .execute(
          httpClient,
          Mutation$SaveStockTakeConfiguration.fromJson,
          variables: Variables$Mutation$SaveStockTakeConfiguration(
            input: Input$SaveStockTakeConfigurationInput(
              yardCode: yardCode,
              isDeltaSnapshotEnabled: isDeltaSnapshotEnabled,
              isDeleted: isDeleted
            ),
          ),
        );

    if (response.hasErrors()) {
      return null;
    }
    return response.data?.saveStockTakeConfigurations;
  }
}
