import 'package:collection/collection.dart';
import 'package:emr_one_core/config/app_config.dart';
import 'package:emr_one_core/controllers/settings_controller.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_crm/emr_one_crm_constants.dart';
import 'package:emr_one_crm/extensions/extensions.dart';
import 'package:emr_one_crm/graphql/trader/queries/temp/get_publications.graphql.dart';
import 'package:emr_one_crm/models/haulage_price.dart';
import 'package:emr_one_crm/models/models.dart';
import 'package:emr_one_crm/models/publication_yard_price.dart';
import 'package:emr_one_crm/screens/contract_wizard/cw_error.dart';
import 'package:emr_one_crm/screens/contract_wizard/party_new_spot_view_model.dart';
import 'package:emr_one_crm/services/haulage_price_matrix_service.dart';
import 'package:emr_one_crm/services/services.dart';
import 'package:emr_one_crm/temp/arising_point_provider.dart';
import 'package:emr_one_crm/temp/contracts_provider.dart';
import 'package:emr_one_crm/temp/mock_data.dart';
import 'package:emr_one_wizard/emr_one_wizard.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class ContractController extends EOWizardController {
  ContractController(
    this.settingsController,
    this.partyAccountNo,
    this.client,
    this.contractsProvider,
    this.contractHeaderId,
    List<EOWizardStep> steps,
    this.appConfig, {
    required this.isSpot,
    required this.isClone,
    required this.isEditing,
    required this.userInfoService,
    required this.haulagePriceMatrixService,
  }) : super(
         steps,
         initialStep: contractHeaderId != null && appConfig.isWeb
             ? kInitModel
             : kPathSelect,
       );

  static const kPathSelect = 0;
  static const kOverview = 0;
  static const kInitModel = 1;
  static const kContractDetails = 2;

  static const kSummary = 3;
  static const kProcessing = 4;
  static const kCompleted = 5;

  static const kDeliveryMethod = 3;
  static const kGradeSelect = 4;
  static const kSummaryMobile = 5;
  static const kProcessingMobile = 6;
  static const kCompletedMobile = 7;

  final SettingsController settingsController;
  final ContractsProvider contractsProvider;
  final String partyAccountNo;
  final BaseClient client;
  final bool isSpot;
  final AppConfig appConfig;
  final bool isEditing;
  final bool isClone;
  final UserInfoService userInfoService;
  final gplSelectTextController = TextEditingController();
  final ValueNotifier<bool> isContractCreationFailed = ValueNotifier(false);
  final Map<String, List<Depot>> depotsByTerritory = {};
  final HaulagePriceMatrixService haulagePriceMatrixService;
  Uom? lastSelectedUom;

  ValueNotifier<bool> isGplCreate = ValueNotifier<bool>(false);
  bool get isFixed => !isSpot;

  List<OrderBook>? _orderBooks;
  List<Publication<GplGrade>>? _publications;
  Publication<GplGrade>? selectedPublication;
  List<Grade> grades = [];
  PartyNewContractViewModel? model;
  int? contractHeaderId;
  GlobalKey? gplIssueReferenceKey;
  GlobalKey? orderBookKey;
  GlobalKey? depotKey;
  GlobalKey? freightRateskey;
  GlobalKey? arisignPointKey;
  GlobalKey? dateSelectKey;
  GlobalKey? deliveryMethodKey;
  GlobalKey? haulageChargeKey;
  GlobalKey? collectedDeltaKey;
  GlobalKey? estimatedHaulageCost;
  GlobalKey? loadsKey;
  GlobalKey? gradesKey;
  GlobalKey? addGradesKey;
  GlobalKey? gradesInvalidKey;
  GlobalKey? pricingInvalidKey;
  GlobalKey? internalLMEKey;

  ContractResult? contractResult;

  List<GlobalKey> invalidKeys = [];

  List<Publication<GplGrade>> get publications => _publications ?? [];
  String get currencyCode =>
      model!.currencyCode ??
      CrmCurrencyConstants.getCurrencyForTerritory(
        settingsController.territory,
      ).code;

  String? _gradeQuery;
  String? get gradeQuery => _gradeQuery;

  set gradeQuery(String? value) {
    _gradeQuery = value;
    notifyListeners();
  }

  Future<void> scrollToKey(GlobalKey key) async {
    if (kIsWeb) {
      return;
    }
    await Future<void>.delayed(const Duration(milliseconds: 250));
    await Scrollable.ensureVisible(
      key.currentContext!,
      curve: Curves.fastOutSlowIn,
      duration: kThemeAnimationDuration,
    );
  }

  void addInvalidKey(GlobalKey key) => invalidKeys.add(key);

  void resetInvalidKeys() => invalidKeys.clear();

  void addDeliveryMethod(CrmDeliveryMethod method) {
    model!.deliveryMethods.add(method);
    notifyListeners();
  }

  void removeDeliveryMethod(CrmDeliveryMethod method) {
    model!.deliveryMethods.remove(method);
    if (method == CrmDeliveryMethod.collected) {
      model!.haulageAdjustment = null;
    }
    notifyListeners();
  }

  bool hasDeliveryMethod(CrmDeliveryMethod method) =>
      model?.deliveryMethods.contains(method) ?? false;

  bool hasAnyDeliveryMethod() => model?.deliveryMethods.isNotEmpty ?? false;

  bool hasValidHaulageCharge() {
    if (model!.isFullyCharged || (model!.haulageAdjustment?.value ?? 0) > 0) {
      return true;
    }
    return false;
  }

  void setFullyCharged({required bool fullyCharged}) {
    model!.isFullyCharged = fullyCharged;

    notifyListeners();
  }

  void setLessCharged({required bool lessCharged}) {
    model!.isLessCharged = lessCharged;

    notifyListeners();
  }

  void setDisplayCollectedDeltaOnRemittance({required bool value}) {
    model!.displayCollectedDeltaOnRemittance = value;

    notifyListeners();
  }

  void setOrderBook(OrderBook orderBook) {
    model!.orderBook = orderBook;
    if (settingsController.territory.isEuTerritory) {
      setEndDate(model!.startDate.add(const Duration(days: 28)));
    }
    notifyListeners();
  }

  void clearOrderBook() {
    model!.orderBook = null;
    notifyListeners();
  }

  Future<void> complete(
    ContractService contractService,
    BuildContext context,
  ) async {
    nextStep();

    try {
      contractResult = (model!.isSpot)
          ? (model!.contract == null || isClone)
                ? await contractService.createSpotContract(model!)
                : await contractService.modifySpotContract(model!)
          : (model!.contract == null || isClone)
          ? await contractService.createFixedContract(model!)
          : await contractService.modifyFixedContract(model!);

      if (contractResult!.code == ContractResultCode.ok) {
        trackContractSuccess(contractResult!.contractRef!);
        isContractCreationFailed.value = true;
      } else {
        isContractCreationFailed.value = false;
        trackContractFailure(contractResult!);
      }
    } catch (e) {
      contractResult = ContractResult(ContractResultCode.exception);
    }
    nextStep();
  }

  void applyPublicationGradesToModel(Publication<GplGrade> publication) =>
      model!.grades.clear();

  Future<PartyNewContractViewModel> createViewModel() async {
    await getPublications();
    await getDepots(territoryCode: settingsController.territory);
    if (contractHeaderId == null) {
      /// This needs to be delayed otherwise the CWInitModel widget
      /// which relies on this future, triggers an error because it tries to
      /// go to the next page once the future completes. The error is
      ///  - FlutterError (setState() or markNeedsBuild() called during build.
      model = PartyNewContractViewModel(
        partyAccountNo,
        isSpot: isSpot,
        orderBook: settingsController.defaultOrderBook,
      );

      if (settingsController.defaultOrderBook != null) {
        await getWizardDataForOrderBook();
      }

      return Future.delayed(const Duration(seconds: 1), () {
        return model!;
      });
    }

    final contract = await contractsProvider.getContract(
      contractHeaderId!,
      partyAccountNo,
    );
    final userOrderBooks = await getOrderBooks();

    await loadDataForOrderBook(contract.orderBookTypeId, settingsController);

    final arisingPointProvider = ArisingPointProvider(
      client,
      partyAccountNo,
      Uri.parse(appConfig.tradeRUrl),
    );
    final result = await arisingPointProvider.getArisingPoints(partyAccountNo);
    final arisingPoints = result.data!.partyArisingPoints!.nodes!
        .map(
          (e) => ArisingPoint(
            e.locationId,
            e.locationAliasDescription!,
            e.locationAliasCode!,
          ),
        )
        .toList();

    model = PartyNewContractViewModel.fromContract(
      contract,
      partyAccountNo,
      arisingPoints,
      userOrderBooks,
      grades,
      isEditing: isEditing,
      isCloning: isClone,
    );

    // Pre-select all grades on the contract when we're editing.
    if (isEditing) {
      initSelectedGrades(model!.gplGrades.map((e) => e.gradeCode).toList());
    }

    notifyListeners();
    return model!;
  }

  Future<void> getWizardDataForOrderBook() async {
    final res = await contractsProvider.getSpotWizardDataForOrderBook(
      settingsController.defaultOrderBook!.id,
      settingsController.defaultOrderBook!.gradeType,
      settingsController,
    );

    if (!res.hasErrors() &&
        res.data?.contractOrderBookDefaults.contract?.contractTypeID != null &&
        res.data?.contractOrderBookDefaults.contract?.currencyCode != null &&
        res.data?.contractOrderBookDefaults.contract?.priceTypeID != null) {
      grades = res.data!.gradesForUserByGradeType
          .map((e) => Grade(e.gradeCode, e.comment, e.gradeGroup, e.gradeType))
          .toList();
      if (settingsController.defaultOrderBook!.gradeType == 'NONFER') {
        final resNonFsp = await contractsProvider.getSpotWizardDataForOrderBook(
          settingsController.defaultOrderBook!.id,
          'NONFSP',
          settingsController,
        );
        if (!resNonFsp.hasErrors()) {
          final nonfspGrades = resNonFsp.data!.gradesForUserByGradeType
              .map(
                (e) => Grade(e.gradeCode, e.comment, e.gradeGroup, e.gradeType),
              )
              .toList();
          grades.addAll(nonfspGrades);
        }
      }
      model!.contractType = MockData.getContractTypes().firstWhere(
        (x) =>
            x.id ==
            res.data?.contractOrderBookDefaults.contract?.contractTypeID,
      );
      model!.currencyCode =
          res.data?.contractOrderBookDefaults.contract?.currencyCode;
      if (model!.isSpot || !settingsController.territory.isEuTerritory) {
        model!.priceType = MockData.getPriceTypes().firstWhere(
          (element) =>
              element.id ==
              res.data?.contractOrderBookDefaults.contract?.priceTypeID,
        );
      }

      model!.defaultUom =
          res.data?.contractOrderBookDefaults.contract!.targetTonnageUomID ?? 0;
    }
  }

  Future<PartyNewContractViewModel> createViewModelGpl() async {
    await getPublications();
    await getOrderBooks();
    await getDepots(territoryCode: settingsController.territory);

    if (_publications!.isEmpty) {
      throw CWError(CWErrorType.noPublications);
    }
    if (settingsController.defaultOrderBook == null) {
      throw CWError(CWErrorType.noOrderBooks);
    }
    final res = await loadDataForOrderBook(
      settingsController.defaultOrderBook!.id,
      settingsController,
    );
    return Future.delayed(const Duration(seconds: 1), () {
      model = PartyNewContractViewModel(
        partyAccountNo,
        isSpot: isSpot,
        orderBook: settingsController.defaultOrderBook,
      );
      model!.currencyCode = res!.currencyCode;

      return model!;
    });
  }

  void addedGrade() => notifyListeners();

  Future<OrderBookHeaderDefaults?> loadDataForOrderBook(
    int id,
    SettingsController settingsController,
  ) async {
    final orderBook = _orderBooks!.singleWhere((ob) => ob.id == id);

    final res = await contractsProvider.getSpotWizardDataForOrderBook(
      id,
      orderBook.gradeType,
      settingsController,
    );

    if (res.hasErrors()) {
      return null;
    }

    grades = res.data!.gradesForUserByGradeType
        .map((e) => Grade(e.gradeCode, e.comment, e.gradeGroup, e.gradeType))
        .toList();

    if (orderBook.gradeType == 'NONFER') {
      final resNonFsp = await contractsProvider.getSpotWizardDataForOrderBook(
        id,
        'NONFSP',
        settingsController,
      );
      if (!resNonFsp.hasErrors()) {
        final nonfspGrades = resNonFsp.data!.gradesForUserByGradeType
            .map(
              (e) => Grade(e.gradeCode, e.comment, e.gradeGroup, e.gradeType),
            )
            .toList();
        grades.addAll(nonfspGrades);
      }
    }
    if (model != null) {
      model!.currencyCode =
          res.data!.contractOrderBookDefaults.contract!.currencyCode;
    }

    notifyListeners();

    if (res.data?.contractOrderBookDefaults.contract?.contractTypeID != null &&
        res.data?.contractOrderBookDefaults.contract?.currencyCode != null &&
        res.data?.contractOrderBookDefaults.contract?.priceTypeID != null) {
      return OrderBookHeaderDefaults(
        res.data!.contractOrderBookDefaults.contract!.contractTypeID!,
        res.data!.contractOrderBookDefaults.contract!.currencyCode!,
        res.data!.contractOrderBookDefaults.contract!.priceTypeID!,
        res.data!.contractOrderBookDefaults.contract!.targetTonnageUomID ?? 0,
      );
    }

    return null;
  }

  Future<List<OrderBook>> getOrderBooks() async {
    // use a cached copy of the order books if we have them.
    if (_orderBooks != null) {
      return _orderBooks!;
    }

    // Otherwise load all pages of orderbooks.
    final orderBooks = <OrderBook>[];

    final res = contractsProvider.getOrderBooks(userInfoService);

    orderBooks.addAll(res.map((e) => OrderBook(e.id, e.name, e.gradeType)));
    _orderBooks = orderBooks;

    return orderBooks;
  }

  Future<List<Publication<GplGrade>>> getPublications() async {
    final response = await contractsProvider.getPublications(
      partyAccountNo,
      settingsController.territory,
    );

    if (response.errors?.isNotEmpty ?? false) {
      throw Exception('Gateway returned an error');
    }

    var temp = <Publication<GplGrade>>[];
    temp = response.data!.gplPublicationData
        .map(
          (e) => Publication(
            id: e.id,
            issueDate: e.issueDate,
            publicationName: e.name,
            grades: e.grades.map(mapPublicationToGplGrade).toList(),
            // All grades will have the same list of yards, so we use the first.
            yards: e.grades.first.yardPrices
                .map(
                  (yp) => Yard(
                    yardCode: yp.yard.yardCode,
                    name: yp.yard.yardName,
                    shortName: yp.yard.yardShortName,
                  ),
                )
                .toList(),
            depots: e.grades.first.yardPrices
                .map(
                  (yp) => Depot(
                    yp.depot.depotNo,
                    yp.depot.depotName,
                    yardCode: yp.yard.yardCode,
                  ),
                )
                .toList(),
          ),
        )
        .toList();
    temp.sort((a, b) => a.publicationName.compareTo(b.publicationName));
    _publications = temp;
    return temp;
  }

  GplGrade mapPublicationToGplGrade(
    Query$gplPublicationData$gplPublicationData$grades e,
  ) {
    final finalPrice = getFinalPriceForGraphQLGrade(e);

    final yardPrices = e.yardPrices
        .map(
          (yp) => PublicationYardPrice(
            yard: Yard(
              yardCode: yp.yard.yardCode,
              name: yp.yard.yardName,
              shortName: yp.yard.yardShortName,
            ),
            depot: Depot(
              yp.depot.depotNo,
              yp.depot.depotName,
              yardCode: yp.yard.yardCode,
            ),
            finalPrice: ValueUomPair(
              isRate: true,
              uom: Uom.values[yp.finalPrice.id],
              value: yp.finalPrice.value,
            ),
          ),
        )
        .toList();

    return GplGrade(
      e.gradeCode,
      e.comment,
      e.gradeGroup,
      e.gradeType,
      finalPrice,
      finalPrice, // Previously deliveredDelta
      finalPrice, // Previously collectedDelta
      ValueUomPair(),
      e.comment,
      0,
      yardPrices,
      '',
    );
  }

  ValueUomPair getFinalPriceForGraphQLGrade(
    Query$gplPublicationData$gplPublicationData$grades e,
  ) {
    if (selectedPublication == null) {
      return ValueUomPair(
        isRate: true,
        uom: Uom.values[e.basePrice.id],
        value: e.basePrice.value,
      );
    }
    final selectedDepotCode = (selectedPublication?.depots.isNotEmpty ?? false)
        ? selectedPublication!.depots.first.code
        : null;

    final selectedYardPrice = (model!.selectedDepots.isNotEmpty)
        ? e.yardPrices.firstWhereOrNull(
            (y) => y.depot.depotNo == selectedDepotCode,
          )
        : null;

    return ValueUomPair(
      isRate: true,
      uom: Uom.values[selectedYardPrice?.finalPrice.id ?? e.basePrice.id],
      value: selectedYardPrice?.finalPrice.value ?? e.basePrice.value,
    );
  }

  void trackContractFailure(ContractResult contractResult) {
    EmrLogger.event(
      EmrOneCrmTelemetry.kCreateContract,
      type: EmrOneCoreTelemetry.kTypeResult,
      params: {
        'isSpot': isSpot.toString(),
        'party': partyAccountNo,
        EmrOneCoreTelemetry.kSuccessParamName: 'false',
        'apiErrors': contractResult.message,
      },
    );
  }

  void trackContractSuccess(String contractRef) {
    EmrLogger.event(
      EmrOneCrmTelemetry.kCreateContract,
      type: EmrOneCoreTelemetry.kTypeResult,
      params: {
        'party': partyAccountNo,
        'isSpot': isSpot.toString(),
        'contractRef': contractRef,
        EmrOneCoreTelemetry.kSuccessParamName: 'true',
      },
    );
  }

  bool isGradeSelected(String gradeCode, String brokerReference) =>
      model!.selectedGrades.contains('${gradeCode}_$brokerReference');

  void setGradeSelected(
    String gradeCode,
    String brokerReference, {
    bool selected = true,
  }) {
    if (model!.selectedGrades.contains('${gradeCode}_$brokerReference') &&
        selected) {
      return;
    }
    model!.regenerateGrades = true;
    if (selected) {
      model!.selectedGrades.add('${gradeCode}_$brokerReference');
    } else {
      model!.selectedGrades.remove('${gradeCode}_$brokerReference');
    }
    notifyListeners();
  }

  void setGradesSelected(List<String> gradeCodes, {bool selected = true}) {
    selected
        ? model!.selectedGrades.addAll(gradeCodes)
        : model!.selectedGrades.removeAll(gradeCodes);

    notifyListeners();
  }

  void initSelectedGrades(List<String> gradeCodes) {
    model!.selectedGrades.clear();

    model!.selectedGrades.addAll(gradeCodes);
    model!.regenerateGrades = true;
    notifyListeners();
  }

  bool allGradesSelected({List<String>? gradeCodes}) {
    if (gradeCodes == null) {
      return model!.selectedGrades.containsAll(
        model?.gplGrades
                .map((e) => '${e.gradeCode}_${e.brokerReference}')
                .toList() ??
            [],
      );
    }
    return model!.selectedGrades.containsAll(gradeCodes);
  }

  void setAllGradesSelected() {
    model!.selectedGrades.clear();

    model!.selectedGrades.addAll(
      model?.gplGrades
              .map((e) => '${e.gradeCode}_${e.brokerReference}')
              .toList() ??
          [],
    );

    notifyListeners();
  }

  void setAllGradesDeselected() {
    model!.selectedGrades.clear();

    notifyListeners();
  }

  bool anyGradesSelected() => model!.selectedGrades.isNotEmpty;

  void setArisingPoint(ArisingPoint arisingPoint) {
    model!.selectedArisingPoints
      ..clear()
      ..add(arisingPoint);
    notifyListeners();
  }

  bool isArisingPointSelected(ArisingPoint arisingPoint) {
    return model!.selectedArisingPoints.any(
      (element) => element.aliasCode == arisingPoint.aliasCode,
    );
  }

  bool isAnyArisingSelected() {
    return model!.selectedArisingPoints.any(
      (element) => element.aliasCode == 'ANY',
    );
  }

  void addArisingPoint(ArisingPoint arisingPoint) {
    model!.selectedArisingPoints.add(arisingPoint);
    if (model!.selectedArisingPoints.any(
          (element) => element.aliasCode == 'ANY',
        ) &&
        arisingPoint.aliasCode != 'ANY') {
      model!.selectedArisingPoints.removeWhere(
        (element) => element.aliasCode == 'ANY',
      );
    }
  }

  void removeArisingPoint(ArisingPoint arisingPoint) {
    model!.selectedArisingPoints.removeWhere(
      (element) => element.aliasCode == arisingPoint.aliasCode,
    );
    if (model!.selectedArisingPoints.isEmpty) {
      model!.selectedArisingPoints = [];
    }
  }

  bool isAnyDepotSelected() {
    return model!.selectedDepots.any((element) => element.code == 'ANY');
  }

  void deselectAnyDepot() {
    if (model!.selectedDepots.any((element) => element.code != 'ANY')) {
      model!.selectedDepots.removeWhere((element) => element.code == 'ANY');
    }
  }

  bool isDepotSelected(Depot depot) {
    return model!.selectedDepots.any((element) => element.code == depot.code);
  }

  void addDepot(Depot depot) {
    model!.selectedDepots.add(depot);
    updatePricesForSelectedPublication();
    if (model!.selectedDepots.any((element) => element.name == 'ANY')) {
      model!.selectedDepots.removeWhere((element) => element.name == 'ANY');
    }
  }

  void removeDepot(Depot depot) {
    model!.selectedDepots.removeWhere((element) => element.code == depot.code);
    if (model!.selectedDepots.isEmpty) {
      model!.selectedDepots = [Depot.any()];
    }
  }

  void deselectAnyArising() {
    if (model!.selectedArisingPoints.any(
      (element) => element.aliasCode != 'ANY',
    )) {
      model!.selectedArisingPoints.removeWhere(
        (element) => element.aliasCode == 'ANY',
      );
    }
  }

  void selectPublication(Publication<GplGrade> publication) {
    selectedPublication = publication;
    gplSelectTextController.text = publication.publicationName;
  }

  void selectDepot(Depot depot) {
    model!.depot = depot;
    notifyListeners();
  }

  Future<List<PricingList>> initAddPricingList() async {
    if (model!.regenerateGrades) {
      model!.pricingList.clear();
      model!.pricingUpdateModel.clear();
      model!.regenerateGrades = false;
    }
    if (model!.pricingList.isEmpty) {
      for (final grade in model!.selectedGrades) {
        final gplGrade = model!.gplGrades.firstWhere(
          (element) =>
              '${element.gradeCode}_${element.brokerReference}' == grade,
        );

        final twpl = gplGrade.targetWeightPerLoad;

        final targetWeightPerLoad = ValueUomPair(
          isRate: twpl?.isRate ?? false,
          value: twpl?.value ?? 0,
          uom: twpl?.uom ?? Uom.mt,
        );

        final weight = ValueUomPair(
          value: gplGrade.contractWeight.value,
          isRate: gplGrade.contractWeight.isRate,
          uom: gplGrade.contractWeight.uom,
        );
        final collectedPrice = ValueUomPair(
          value: gplGrade.collectedRate.value,
          isRate: gplGrade.collectedRate.isRate,
          uom: gplGrade.collectedRate.uom,
        );
        final deliveredPrice = ValueUomPair(
          value: gplGrade.deliveryRate.value,
          isRate: gplGrade.deliveryRate.isRate,
          uom: gplGrade.deliveryRate.uom,
        );

        final pricingElement = PricingList(
          grade: gplGrade,
          targetWeightPerLoad: targetWeightPerLoad,
          collectedPrice: collectedPrice,
          deliveredPrice: deliveredPrice,
          weight: weight,
          depots: model?.selectedDepots,
          arisingPoints: model?.selectedArisingPoints,
          haulageCharge: model!.haulageAdjustment,
          loadCount: model!.isSpot
              ? model!.targetLoads
              : gplGrade.targetLoads ?? 0,
        );

        model!.pricingUpdateModel.add(PricingList.copy(pricingElement));
      }

      model!.pricingList = List.from(
        model!.pricingUpdateModel.map(PricingList.copy),
      );
    } else {
      model!.pricingUpdateModel
        ..clear()
        ..addAll(List.from(model!.pricingList.map(PricingList.copy)));
    }

    return model!.pricingList;
  }

  void setStartDate(DateTime startDate) {
    model!.startDate = startDate;
    notifyListeners();
  }

  void setEndDate(DateTime endDate) {
    model!.endDate = endDate;
    notifyListeners();
  }

  void setCTOF(double? ctof) {
    model!.cToFAdjustment = ctof;
    notifyListeners();
  }

  @override
  String? getCustomStepNumber() {
    if (getStepNumber == kOverview || getStepNumber == kPathSelect) return '1';
    if (getStepNumber == kContractDetails && contractHeaderId == null) {
      return '2';
    }
    if (getStepNumber == kContractDetails && contractHeaderId != null) {
      return '1';
    }
    if (getStepNumber == kSummary && contractHeaderId == null) return '3';
    if (getStepNumber == kSummary && contractHeaderId != null) return '2';
    if (getStepNumber == kCompleted && contractHeaderId != null) {
      return '4';
    }
    if (getStepNumber == kCompleted && contractHeaderId == null) {
      return '3';
    }

    return '-';
  }

  @override
  String? getCustomStepNumberHeading() {
    return 'STEP ${getCustomStepNumber()!}';
  }

  /// The spot & fixed wizards makes use of collected and delivered methods with
  /// additional variables to track haulage. For the summary we need to know
  /// the actual delivery methods derived from the user selection.
  Set<CrmDeliveryMethod> get derivedDeliveryMethods {
    final actualDeliveryMethods = <CrmDeliveryMethod>{};
    if ((model?.deliveryMethods.contains(CrmDeliveryMethod.collected) ??
            false) &&
        (model?.deliveryMethods.contains(CrmDeliveryMethod.delivered) ??
            false)) {
      actualDeliveryMethods.add(CrmDeliveryMethod.both);
      return actualDeliveryMethods;
    }

    if (model?.deliveryMethods.contains(CrmDeliveryMethod.delivered) ?? false) {
      actualDeliveryMethods.add(CrmDeliveryMethod.delivered);
    }

    if (model?.deliveryMethods.contains(CrmDeliveryMethod.collected) ?? false) {
      actualDeliveryMethods.add(CrmDeliveryMethod.collected);
    }

    return actualDeliveryMethods;
  }

  ValueUomPair getContractWeight(GplGrade gplGrade) {
    final element = model!.pricingList.where(
      (element) => element.grade.gradeCode == gplGrade.gradeCode,
    );
    if (element.isNotEmpty) {
      return ValueUomPair(
        value: element.first.grade.contractWeight.value,
        uom: element.first.grade.contractWeight.uom == Uom.unknown
            ? (lastSelectedUom ?? Uom.unknown)
            : element.first.grade.contractWeight.uom,
        isRate: element.first.grade.contractWeight.isRate,
      );
    } else {
      return ValueUomPair();
    }
  }

  void updateContractWeight(GplGrade gplGrade, ValueUomPair value) {
    model!.pricingUpdateModel
            .where((element) => element.grade.gradeCode == gplGrade.gradeCode)
            .first
            .grade
            .contractWeight =
        value;
    notifyListeners();
  }

  ValueUomPair getDeliveredPrice(GplGrade gplGrade) {
    final element = model!.pricingList.where(
      (element) =>
          element.grade.gradeCode == gplGrade.gradeCode &&
          element.grade.brokerReference == gplGrade.brokerReference,
    );
    if (element.isNotEmpty) {
      return getValueUomPair(element.first.deliveredPrice);
    } else {
      return ValueUomPair();
    }
  }

  void updateDeliveredPrice(GplGrade gplGrade, ValueUomPair value) {
    model!.pricingUpdateModel
            .where(
              (element) =>
                  element.grade.gradeCode == gplGrade.gradeCode &&
                  element.grade.brokerReference == gplGrade.brokerReference,
            )
            .first
            .deliveredPrice =
        value;
    notifyListeners();
  }

  GradePricePair getCollectedPrice(GplGrade gplGrade) {
    final element = model!.pricingList.where(
      (element) =>
          element.grade.gradeCode == gplGrade.gradeCode &&
          element.grade.brokerReference == gplGrade.brokerReference,
    );
    if (element.isNotEmpty) {
      final deliveredPrice = element.first.collectedPrice;
      final collectedDelta = model!.collectedDelta;

      final collectedValue =
          (deliveredPrice.value) - (collectedDelta?.value ?? 0);

      final collectedPrice = ValueUomPair(
        value: collectedValue,
        uom: deliveredPrice.uom,
        isRate: deliveredPrice.isRate,
      );

      return GradePricePair(
        deliveredPrice: deliveredPrice,
        collectedPrice: collectedPrice,
      );
    } else {
      return GradePricePair(
        deliveredPrice: ValueUomPair(),
        collectedPrice: ValueUomPair(),
      );
    }
  }

  void updateCollectedPrice(GplGrade gplGrade, ValueUomPair value) {
    model!.pricingUpdateModel
            .where(
              (element) =>
                  element.grade.gradeCode == gplGrade.gradeCode &&
                  element.grade.brokerReference == gplGrade.brokerReference,
            )
            .first
            .collectedPrice =
        value;
  }

  void updateMaterialDescription(GplGrade gplGrade, String value) {
    //TODO: REMOVE this duplicate.
    model!.gplGrades
            .where(
              (element) =>
                  element.gradeCode == gplGrade.gradeCode &&
                  element.brokerReference == gplGrade.brokerReference,
            )
            .first
            .description =
        value;
    model!.pricingUpdateModel
            .where(
              (element) =>
                  element.grade.gradeCode == gplGrade.gradeCode &&
                  element.grade.brokerReference == gplGrade.brokerReference,
            )
            .first
            .grade
            .materialDescription =
        value;
  }

  ValueUomPair getTargetWeightPerLoad(GplGrade gplGrade) {
    final element = model!.pricingList.where(
      (element) =>
          element.grade.gradeCode == gplGrade.gradeCode &&
          element.grade.brokerReference == gplGrade.brokerReference,
    );
    if (element.isNotEmpty) {
      return getValueUomPair(element.first.targetWeightPerLoad);
    } else {
      return ValueUomPair();
    }
  }

  UomValue? getHaulageCharge(GplGrade gplGrade) {
    final element = model!.pricingList.where(
      (element) =>
          element.grade.gradeCode == gplGrade.gradeCode &&
          element.grade.brokerReference == gplGrade.brokerReference,
    );
    if (element.isNotEmpty) {
      return element.first.haulageCharge;
    } else {
      return null;
    }
  }

  String getLoadCount(GplGrade gplGrade) {
    final twpl = getTargetWeightPerLoad(gplGrade).value;
    if (twpl == 0.0) {
      return '';
    }
    return (getContractWeight(gplGrade).value / twpl).round().toString();
  }

  void removeGradeFromList(GplGrade gplGrade) {
    model!.pricingUpdateModel.removeWhere(
      (element) =>
          element.grade.gradeCode == gplGrade.gradeCode &&
          element.grade.brokerReference == gplGrade.brokerReference,
    );

    if (!model!.pricingUpdateModel.any(
      (element) =>
          element.grade.gradeCode == gplGrade.gradeCode &&
          element.grade.brokerReference == gplGrade.brokerReference,
    )) {
      model!.selectedGrades.removeWhere(
        (element) =>
            element == '${gplGrade.gradeCode}_${gplGrade.brokerReference}',
      );
      notifyListeners();
    }
  }

  bool isGradePricingSelected(GplGrade gplGrade) {
    return model!.pricingUpdateModel.any(
      (element) =>
          element.grade.gradeCode == gplGrade.gradeCode &&
          element.grade.brokerReference == gplGrade.brokerReference,
    );
  }

  void save() {
    model!.pricingList
      ..clear()
      ..addAll(List.from(model!.pricingUpdateModel.map(PricingList.copy)));
    for (final g in model!.gplGrades) {
      final pricingGrade = model!.pricingList.where(
        (element) =>
            element.grade.gradeCode == g.gradeCode &&
            element.grade.brokerReference == g.brokerReference,
      );
      for (final pg in pricingGrade) {
        g.collectedRate = pg.collectedPrice;
        g.deliveryRate = pg.deliveredPrice;
        g.contractWeight = pg.weight;
        g.targetWeightPerLoad = pg.targetWeightPerLoad;
        g.targetLoads = pg.loadCount;
      }
    }
  }

  void revertBack() {
    if (model!.pricingList.isNotEmpty) {
      final missingGrades = model!.pricingList.where(
        (element) => !model!.selectedGrades.contains(
          '${element.grade.gradeCode}_${element.grade.brokerReference}',
        ),
      );
      for (final g in missingGrades) {
        model!.selectedGrades.add(
          '${g.grade.gradeCode}_${g.grade.brokerReference}',
        );
      }
      notifyListeners();
    }
  }

  ValueUomPair getValueUomPair(ValueUomPair uomValue) {
    return ValueUomPair(
      value: uomValue.value,
      uom: uomValue.uom,
      isRate: uomValue.isRate,
    );
  }

  void updateHaulageCharge(GplGrade gplGrade, UomValue? value) {
    model!.pricingUpdateModel
            .where(
              (element) =>
                  element.grade.gradeCode == gplGrade.gradeCode &&
                  element.grade.brokerReference == gplGrade.brokerReference,
            )
            .first
            .haulageCharge =
        value;
  }

  String getGradeDescription(String gradeCode) {
    return model!.gplGrades
        .where((element) => element.gradeCode == gradeCode)
        .first
        .description;
  }

  void setTargetLoads(GplGrade gplGrade, int loadCount) {
    model!.pricingUpdateModel
            .where(
              (element) =>
                  element.grade.gradeCode == gplGrade.gradeCode &&
                  element.grade.brokerReference == gplGrade.brokerReference,
            )
            .first
            .loadCount =
        loadCount;
  }

  List<Depot> getDepotsForPublication() {
    if (_publications == null ||
        _publications!.isEmpty ||
        selectedPublication == null) {
      return [];
    }

    final pub = _publications!.firstWhereOrNull(
      (p) => p.id == selectedPublication!.id,
    );
    return pub?.depots ?? [];
  }

  void updatePricesForSelectedPublication() {
    if (model!.selectedDepots.isEmpty ||
        (selectedPublication?.grades.isEmpty ?? true)) {
      return;
    }

    for (final g in selectedPublication!.grades) {
      final selectedYardPrice = g.yardPrices.firstWhereOrNull(
        (y) => y.depot.code == model!.selectedDepots.first.code,
      );

      final newPrice = ValueUomPair(
        isRate: true,
        uom:
            Uom.values[selectedYardPrice?.finalPrice.uom.index ??
                g.baseRate.uom.index],
        value: selectedYardPrice?.finalPrice.value ?? g.baseRate.value,
      );

      g.deliveryRate = newPrice;
      g.collectedRate = newPrice;
    }
    notifyListeners();
  }

  void setSelectedDepot(Depot depot) {
    if (model!.pricingList.isNotEmpty) {
      model!.regenerateGrades = true;
    }

    model!.selectedDepots = [depot];
    updatePricesForSelectedPublication();
    notifyListeners();
  }

  void setCurrencyCode(String? currencyCode) {
    model!.currencyCode = currencyCode;
    notifyListeners();
  }

  void setDeliveryPoint(ArisingPoint first) {
    model!.selectedDeliveryPoint = first;
    notifyListeners();
  }

  Future<List<Depot>> getDepots({
    required String territoryCode,
    String query = '',
  }) async {
    var depots = getDepotsForPublication();

    if (!isGplCreate.value || depots.isEmpty) {
      if (!depotsByTerritory.containsKey(territoryCode)) {
        final territoryDepots = await contractsProvider.getDepotsByTerritory(
          territoryCode,
        );

        depotsByTerritory[territoryCode] = territoryDepots;
      }

      depots = depotsByTerritory[territoryCode] ?? const [];
    }

    final queryLower = query.toLowerCase();

    return [
      ...depots.where(
        (d) =>
            !d.code.toLowerCase().contains('xxx') &&
            (d.name.toLowerCase().contains(queryLower) ||
                d.code.toLowerCase().contains(queryLower)),
      ),
    ];
  }

  Future<List<HaulagePrice>?> getHaulagePrice(
    String firstLocationCode,
    String secondLocationCode,
    String startDate,
    String endDate,
  ) async {
    final result = await haulagePriceMatrixService.getHaulagePrice(
      firstLocationCode,
      secondLocationCode,
      startDate,
      endDate,
    );
    return result;
  }

  bool get hasInvalidTargetWeight {
    if (!isFixed) return false;
    return model!.pricingUpdateModel.any(
      (e) => (e.grade.contractWeight.value) <= 0,
    );
  }
}
