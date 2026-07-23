import 'package:emr_core_api/models/tag.dart';
import 'package:emr_one_core/controllers/settings_controller.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_crm/emr_one_crm_constants.dart';
import 'package:emr_one_crm/graphql/trader/queries/queries.dart';
import 'package:emr_one_crm/graphql/trader/schema.graphql.dart';
import 'package:emr_one_crm/models/contract_line_location.dart';
import 'package:emr_one_crm/models/gpl_display_grades.dart';
import 'package:emr_one_crm/models/models.dart';
import 'package:emr_one_crm/screens/party_prices/prices_data_controller.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:http/http.dart';

enum ContractTypeEnum { spot, fixed, gpl, pm }

enum ContractBookType { sales, purchase }

class ContractLine {
  ContractLine(
    this.contractLineId,
    this.grade,
    this.price,
    this.arisingPointId,
    this.deliveryMethod,
    this.commodityRate,
    this.targetTonnage,
    this.deliveredTonnage,
    this.deliveredLoads,
    this.haulageAdjustment, {
    required this.isSpot,
    this.depotPremiums = const [],
    this.materialDescription = '',
    this.cToFAdjustment,
    this.gradeDetail,
    this.targetLoads,
    this.commodityRateCollected,
    this.lineLocations,
    this.brokerReference,
  });

  final int contractLineId;
  final bool isSpot;
  final String grade;
  final String materialDescription;
  final int? deliveredLoads;
  final double price;
  final int arisingPointId;
  final CrmDeliveryMethod deliveryMethod;
  final ValueUomPair commodityRate;
  final ValueUomPair targetTonnage;
  final double? deliveredTonnage;
  final UomValue? haulageAdjustment;
  final List<DepotPremium> depotPremiums;
  final double? cToFAdjustment;
  final Grade? gradeDetail;
  final int? targetLoads;
  final ValueUomPair? commodityRateCollected;
  final List<ContractLineLocation>? lineLocations;
  final String? brokerReference;
}

class Contract {
  Contract(
    this.ref,
    this.id,
    this.party,
    this.startDate,
    this.endDate,
    this.lines,
    this.type,
    this.bookType,
    this.currencyCode,
    this.accountManager,
    this.orderBookTypeId,
    this.orderbook,
    this.targetLoads,
    this.customerContractRef,
    this.internalNotes,
    this.externalNotes,
    this.deliveryNotes,
    this.paymentNotes,
    this.priceTypeId,
    this.modifiedDate,
  );

  final String ref;
  final int id;
  final int orderBookTypeId;
  final String orderbook;
  final String party;
  final DateTime? startDate;
  final DateTime? endDate;
  final List<ContractLine> lines;
  final ContractTypeEnum type;
  final ContractBookType bookType;
  final String currencyCode;
  final String accountManager;
  final int targetLoads;
  final String? customerContractRef;
  final String? internalNotes;
  final String? externalNotes;
  final String? deliveryNotes;
  final String? paymentNotes;
  final int priceTypeId;
  final DateTime modifiedDate;

  bool get isCollected => lines.any(
        (element) =>
            element.deliveryMethod != CrmDeliveryMethod.delivered ||
            element.deliveryMethod == CrmDeliveryMethod.both,
      );

  bool get isDelivered => lines.any(
        (element) =>
            element.deliveryMethod == CrmDeliveryMethod.delivered ||
            element.deliveryMethod == CrmDeliveryMethod.both,
      );

  bool get isCollectedFullyCharged => lines.any(
        (element) =>
            element.deliveryMethod == CrmDeliveryMethod.collectedFullyCharged,
      );

  bool get isCollectedLessCharge => lines.any(
        (element) =>
            element.deliveryMethod == CrmDeliveryMethod.collectedLessCharge,
      );
}

class ContractsProvider {
  ContractsProvider(
    this.client,
    this.tradeRUrl, {
    this.cacheTtl = const Duration(minutes: 1),
  }) {
    SharedPrefsCacheProvider.createFromDefaultInstance().then((value) {
      cacheProvider = value;
    });
  }
  final BaseClient client;
  Uri tradeRUrl;
  String? contractHeaderId;
  final Duration cacheTtl;
  List<DepotPremium>? depotPremiumsList = [];
  EmrCacheProvider? cacheProvider;

  Future<GraphQLResponse<Query$gplPublicationData>> getPublications(
    String partyAccountNo,
    String territoryCode,
  ) {
    return documentNodeQuerygplPublicationData.execute(
      client,
      Query$gplPublicationData.fromJson,
      variables: Variables$Query$gplPublicationData(
        partyAccountNo: partyAccountNo,
        territoryCode: territoryCode,
      ),
      url: tradeRUrl,
    );
  }

  Future<GraphQLResponse<Query$GetSpotWizardDataForOrderBook>>
      getSpotWizardDataForOrderBook(
    int id,
    String gradeType,
    SettingsController settingsController,
  ) {
    return documentNodeQueryGetSpotWizardDataForOrderBook.execute(
      client,
      Query$GetSpotWizardDataForOrderBook.fromJson,
      variables: Variables$Query$GetSpotWizardDataForOrderBook(
        id: id,
        gradeType: gradeType,
        territoryCode: settingsController.territory,
      ),
      url: tradeRUrl,
    );
  }

  List<OrderBook> getOrderBooks(
    UserInfoService userInfoService,
  ) {
    return userInfoService.userInfo.userOrderBooks;
  }

  Future<GraphQLResponse<Query$GetContracts>> _getContractsForParty(
    String partyAccountNo,
    String? cursor,
    int? take, {
    bool leastRecent = false,
    int? contractHeaderID,
    Enum$ContractSearchMode filter = Enum$ContractSearchMode.ALL,
  }) {
    return documentNodeQueryGetContracts.execute(
      client,
      Query$GetContracts.fromJson,
      variables: Variables$Query$GetContracts(
        cursor: cursor,
        take: take,
        partyAccountNos: [partyAccountNo],
        contractHeaderIds: contractHeaderID != null ? [contractHeaderID] : [],
        dateSort: leastRecent ? Enum$SortEnumType.ASC : Enum$SortEnumType.DESC,
        filterType: filter,
        activeFromDate: DateTime(
          DateTime.now().year,
          DateTime.now().month,
          DateTime.now().day,
        ),
      ),
      url: tradeRUrl,
      forceLoad: true,
    );
  }

  Future<GraphQLResponse<Query$GetContracts>> _getContractById(
    int contractHeaderId,
  ) {
    return documentNodeQueryGetContracts.execute(
      client,
      Query$GetContracts.fromJson,
      variables: Variables$Query$GetContracts(
        partyAccountNos: [],
        contractHeaderIds: [contractHeaderId],
        dateSort: Enum$SortEnumType.DESC,
        filterType: Enum$ContractSearchMode.ALL,
        activeFromDate: DateTime(
          DateTime.now().year,
          DateTime.now().month,
          DateTime.now().day,
        ),
      ),
      url: tradeRUrl,
    );
  }

  Future<GraphQLResponse<Query$getGplPublicationDetails>>
      _getGplPublicationData(
    int contractHeaderId, {
    EmrCacheProvider? cacheProvider,
    Duration cacheTtl = const Duration(minutes: 5),
  }) async {
    cacheProvider ??=
        await SharedPrefsCacheProvider.createFromDefaultInstance();

    return documentNodeQuerygetGplPublicationDetails.execute(
      client,
      Query$getGplPublicationDetails.fromJson,
      variables: Variables$Query$getGplPublicationDetails(
        contractHeaderId: contractHeaderId,
      ),
      cacheProvider: cacheProvider,
      cacheTtl: cacheTtl,
      url: tradeRUrl,
    );
  }

  Future<List<GplDisplayGrades>> getGplPublicationData(
    int contractHeaderId, {
    required bool isFerrous,
    required String query,
  }) async {
    final result = await _getGplPublicationData(
      contractHeaderId,
    );
    final fe = result.data?.fe
            .map(
              (e) => GplDisplayGrades(
                grade: e.gradeCode,
                colPrice: e.collected?.resultant?.value ?? 0,
                delPrice: e.delivered?.resultant?.value ?? 0,
                yardCode: e.yardCode,
                uom: Uom.values[e.basePrice.uom.index + 1],
              ),
            )
            .toList() ??
        [];
    final nfe = result.data?.nfe
            .map(
              (e) => GplDisplayGrades(
                grade: e.gradeCode,
                colPrice: e.collected?.resultant?.value ?? 0,
                delPrice: e.delivered?.resultant?.value ?? 0,
                yardCode: e.yardCode,
                uom: Uom.values[e.basePrice.uom.index + 1],
              ),
            )
            .toList() ??
        [];
    final nfeCombinedList = _combineDeliveryMethods(nfe);
    final feCombinedList = _combineDeliveryMethods(fe);

    return isFerrous
        ? feCombinedList
            .where(
              (element) =>
                  element.grade.contains(query) ||
                  element.yardCode.contains(query),
            )
            .toList()
        : nfeCombinedList
            .where(
              (element) =>
                  element.grade.contains(query) ||
                  element.yardCode.contains(query),
            )
            .toList();
  }

  Future<PagedList<Contract>> getContractsForParty(
    String partyAccountNo,
    String? cursor, {
    int take = 10,
    bool leastRecent = false,
    int? contractHeaderID,
    PricesFilterMode filterMode = PricesFilterMode.all,
    List<DepotPremium>? depotPremium,
  }) async {
    try {
      var apiFilterMode = Enum$ContractSearchMode.ALL;

      switch (filterMode) {
        case PricesFilterMode.spot:
          apiFilterMode = Enum$ContractSearchMode.SPOT;
        case PricesFilterMode.fixed:
          apiFilterMode = Enum$ContractSearchMode.FIXED;
        case PricesFilterMode.gpl:
          apiFilterMode = Enum$ContractSearchMode.GPL;
        case PricesFilterMode.all:
          apiFilterMode = Enum$ContractSearchMode.ALL;
      }

      final results = await Future.wait([
        _getContractsForParty(
          partyAccountNo,
          cursor,
          take,
          leastRecent: leastRecent,
          contractHeaderID: contractHeaderID,
          filter: apiFilterMode,
        ),
        getTagsPricesData(partyAccountNo),
      ]);
      final contractResult = results[0] as GraphQLResponse<Query$GetContracts>;
      final tagsAndPrices =
          results[1] as GraphQLResponse<Query$GetAdminPricingData>;
      for (final e in tagsAndPrices.data!.adminPricingData) {
        depotPremiumsList!.add(
          DepotPremium(
            depotPremiumId: e.contractDepotPremiumId,
            contractLineId: e.contractLineId,
            depot: Depot.any(),
            currentPrice: ValueUomPair(
              isRate: true,
              value: e.prices?.currentPrice.value ?? 0.0,
              uom: Uom.values[
                  e.prices?.currentPrice.id ?? EmrOneCoreUomConstants.mt.uomId],
            ),
            tags: mapTags(e.tags),
          ),
        );
      }
      return mapContractsLogic(contractResult);
    } catch (ex) {
      return PagedList([], '', hasNextPage: false);
    }
  }

  PagedList<Contract> mapContractsLogic(
    GraphQLResponse<Query$GetContracts> result,
  ) {
    final items =
        result.data!.contracts!.nodes!.map<Contract>(mapContract).toList();

    return PagedList(
      items,
      result.data!.contracts!.pageInfo.endCursor,
      hasNextPage: result.data!.contracts!.pageInfo.hasNextPage,
    );
  }

  Future<Contract> getContract(
    int contractHeaderId,
    String partyAccountNo,
  ) async {
    final results = await Future.wait([
      _getContractById(contractHeaderId),
      getTagsPricesData(partyAccountNo),
    ]);
    final contractResult = results[0] as GraphQLResponse<Query$GetContracts>;
    final tagsAndPrices =
        results[1] as GraphQLResponse<Query$GetAdminPricingData>;
    for (final e in tagsAndPrices.data!.adminPricingData) {
      depotPremiumsList!.add(
        DepotPremium(
          depotPremiumId: e.contractDepotPremiumId,
          contractLineId: e.contractLineId,
          depot: Depot.any(),
          currentPrice: ValueUomPair(
            isRate: true,
            value: e.prices?.currentPrice.value ?? 0.0,
            uom: Uom.values[
                e.prices?.currentPrice.id ?? EmrOneCoreUomConstants.mt.uomId],
          ),
          tags: mapTags(e.tags),
        ),
      );
    }
    return contractResult.data!.contracts!.nodes!
        .map<Contract>(mapContract)
        .first;
  }

  Contract mapContract(Query$GetContracts$contracts$nodes e) {
    return Contract(
      e.contractRef ?? '',
      e.contractHeaderId,
      e.partyAccountNo,
      e.startDate,
      e.endDate,
      mapLines(e.contractLines, e.partyAccountNo),
      _mapContractTypeEnum(e),
      _mapContractBookType(e.contractType!.contractTypeId),
      e.currencyCode ?? '',
      e.accountManager ?? '',
      e.contractOrderBookTypeId!,
      e.orderBook?.contractOrderBookTypeName ?? '',
      e.targetLoads ?? 0,
      e.customerContractRef,
      e.internalComments,
      e.comment,
      e.deliveryNotes,
      e.paymentNotes,
      e.priceTypeId,
      e.modifiedDate!,
    );
  }

  List<ContractLine> mapLines(
    List<Query$GetContracts$contracts$nodes$contractLines> lines,
    String partyAccountNo,
  ) {
    try {
      return lines
          .map(
            (line) => ContractLine(
              line.contractLineId,
              isSpot: line.isSpotPrice,
              line.grade!,
              line.depotPremiums.isNotEmpty
                  ? (line.depotPremiums.first.rateUomValue ?? 0)
                  : 0,
              line.partyArisingPointId ?? 0,
              _mapDeliveryType(line.contractLineDeliveryMethodId),
              ValueUomPair(
                isRate: true,
                uom: Uom.values[
                    line.commodityRateUomId ?? EmrOneCoreUomConstants.mt.uomId],
                value: line.commodityRateUomValue ?? 0.0,
              ),
              ValueUomPair(
                uom: line.targetTonnageUomId != null
                    ? Uom.values[line.targetTonnageUomId!]
                    : Uom.mt,
                value: line.targetTonnageUomValue ?? 0.0,
              ),
              line.deliveredTonnage,
              line.deliveredLoads,
              UomValue.fromValue(
                line.haulageChargeAdjustmentRateUomValue ?? 0.0,
                line.haulageChargeAdjustmentRateUomId != null
                    ? Uom.values[line.haulageChargeAdjustmentRateUomId!]
                    : Uom.mt,
              ),
              depotPremiums: mapDepotPremiums(line.depotPremiums),
              materialDescription: line.materialDescription ?? '',
              cToFAdjustment: line.ctoFadjustment,
              gradeDetail:
                  line.msGrade != null ? _mapGrade(line.msGrade) : null,
              targetLoads: line.targetLoads,
              commodityRateCollected: ValueUomPair(
                isRate: true,
                uom: Uom.values[line.commodityRateCollectedUomId ??
                    EmrOneCoreUomConstants.mt.uomId],
                value: line.commodityRateCollectedUomValue ?? 0.0,
              ),
              lineLocations: _mapLineLocations(line.lineLocations),
              brokerReference: line.brokerReference,
            ),
          )
          .toList();
    } catch (ex) {
      return [];
    }
  }

  List<Tag> mapTags(
    List<Query$GetAdminPricingData$adminPricingData$tags> tags,
  ) {
    return tags.map((tag) {
      try {
        if (tag
            // ignore: lines_longer_than_80_chars
            is Query$GetAdminPricingData$adminPricingData$tags$$CollectedTag) {
          return Tag(
            id: '',
            functional: false,
            category: tag.description,
            reason: tag.description,
            templateId: '',
            effectiveFrom: DateTime.now(),
            effectiveTo: DateTime.now().add(const Duration(days: 1000)),
            rate: UomValue.fromValue(
              tag.haulageRate.value,
              Uom.values[tag.haulageRate.id],
              isRate: true,
            ),
            isCollected: true,
            fullyCharged: tag.fullyCharged,
            showToCustomer: tag.showToCustomer,
            accountLocationKeys: [tag.locationCode],
          );
        } else if (tag
            // ignore: lines_longer_than_80_chars
            is Query$GetAdminPricingData$adminPricingData$tags$$DepotPremiumTag) {
          return Tag(
            id: '',
            functional: false,
            category: tag.description,
            reason: tag.description,
            templateId: '',
            effectiveFrom: tag.effectiveFrom,
            effectiveTo: tag.effectiveTo,
            rate: UomValue.fromValue(
              tag.rate.value,
              Uom.values[tag.rate.id],
              isRate: true,
            ),
            isCollected: false,
          );
        } else {
          // Fallback if tag type doesn't match
          return Tag(
            id: '',
            functional: false,
            category: 'Unknown',
            reason: 'Unknown',
            templateId: '',
            effectiveFrom: DateTime.now(),
            effectiveTo: DateTime.now().add(const Duration(days: 30)),
            rate: UomValue(),
          );
        }
      } catch (_) {
        return Tag(
          id: '',
          functional: false,
          category: 'NA',
          reason: 'NA',
          templateId: '',
          effectiveFrom: DateTime.now(),
          effectiveTo: DateTime.now().add(const Duration(days: 30)),
          rate: UomValue(),
        );
      }
    }).toList();
  }

  List<DepotPremium> mapDepotPremiums(
    List<Query$GetContracts$contracts$nodes$contractLines$depotPremiums>
        depotPremiums,
  ) {
    final res = depotPremiums.map((dp) {
      final deps = depotPremiumsList!.firstWhere(
        (x) =>
            x.contractLineId == dp.contractLineId &&
            x.depotPremiumId == dp.depotPremiumId,
        orElse: () => DepotPremium(
          depotPremiumId: dp.depotPremiumId,
          contractLineId: dp.contractLineId!,
          depot: Depot.any(),
        ),
      );

      return DepotPremium(
        depotPremiumId: dp.depotPremiumId,
        contractLineId: dp.contractLineId!,
        depot: (dp.depotNo == Depot.any().code)
            ? Depot.any()
            : Depot(dp.depotNo!, dp.depot?.shortName ?? dp.depotNo!),
        rate: ValueUomPair(
          value: dp.rateUomValue ?? 0,
          uom: dp.rateUomId != null ? Uom.values[dp.rateUomId!] : Uom.mt,
          isRate: true,
        ),
        currentPrice: deps.currentPrice,
        resultantPrice: deps.resultantPrice,
        tags: deps.tags,
      );
    }).toList();
    return res;
  }

  Future<List<DepotPremium>> getTagsAndPrices(
    String partyAccountNo,
  ) async {
    final depotPremiums = <DepotPremium>[];
    final results = await getTagsPricesData(partyAccountNo);
    results.data!.adminPricingData.map(
      (e) {
        depotPremiums.add(
          DepotPremium(
            depotPremiumId: e.contractDepotPremiumId,
            contractLineId: e.contractLineId,
            depot: Depot.empty(),
            currentPrice: ValueUomPair(
              isRate: true,
              value: e.prices?.currentPrice.value ?? 0.0,
              uom: Uom.values[
                  e.prices?.currentPrice.id ?? EmrOneCoreUomConstants.mt.uomId],
            ),
            tags: mapTags(e.tags),
          ),
        );
      },
    );
    return depotPremiums;
  }

  Future<GraphQLResponse<Query$GetAdminPricingData>> getTagsPricesData(
    String partyAccountNo,
  ) {
    return documentNodeQueryGetAdminPricingData.execute(
      client,
      Query$GetAdminPricingData.fromJson,
      variables: Variables$Query$GetAdminPricingData(
        partyAccountNo: partyAccountNo,
      ),
      url: tradeRUrl,
    );
  }

  Future<List<Depot>> getDepotsByTerritory(String territoryCode) async {
    final response = await documentNodeQueryDepotsByTerritory.execute(
      client,
      Query$DepotsByTerritory.fromJson,
      variables: Variables$Query$DepotsByTerritory(
        territoryCode: territoryCode,
      ),
      url: tradeRUrl,
    );

    if (response.hasErrors()) {
      throw Exception(
        'Failed to fetch depots: ${response.errors?.first.message}',
      );
    }

    if (response.data == null) {
      return [];
    }

    return [
      ...response.data!.depotsByTerritoryCode.map(
        (depot) => Depot(
          depot.depotNo,
          depot.name,
          cmpCode: depot.cmpCode,
          yardCode: depot.yardCode,
        ),
      ),
    ];
  }
}

Grade _mapGrade(
  Query$GetContracts$contracts$nodes$contractLines$msGrade? grade,
) =>
    Grade(grade?.gradeCode ?? '', grade?.comment ?? '');

ContractBookType _mapContractBookType(int contractTypeId) {
  if (contractTypeId == 1) {
    return ContractBookType.purchase;
  }

  return ContractBookType.sales;
}

List<ContractLineLocation> _mapLineLocations(
  List<Query$GetContracts$contracts$nodes$contractLines$lineLocations>
      lineLocations,
) =>
    lineLocations
        .map(
          (dp) => ContractLineLocation(
            locationId: dp.locationId,
            fullyCharged: dp.fullyCharged,
            haulageCharge: ValueUomPair(
              value: dp.haulageChargeUomValue == null
                  ? dp.collectedPriceDeltaUomValue ?? 0
                  : dp.haulageChargeUomValue ?? 0,
              uom: dp.haulageChargeUomId == null
                  ? Uom.values[dp.collectedPriceDeltaUomId!]
                  : Uom.values[dp.haulageChargeUomId!],
              isRate: true,
            ),
            locationCode: dp.location?.locationCode ?? '',
            description: dp.location?.description ?? '',
          ),
        )
        .toList();

CrmDeliveryMethod _mapDeliveryType(int? contractLineDeliveryMethodId) {
  switch (contractLineDeliveryMethodId) {
    case 1:
      return CrmDeliveryMethod.delivered;
    case 2:
      return CrmDeliveryMethod.collected;
    case 3:
      return CrmDeliveryMethod.collectedLessCharge;
    case 4:
      return CrmDeliveryMethod.collectedFullyCharged;
    case 5:
      return CrmDeliveryMethod.both;
    default:
      throw Exception(
        'Unexpected API delivery type '
        '${contractLineDeliveryMethodId ?? 'null'}',
      );
  }
}

ContractTypeEnum _mapContractTypeEnum(Query$GetContracts$contracts$nodes e) {
  if (e.contractRef!.contains('GPL')) {
    return ContractTypeEnum.gpl;
  } else if (e.isSpot == null && _checkContractLineStatusID(e.contractLines)) {
    return ContractTypeEnum.pm;
  } else if (e.isSpot!) {
    return ContractTypeEnum.spot;
  } else {
    return ContractTypeEnum.fixed;
  }
}

bool _checkContractLineStatusID(
  List<Query$GetContracts$contracts$nodes$contractLines>? contractLines,
) {
  if (contractLines == null || contractLines.isEmpty) {
    return false;
  }
  // Excluding contract lines with Status ID 3 (Allowed Grade)
  // to ensure the Price Matrix is categorized correctly.
  return contractLines.every((line) => line.contractLineStatusId != 3);
}

List<GplDisplayGrades> _combineDeliveryMethods(List<GplDisplayGrades> lines) {
  final mappedLines = <GplDisplayGrades>[];

  for (final line in lines) {
    if (mappedLines
        .where(
          (element) =>
              element.grade == line.grade && element.yardCode == line.yardCode,
        )
        .isEmpty) {
      mappedLines.add(line);
    } else {
      if (line.colPrice != 0) {
        mappedLines
            .firstWhere(
              (element) =>
                  element.grade == line.grade &&
                  element.yardCode == line.yardCode,
            )
            .colPrice = line.colPrice;
      }
      if (line.delPrice != 0) {
        mappedLines
            .firstWhere(
              (element) =>
                  element.grade == line.grade &&
                  element.yardCode == line.yardCode,
            )
            .delPrice = line.delPrice;
      }
    }
  }

  return mappedLines;
}
