import 'package:emr_one_core/controllers/controllers.dart';
import 'package:emr_one_elv_core/models/collection_operator.dart';
import 'package:emr_one_elv_quotes/pages/quick_quotes/controller/controller_imports.dart';
import 'package:emr_sharedtypes/enums/account_type_enum.dart';
import 'package:uuid/uuid.dart';

class QuickQuoteController extends ChangeNotifier {
  QuickQuoteController({
    required this.quoteService,
    required this.addressService,
    required this.accountService,
    required this.yardService,
    required this.vehicleService,
    required this.emailService,
    required this.catService,
    required this.activeTerritory,
    required this.collectionOperatorService,
    required this.elvConfigFlags,
    required this.allowEditBankDetails,
  }) {
    model = QuickQuotesState.initial(elvConfigFlags);
  }

  final QuoteService quoteService;
  final AddressService addressService;
  final ELVAccountService accountService;
  final YardService yardService;
  final VehicleService vehicleService;
  final EmailService emailService;
  final CatService catService;
  final ElvTerritory activeTerritory;
  final CollectionOperatorService collectionOperatorService;
  final List<String> elvConfigFlags;
  final bool allowEditBankDetails;

  late QuickQuotesState model;
  NewQuoteState baseState = NewQuoteState.initial();

  final _debounceableAccountSearch = Debounceable<dynamic>();
  final _debounceableVehicleSearch = Debounceable<dynamic>(
    debounceDuration: const Duration(seconds: 1),
  );
  final _debounceableAddCurbWeight = Debounceable<dynamic>(
    debounceDuration: const Duration(seconds: 1),
  );
  final _debounceableAddAccountDetails = Debounceable<dynamic>(
    debounceDuration: const Duration(seconds: 1),
  );
  bool vehicleSearchComplete = true;
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController secondNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController contactNumberController = TextEditingController();
  final TextEditingController mobileNumberController = TextEditingController();
  final TextEditingController yardSearchController = TextEditingController();
  final TextEditingController accountController = TextEditingController();
  final TextEditingController postCodeController = TextEditingController();
  final TextEditingController bankSortCodeController = TextEditingController();
  final TextEditingController bankAccountNumberController =
      TextEditingController();
  final TextEditingController notesController = TextEditingController();
  final TextEditingController collectionOperatorSearchController =
      TextEditingController();
  final TextEditingController collectionAddressController =
      TextEditingController();
  String quotingCustomerDetailAccountNumber = '';
  String? quotingCustomerDetailAccountLocationCode;
  bool get isCollectionQuote =>
      baseState.batchQuote?.acquisition == QuoteTypeEnum.collected;
  bool isPostCodeValid = false;

  final Map<LeadSource, String> leadSourceHashMap = <LeadSource, String>{};

  /// State control
  void resetQuickQuoteState({bool fullReset = true}) {
    if (fullReset) {
      baseState = NewQuoteState.initial();
      model.vehicleDescriptions.clear();
      model.postcode = null;
      model.selectedYard = null;
      model.vinSearchText = null;
    }
    model = QuickQuotesState.initial(elvConfigFlags);
    baseState.batchQuote = null;
    baseState.batchQuoteBundle = null;
    if (fullReset == false) {
      notifyListeners();
    }
  }

  final defaultConfiguration = VehicleConfiguration.defaultValues();

  void removeApiError() {
    baseState.apiError = false;
    baseState.apiErrorMessage = '';
    notifyListeners();
  }

  bool isAccountNo(String searchText) {
    final leading = searchText[0].toLowerCase();
    if ((leading == 'n' || leading == 'l') &&
        (int.tryParse(searchText.substring(1)) != null)) {
      return true;
    }
    return false;
  }

  void newAccountUpdateTitle(String titleItem) {
    baseState.newAccountState.title = titleItem;
    notifyListeners();
  }

  void newAccountUpdateFirstName(String s) {
    baseState.newAccountState.firstName = s;
    notifyListeners();
  }

  void newAccountUpdateLastName(String s) {
    baseState.newAccountState.lastName = s;
    notifyListeners();
  }

  void newAccountUpdateDateOfBirth(DateTime? value) {
    baseState.newAccountState.dateOfBirth = value;
    notifyListeners();
  }

  void newAccountUpdateEmail(String s) {
    baseState.newAccountState.email = s;
    notifyListeners();
  }

  void newAccountUpdateMobile(String s) {
    baseState.newAccountState.mobile = s;
    notifyListeners();
  }

  void newAccountUpdateAddress(Address address) {
    baseState.newAccountState.address = address;
    notifyListeners();
  }

  void newAccountUpdateCanEmail({required bool canEmail}) {
    baseState.newAccountState.canEmail = canEmail;
    notifyListeners();
  }

  void newAccountUpdateCanPost({required bool canPost}) {
    baseState.newAccountState.canPost = canPost;
    notifyListeners();
  }

  void newAccountUpdateCanSms({required bool canSms}) {
    baseState.newAccountState.canSms = canSms;
    notifyListeners();
  }

  void newAccountUpdateCanPhone({required bool canPhone}) {
    baseState.newAccountState.canPhone = canPhone;
    notifyListeners();
  }

  void newAccountUpdateYardCode(Yard yard) {
    baseState.newAccountState.yardCode = yard.yardCode;
    notifyListeners();
  }

  void newAccountUpdateIsManualAddress({required bool isManualAddress}) {
    baseState.newAccountState.isManualAddress = isManualAddress;
    notifyListeners();
  }

  void responseCheck<T>(ApiResponse<T> result) {
    if (!result.isOk) {
      baseState.apiError = true;
      baseState.apiErrorMessage = result.errorMessage;
      notifyListeners();
    }
  }

  /// Cloning a quote from an existing quote
  Future<void> cloneBundle({required String batchQuoteBundleId}) async {
    final response = await quoteService.cloneBundle(batchQuoteBundleId);
    if (response.isOk) {
      setBundleAndActiveBatchQuote(response.response);
      for (final b in baseState.batchQuoteBundle!.vehicleInformation) {
        if (model.vehicleDescriptions.firstWhereOrNull(
              (v) => b.vehicleDescription.id == v.id,
            ) ==
            null) {
          model.vehicleDescriptions.add(
            b.vehicleDescription
              ..operationMode = VehicleDetailsOperationMode.ignore,
          );
        }
      }
    }

    final account = await loadAccountAndCreatePostcodePrefixBasedLocation(
      baseState.batchQuote?.accountModel!.accountNumber ?? '',
    );

    if (account != null) {
      baseState.temporaryAccountStore = account;
      baseState.temporaryAccountLocation = null;
    }

    setAccountInfoTextControllers(
      accountNumber: account?.code ?? '',
      accountName: account?.code == ElvConstants.ldecashAccountNumber
          ? ''
          : baseState.batchQuote?.accountModel!.name ?? '',
      firstName: baseState.batchQuote?.accountModel!.firstName,
      secondName: baseState.batchQuote?.accountModel!.lastName,
      email: baseState.batchQuote?.accountModel?.email,
      contactNumber: baseState.batchQuote?.accountModel?.landlineNumber,
      mobileNumber: baseState.batchQuote?.accountModel?.mobileNumber,
      postCode: baseState.batchQuote?.postCode,
      bankAccountNumber:
          baseState.batchQuote?.collectionAndBankDetail?.bankAccountNumber,
      bankSortCode: baseState.batchQuote?.collectionAndBankDetail?.bankSortCode,
      notes: baseState.batchQuote?.notes,
    );
    notifyListeners();
  }

  /// Yard control Functions
  /// Sets the active yard and triggering a clear and requote
  Future<void> setYard(Yard? yard) async {
    model.selectedYard = yard;
    await setDefaultYardCode(yard?.yardCode);
    if (yard?.yardCode == null && baseState.batchQuoteBundle != null) {
      baseState.batchQuoteBundle?.batchQuoteBundleId = null;
    }
    // If changing yard and theres no batch quote,
    // dont create a new batch quote
    if (baseState.batchQuote == null) {
      notifyListeners();
      return;
    }
    await changeYardOnBatchQuote();
    notifyListeners();
  }

  /// This stores the last used Yard Code
  Future<void> setDefaultYardCode(String? yardCode) async {
    const prefYardCodeKey = 'quickQuotesYardCode';
    final prefs = await SharedPreferences.getInstance();
    if (yardCode == null || yardCode.isEmpty) {
      await prefs.remove(prefYardCodeKey);
      return;
    }
    await prefs.setString(prefYardCodeKey, yardCode);
  }

  /// When launching Quick Quotes the Selected Yard should be the last used yard
  Future<void> getDefaultYardCode() async {
    final prefs = await SharedPreferences.getInstance();
    final yardCode = prefs.getString('quickQuotesYardCode') ?? 'YSAL';
    model.selectedYard = baseState.otherYards.firstWhere(
      (element) => element.yardCode == yardCode,
      orElse: () => baseState.otherYards.first,
    );
    notifyListeners();
  }

  /// Account search Direct to CAM - This will search for N and L accounts only
  /// using the account number, account name or primary contacts first / last name
  Future<void> existingAccountSearch({
    required String searchText,
    String? endCursor,
    int? first,
  }) async {
    await _debounceableAccountSearch.call(() async {
      if (searchText.length < 3) {
        baseState.existingAccountState
          ..isBusy = false
          ..hasSearched = true
          ..accounts = null
          ..existingSearchText = searchText;
        notifyListeners();
        return;
      }
      baseState.existingAccountState
        ..isBusy = true
        ..hasSearched = false;
      notifyListeners();
      final isAccountNumber = isAccountNo(searchText);

      // clearing the account search results when the search text is
      // below threshold
      if ((!isAccountNumber && searchText.length < 3) ||
          (isAccountNumber && searchText.length <= 5)) {
        baseState.existingAccountState
          ..isBusy = false
          ..hasSearched = true
          ..existingSearchText = searchText;
        notifyListeners();
      } else {
        await accountService
            .accountSearchThroughCam(
              searchText,
              endCursor: endCursor,
              first: first,
            )
            .then((value) {
              baseState.existingAccountState
                ..isBusy = false
                ..hasSearched = true
                ..pageInfo = value.response?.pageInfo
                ..existingSearchText = searchText;
              if (endCursor == null) {
                baseState.existingAccountState.accounts =
                    value.response?.accounts;
              } else {
                final existingAccounts =
                    baseState.existingAccountState.accounts ?? [];
                final newAccounts = value.response?.accounts ?? [];
                baseState.existingAccountState.accounts = [
                  ...existingAccounts,
                  ...newAccounts,
                ];
              }

              final lAccounts = <AccountModel>[];
              final nAccounts = <AccountModel>[];
              if (baseState.existingAccountState.accounts != null) {
                for (final account
                    in baseState.existingAccountState.accounts!) {
                  if (account.code?.startsWith('L') ?? false) {
                    lAccounts.add(account);
                  } else if (account.code?.startsWith('N') ?? false) {
                    nAccounts.add(account);
                  }
                }
                baseState.existingAccountState.accounts!.clear();
                baseState.existingAccountState.accounts!
                  ..addAll(lAccounts)
                  ..addAll(nAccounts);
                notifyListeners();
              }
            });
      }
    });
  }

  /// Getting vehicles via VRN or VIN + controlling functions. This function
  /// relies heavily on RegExp's to pull out the identifier into a usable list
  /// of search strings. It does its best to pull out VINs/VRNs from different
  /// input formats.
  Future<void> getVehiclesAsync(
    String v, {
    required String territoryCode,
  }) async {
    await _debounceableVehicleSearch.call(() async {
      vehicleSearchComplete = false;

      //breaking the list into a formatted list
      var identifiers = <String>[];
      final editedString = v.replaceAll(RegExp(','), ' ');
      identifiers = extractIdentifiers(editedString);

      if (identifiers.isEmpty) {
        return null;
      }

      //removing duplicates entered from list
      final sortedVrns = removeDuplicateVRNs(identifiers);
      identifiers.toSet().toList();
      identifiers.removeWhere((element) => element == '');

      //for (final vrn in sortedVrns) {
      if (identifiers.isNotEmpty) {
        await vehicleService
            .getVehicleAsync(
              VehicleLookupModel(
                vehicleIdentifiers: identifiers,
                territoryCode: territoryCode,
                returnVehicleBatchQuote:
                    identifiers.length == 1 &&
                    baseState.batchQuote == null &&
                    model.vehicleDescriptions.length <= 1,
                quoteSource: ElvConstants.quoteSourceQuickQuote,
              ),
            )
            .then((value) async {
              responseCheck(value);
              vehicleSearchComplete = true;
              notifyListeners();
              if (value.response != null) {
                addVehicle(value.response!);
                for (final vrn in sortedVrns) {
                  if (value.response!
                      .where(
                        (element) =>
                            element.vehicleReg!.toLowerCase() ==
                                vrn.toLowerCase() ||
                            element.vin!.toLowerCase() == vrn.toLowerCase(),
                      )
                      .isEmpty) {
                    model.failedLookUps.add(vrn);
                  }
                }
              } else {
                model.failedLookUps.addAll(identifiers);
              }
            });
      }
      vehicleSearchComplete = true;
      notifyListeners();
      return null;
    });
  }

  Future<void> setLeadSource(LeadSource leadSource) async {
    if (model.leadSources?.isEmpty ?? true) {
      return;
    }

    if (leadSource.id == 0) {
      model.selectedLeadSource = null;
    } else {
      final selectedLeadSource = model.leadSources!.firstWhere(
        (leadSourceListItem) => leadSource.id == leadSourceListItem.id,
      );

      model.selectedLeadSource = selectedLeadSource;
    }
    if (baseState.batchQuote == null) return;

    model.priceLoading = true;
    model.canSubmit = false;
    notifyListeners();
    await batchQuoteBundleOperations();
  }

  /// From the input string this breaks apart the input into a list of
  /// identifiers. For the US territory this returns only 17 digit VINs
  List<String> extractIdentifiers(String text) {
    final vinRegex = RegExp(r'\b(?:[A-HJ-NPR-Z0-9]{17}|[A-Z0-9]{1,7})\b');

    final matches = vinRegex.allMatches(text);

    final identifiers = <String>[];
    for (final match in matches) {
      identifiers.add(match.group(0)!);
      text.replaceAll(match.group(0)!, '');
    }

    final remaining = text.split(' ');
    for (final vin in remaining) {
      if (!identifiers.contains(vin)) {
        identifiers.add(vin.trim());
      }
    }

    if (activeTerritory.enforceIdentifierMinLength()) {
      return identifiers
          .where((element) => element.length >= ElvConstants.minimumUSVinLength)
          .toList();
    }

    return identifiers;
  }

  /// Adding a Vehicle to the list of Vehicle Descriptions
  void addVehicle(List<VehicleDetail> vehicles) {
    for (final vehicle in vehicles) {
      baseState.batchQuoteBundle != null
          ? vehicle.operationMode = VehicleDetailsOperationMode.add
          : vehicle.operationMode = VehicleDetailsOperationMode.unspecified;

      if (vehicle.vehicleType == VehicleType.hasFlaggedFuelType ||
          vehicle.vehicleType == VehicleType.hasFlaggedBodyType) {
        vehicle.selected = false;
      }
    }
    model.vehicleDescriptions.addAll(vehicles);
    notifyListeners();
  }

  List<String> removeDuplicateVRNs(List<String> vrnsToSearch) {
    final toRemove = <String>[];

    for (final i in vrnsToSearch) {
      if (model.vehicleDescriptions.any(
        (element) =>
            element.vehicleReg?.toLowerCase() == i.toLowerCase() ||
            element.vin?.toLowerCase() == i.toLowerCase(),
      )) {
        toRemove.add(i);
      }
      if (model.failedLookUps.isNotEmpty) {
        if (model.failedLookUps.contains(i)) {
          toRemove.add(i);
        }
      }
    }

    for (final r in toRemove) {
      vrnsToSearch.remove(r);
    }

    return vrnsToSearch.toSet().toList();
  }

  void removeVehicle(int index) {
    model.vehicleDescriptions.removeAt(index);
    notifyListeners();
  }

  /// This handle situations where a new quote is needed to be generated.
  Future<void> changePostCode(BuildContext context) async {
    model.priceLoading = true;
    model.canSubmit = false;
    notifyListeners();
    await batchQuoteBundleOperations(changePostCode: true);
  }

  /// Changes account and regenerates the Quotes
  Future<void> setAccountAndReQuote({
    required int accountIndex,
    int? locationIndex,
  }) async {
    final account = baseState.existingAccountState.accounts?[accountIndex];
    if (account == null) {
      baseState.temporaryAccountStore = null;
      baseState.temporaryAccountLocation = null;
      setAccountInfoTextControllers(
        accountNumber: '',
        postCode: baseState.batchQuote?.postCode,
      );
      return;
    }

    baseState.temporaryAccountStore = account;

    if (locationIndex != null) {
      baseState.temporaryAccountLocation = account.locations[locationIndex];
    } else {
      baseState.temporaryAccountLocation = account.locations.firstOrNull;
    }
    final postCode =
        baseState.temporaryAccountLocation?.address.postCode ??
        baseState.temporaryAccountStore!.address.postCode;

    final locationAccount = baseState.temporaryAccountLocation;

    var collectionAddress = '';
    if (locationAccount != null) {
      model.collectionOperatorAddress = locationAccount.address;
      collectionAddress =
          '''${locationAccount.address.line1} - (${locationAccount.code})''';
    }

    setAccountInfoTextControllers(
      accountNumber: baseState.temporaryAccountStore!.code ?? '',
      accountLocationCode: baseState.temporaryAccountLocation?.code,
      accountName: baseState.temporaryAccountStore!.name ?? '',
      email: baseState.temporaryAccountStore!.email,
      contactNumber: baseState.temporaryAccountStore!.landline,
      mobileNumber: baseState.temporaryAccountStore!.mobilePhone,
      postCode: postCode,
      collectionAddress: collectionAddress,
    );

    if (activeTerritory == ElvTerritory.uk && postCode.isNotEmpty) {
      await isValidPostcode(postCode);
    }

    if (isPostCodeValid ||
        postCode.isEmpty ||
        activeTerritory == ElvTerritory.usa) {
      await batchQuoteBundleOperations(
        changeAccountNo: true,
        changePostCode: true,
      );
    } else {
      // Clear the input field if postcode is invalid
      postCodeController.clear();
    }

    return;
  }

  String getYardName() {
    if (baseState.batchQuote?.yard?.yardCode == null &&
        model.selectedYard?.yardCode == null) {
      return '';
    }
    final yardCode =
        baseState.batchQuote?.yard?.yardCode ??
        model.selectedYard?.yardCode ??
        '';
    final yardName =
        baseState.batchQuote?.yard?.shortName ??
        model.selectedYard?.shortName ??
        '';
    return '($yardCode) $yardName';
  }

  Future<void> asyncOnInit(SettingsController settingsController) async {
    await settingsController.loadUserSettings();

    final usersYards = UserInfoService.instance?.userInfo.yards ?? [];

    model = QuickQuotesState.initial(elvConfigFlags);

    baseState.otherYards.clear();
    final userTerritories =
        UserInfoService.instance?.userInfo.territories ?? [];

    final current = userTerritories
        .where((element) => element.code == activeTerritory.territoryCode())
        .toList()
        .first
        .depots;

    final elvDepots = current!.where((element) => element.code.contains('AUT'));

    final yards = <Yard>[];

    for (final depot in elvDepots) {
      yards.add(
        usersYards.firstWhere((element) => element.yardCode == depot.yardCode),
      );
    }

    unawaited(_loadElvYards(yards));
    unawaited(_loadLeadSources());

    setAccountInfoTextControllers(accountNumber: '');
  }

  Future<void> _loadLeadSources() async {
    if (!activeTerritory.showLeadSourceField() ||
        (model.leadSources != null && model.leadSources!.isNotEmpty)) {
      return;
    }

    final sources = await quoteService.loadLeadSources();
    model.leadSources = sources;
    leadSourceHashMap
      ..clear()
      ..addAll(quoteService.mapLeadSourcesToHashMap(sources));
    notifyListeners();
  }

  Future<void> _loadElvYards(List<Yard> yards) async {
    final activeYards = await yardService.getElvYardsFromUserYards(yards);
    baseState.otherYards = activeYards;
    baseState.otherYards.sortBy((element) => element.yardCode);

    if (!activeTerritory.startWithNoSelectedYard()) {
      await getDefaultYardCode();
    }
  }

  void accountSearchBusy() {
    baseState.existingAccountState.isBusy = true;
    notifyListeners();
  }

  void filterFailed() {
    final toBeRemoved = <String>[];

    for (final failed in model.failedLookUps) {
      //Checking if any failed look up identifiers are in successful look ups
      if (model.vehicleDescriptions.any(
        (element) =>
            (element.vin ?? '').toLowerCase().contains(failed.toLowerCase()) ||
            (element.vehicleReg ?? '').toLowerCase().contains(
              failed.toLowerCase(),
            ),
      )) {
        toBeRemoved.add(failed);
      }

      // Checking if a partial lookup or complete look up is already in the
      // failed look up list and removing it i.e vinnumber was searched and if
      // failed then vinnumber1 was searched and successful then vinnumber is
      // removed from the failed look up list.
      // This does make sure its not in the toBeRemoved list already.
      if (model.failedLookUps
                  .where((element) => element.contains(failed))
                  .length >
              1 &&
          !toBeRemoved.contains(failed)) {
        toBeRemoved.add(
          model.failedLookUps.firstWhere((element) => element.contains(failed)),
        );
      }
    }
    for (final toRemove in toBeRemoved) {
      model.failedLookUps.remove(toRemove);
    }
  }

  Future<void> modifyKerbWeight(String value, {required int quoteId}) async {
    await _debounceableAddCurbWeight.call(() async {
      model.canSubmit = false;
      model.vehicleDescriptions.firstWhere((e) => e.id == quoteId)
        ..overrideCurbWeight = int.tryParse(value)
        ..curbWeight = double.tryParse(value)
        ..operationMode = VehicleDetailsOperationMode.update;
      baseState.batchQuote!.quotes
          .firstWhere((e) => e.id == quoteId)
          .vehicleDescription
          .curbWeight = double.tryParse(
        value,
      );

      model.priceLoading = true;
      notifyListeners();

      await batchQuoteBundleOperations();
    });
  }

  Future<void> addCustomerDetailsCashAccount() async {
    await _debounceableAddAccountDetails.call(() async {
      if (baseState.batchQuote == null) return;

      await batchQuoteBundleOperations();
      toggleCanSubmit();
      notifyListeners();
    });
  }

  Future<void> addNotes() async {
    if (baseState.batchQuote == null) return;

    model.canSubmit = false;
    notifyListeners();
    await batchQuoteBundleOperations();
  }

  void showAddAccountDetails() {
    model.showAddAccountDetails =
        baseState.batchQuote?.accountModel!.accountNumber == null ||
        (baseState.batchQuote?.accountModel!.accountNumber ==
            ElvConstants.ldecashAccountNumber);

    //Loading state is mutual across needing account details and not
    final notLoading = baseState.batchQuote != null && !model.loadingQuote;

    // Account Details Showing
    if (model.showAddAccountDetails && notLoading) {
      toggleCanSubmit();
    }

    notifyListeners();
  }

  Future<bool> submit({
    required BuildContext context,
    required String email,
  }) async {
    return emailConfirmQuoteEvent(email: email);
  }

  void cloneVehicleDesc() {
    if (baseState.batchQuote != null) {
      for (final quote in baseState.batchQuote!.quotes) {
        if (!model.vehicleDescriptions.any((e) => e.id == quote.id)) {
          model.vehicleDescriptions.add(quote.vehicleDescription);
        }
      }
    }

    _checkKW();
    unawaited(updateDistance(baseState.batchQuoteBundle));
  }

  Future<bool> emailConfirmQuoteEvent({String? email}) async {
    final emails = <String>[];
    if (email != null) {
      emails.add(email);
    }

    EmrLogger.event(
      ElvConstants.aiConfirmRequest,
      params: {
        'batchQuoteID': baseState.batchQuote?.id.toString() ?? 'null',
        'time': DateTime.now().toIso8601String(),
      },
    );

    final response = await quoteService.confirmBatchQuoteAsync(
      batchQuoteId: baseState.batchQuote!.id,
    );

    EmrLogger.event(
      ElvConstants.aiConfirmResponse,
      params: {
        'batchQuoteID': baseState.batchQuote?.id.toString() ?? 'null',
        'time': DateTime.now().toIso8601String(),
        'error': response.errorMessage,
      },
    );

    responseCheck(response);
    if (!response.isOk) return false;

    unawaited(
      emailService.sendEmailForBatchQuote(
        batchQuoteId: baseState.batchQuote!.id,
        showCatDetails: true,
        showKerbWeight: false,
        showVehicleDetails: true,
        showWheelDetails: true,
        showBatteryDetails: true,
        isDraft: false,
        emails: emails,
        territoryCode: activeTerritory.territoryCode(),
      ),
    );

    notifyListeners();
    return true;
  }

  Future<void> emailCustomer({
    required BuildContext context,
    required bool isDraft,
    required bool showCat,
    required bool showWheelDetails,
    required bool showVehicleDetails,
    required bool showBattery,
    required String email,
  }) async {
    final accountModel = model.accountDetails;

    if (baseState.batchQuote!.accountModel!.accountNumber ==
            ElvConstants.ldecashAccountNumber &&
        (baseState.batchQuote!.accountModel!.firstName !=
                accountModel.firstName ||
            baseState.batchQuote!.accountModel!.lastName !=
                accountModel.lastName ||
            baseState.batchQuote!.accountModel!.email != accountModel.email ||
            baseState.batchQuote!.accountModel!.mobileNumber !=
                accountModel.contact)) {
      await addCustomerDetailsCashAccount();
    }

    EmrLogger.event(
      ElvConstants.aiSendEmailRequest,
      params: {
        'batchQuoteID': baseState.batchQuote?.id.toString() ?? 'null',
        'emailAddress': email,
        'time': DateTime.now().toIso8601String(),
      },
    );

    final emailSuccess = await emailService.sendEmailForBatchQuote(
      batchQuoteId: baseState.batchQuote!.id,
      showCatDetails: showCat,
      showKerbWeight: false,
      showVehicleDetails: showVehicleDetails,
      showWheelDetails: showWheelDetails,
      showBatteryDetails: showBattery,
      isDraft: true,
      emails: [email],
      territoryCode: activeTerritory.territoryCode(),
    );
    responseCheck(emailSuccess);

    EmrLogger.event(
      ElvConstants.aiConfirmResponse,
      params: {
        'batchQuoteID': baseState.batchQuote?.id.toString() ?? 'null',
        'time': DateTime.now().toIso8601String(),
        'error': emailSuccess.errorMessage,
      },
    );

    return;
  }

  Future<void> newAccountCreateAccount({required BuildContext context}) async {
    final mobile = (baseState.newAccountState.mobile ?? '').trim();

    final result = await accountService.createAccount(
      CreateAccountRequest(
        address: baseState.newAccountState.address!,
        firstName: baseState.newAccountState.firstName!,
        surname: baseState.newAccountState.lastName!,
        title: baseState.newAccountState.title,
        emailAddress: baseState.newAccountState.email!.trim(),
        contactPreferences: CreateAccountContactPreferences(
          email: baseState.newAccountState.canEmail,
          post: baseState.newAccountState.canPost,
          phone: baseState.newAccountState.canPhone,
          sms: baseState.newAccountState.canSms,
        ),
        dateOfBirth: baseState.newAccountState.dateOfBirth!,
        mobileNumber: mobile.isEmpty ? null : mobile.trim(),
        yardCode: baseState.newAccountState.yardCode!,
      ),
    );

    model.postcode = baseState.newAccountState.address!.postCode;

    if (result.status != ResponseStatus.ok) {
      baseState.accountCreationSuccess = false;
      baseState.apiErrorMessage = result.errorMessage;
      notifyListeners();
      return;
    }

    baseState.newAccountState.accountId =
        result.response!.result!.accountNumber;

    final account = result.response!.result;

    baseState.accountCreationSuccess = true;

    if (account != null) {
      final accountDetails = await accountService
          .accountSearchThroughCamByAccountCode(account.accountNumber);
      if (accountDetails.isOk) {
        final selectedAccount = accountDetails.response!.accounts.first;

        final selectedLocation = selectedAccount.locations.firstOrNull;

        baseState.temporaryAccountStore = selectedAccount;
        baseState.temporaryAccountLocation = selectedLocation;

        model.collectionOperatorAddress =
            selectedLocation?.address ?? selectedAccount.address;

        final collectionAddress =
            '''${account.address.line1} - (${account.accountLocationCode ?? account.accountNumber})''';

        setAccountInfoTextControllers(
          accountNumber: account.accountNumber,
          accountLocationCode: selectedLocation?.code ?? account.accountNumber,
          accountName: account.name,
          email: account.email,
          contactNumber: account.landlineNumber,
          mobileNumber: account.mobileNumber,
          postCode: account.address.postCode,
          firstName: account.firstName,
          secondName: account.lastName,
          collectionAddress: collectionAddress,
        );
        if (baseState.batchQuote != null) {
          await batchQuoteBundleOperations(
            newAccountNumber: account.accountNumber,
            changePostCode: true,
          );
        }
      }
    }

    baseState.newAccountState = NewAccountModel.initial();

    notifyListeners();
    return;
  }

  void resetAccountStore() {
    baseState.temporaryAccountStore = null;
    baseState.temporaryAccountLocation = null;
    notifyListeners();
  }

  bool validEmail(String v) {
    return RegExp(
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
    ).hasMatch(v);
  }

  void toggleCanSubmit() {
    if (baseState.batchQuote == null) {
      model.canSubmit = false;
      return;
    }

    final accountModel = model.accountDetails;

    final isEmailValid = emailValidToConfirmQuote();

    final isNameValid =
        (accountModel.firstName.isNotEmpty) &&
        (accountModel.lastName.isNotEmpty);

    final anyNullKerbWeightVehicles =
        baseState.batchQuote?.quotes.any(
          (q) =>
              q.vehicleDescription.curbWeight == 0.0 ||
              q.vehicleDescription.curbWeight == null,
        ) ??
        false;

    model.canSubmit =
        isEmailValid &&
        (isNameValid ||
            !(accountModel.accountNumber ==
                ElvConstants.ldecashAccountNumber)) &&
        !anyNullKerbWeightVehicles;

    notifyListeners();
  }

  void setAccountInfoTextControllers({
    required String accountNumber,
    String? accountName,
    String? accountLocationCode,
    String? firstName,
    String? secondName,
    String? email,
    String? contactNumber,
    String? mobileNumber,
    String? postCode,
    String? bankSortCode,
    String? bankAccountNumber,
    String? notes,
    String? collectionAddress,
  }) {
    quotingCustomerDetailAccountNumber = accountNumber;
    quotingCustomerDetailAccountLocationCode = accountLocationCode;
    accountController.text = '${accountName ?? ''} $accountNumber'.trim();
    firstNameController.text = firstName ?? '';
    secondNameController.text = secondName ?? '';
    emailController.text = email ?? '';
    contactNumberController.text = contactNumber ?? '';
    mobileNumberController.text = mobileNumber ?? '';
    postCodeController.text = postCode ?? '';
    bankSortCodeController.text = bankSortCode ?? '';
    bankAccountNumberController.text = bankAccountNumber ?? '';
    notesController.text = notes ?? '';
    collectionAddressController.text = collectionAddress ?? '';
    notifyListeners();
  }

  Future<void> changeYardOnBatchQuote() async {
    if (baseState.batchQuote != null) {
      await batchQuoteBundleOperations(
        changeYards: model.selectedYard != null,
        changePostCode: postCodeController.text.isNotEmpty,
      );
      notifyListeners();
    }
  }

  Future<String> getRawInfo(String s) async {
    final result = await quoteService.getRawInfo(
      s,
      activeTerritory.territoryCode(),
    );

    return result.response ?? '';
  }

  Future<bool> batchQuoteBundleOperations({
    bool changeYards = false,
    bool changePostCode = false,
    bool changeAccountNo = false,
    String? newAccountNumber,
  }) async {
    if (model.vehicleDescriptions.isEmpty) return false;

    if (changeYards || changePostCode || changeAccountNo) {
      baseState.collectionOperators = {};
    }

    final vehiclePricingRequests = model.vehicleDescriptions
        .map((e) {
          final config = baseState.batchQuoteBundle?.vehicleInformation
              .firstWhereOrNull((a) => a.vehicleDescription.id == e.id)
              ?.vehicleConfiguration;
          return VehicleListItem(
            knownVehicleId: e.id,
            vin: e.vin,
            vehicleRegistration: e.vehicleReg?.isNotEmpty ?? false
                ? e.vehicleReg
                : null,
            numberOfAlloyWheels:
                config?.alloyWheels ??
                activeTerritory.initialQuoteNumberOfAlloys(),
            numberOfSteelWheels:
                config?.steelWheels ??
                activeTerritory.initialQuoteNumberOfSteels(),
            numberOfChromeWheels:
                config?.chromeWheels ??
                activeTerritory.initialQuoteNumberOfChromes(),
            hasOriginalCatalyticConverter: config?.hasOriginalCat ?? false,
            numberOfPipeCats: config?.numOfPipeCats ?? 0,
            numberOfPreCats: config?.numOfPreCats ?? 0,
            overrideKerbWeight: e.overrideCurbWeight,
            hasBattery:
                config?.hasBattery ?? activeTerritory.initialQuoteWithBattery(),
            fuelType: e.fuelType!.extractFuelType(),
            operationMode: selectOperationMode(e),
            priceAdjustment: config?.priceAdjustment,
          );
        })
        .where((v) => v.operationMode != VehicleDetailsOperationMode.ignore)
        .toList();

    final newRequestBody = SimpleBundleRequestModel(
      quotingCustomerDetails: QuotingCustomerDetails(
        accountNo: quotingCustomerDetailAccountNumber,
        accountLocationCode: quotingCustomerDetailAccountLocationCode,
        firstName: firstNameController.text.isNotEmpty
            ? firstNameController.text
            : null,
        lastName: secondNameController.text.isNotEmpty
            ? secondNameController.text
            : null,
        email: emailController.text.isNotEmpty ? emailController.text : null,
      ),
      territoryCode: activeTerritory.territoryCode(),
      numberOfDeliveredPricesRequired: activeTerritory
          .numberOfDeliveredPrices(),
      numberOfCollectedPricesRequired: activeTerritory
          .numberOfCollectedPrices(),
      collectedPriceRequired: collectedPriceRequired(
        changeAccountNo: changeAccountNo,
        changePostCode: changePostCode,
        changeYards: changeYards,
      ),
      returnHigherDeliveredPriceIfAvailable:
          activeTerritory.numberOfDeliveredPrices() != 1,
      /* After initial pricing call specifically for a territory which can 
         collect, if we are changing yards then don't pass a post code. 
         This way the pricing will return prices based on selected yard. */
      vehicleLocationPostcode: !activeTerritory.canCollect()
          ? null
          : (postCodeController.text.trim().isEmpty
                ? null
                : postCodeController.text),
      changedVehicleLocationPostcode:
          changePostCode && activeTerritory.canCollect()
          ? postCodeController.text
          : null,
      preselectedYardCode: selectedYardCode(),
      b2BorB2C: ElvConstants.b2b,
      quoteSource: ElvConstants.quoteSourceQuickQuote,
      leadSourceId: model.selectedLeadSource?.id,
      vehicleList: vehiclePricingRequests,
      bundleReference: baseState.batchQuoteBundle?.batchQuoteBundleId,
      changedQuotingCustomerAccountNo:
          newAccountNumber ??
          (changeAccountNo
              ? baseState.temporaryAccountStore?.code ?? ''
              : null),
      changedPreselectedYardCode: changeYards ? changeYardCode() : null,
      collectionAndBankDetails: CollectionAndBankDetails(
        accountNumber: model.collectionOperator?.accountNumber ?? '',
        address:
            model.collectionOperatorAddress.line1.isEmpty ||
                model.collectionOperatorAddress.postCode.isEmpty
            ? null
            : model.collectionOperatorAddress,
        appintmentDateTimeUtc: model.collectionDateTime?.toIso8601String(),
        bankAccountNumber: bankAccountNumberController.text,
        bankSortCode: bankSortCodeController.text,
        batchQuoteId: baseState.currentSelectBatchQuoteId,
        haulageRate: model.collectionOperator?.haulageRate,
      ),
      notes: notesController.text,
    );

    final response = await quoteService.newSimpleCreateBatchQuote(
      body: newRequestBody,
    );

    if (response.status != ResponseStatus.ok) {
      EmrLogger.event(
        ElvConstants.aiConfirmResponse,
        params: {
          'bundleID': baseState.batchQuoteBundle?.batchQuoteBundleId ?? 'null',
          'time': DateTime.now().toIso8601String(),
          'error': response.errorMessage,
        },
      );
      return false;
    }

    if (response.response != null) {
      setBundleAndActiveBatchQuote(response.response);
      _checkKW();
      unawaited(updateDistance(response.response));
    }
    return true;
  }

  VehicleDetailsOperationMode selectOperationMode(VehicleDetail vehicle) {
    final batchQuoteBundle = baseState.batchQuoteBundle;
    final isSelected = vehicle.selected;
    final vin = vehicle.vin;
    final vrn = vehicle.vehicleReg;

    if (batchQuoteBundle != null) {
      final quoteSummaries = batchQuoteBundle.batchQuotes.first.quoteSummaries;
      final vinExistsInQuotes = quoteSummaries.any(
        (v) => v.vin == vin || v.vehicleReg == vrn,
      );

      if (quoteSummaries.isEmpty) {
        return VehicleDetailsOperationMode.add;
      }

      if (!isSelected) {
        return vinExistsInQuotes
            ? VehicleDetailsOperationMode.delete
            : VehicleDetailsOperationMode.ignore;
      }

      if (!vinExistsInQuotes) {
        return VehicleDetailsOperationMode.add;
      }

      return vehicle.operationMode == VehicleDetailsOperationMode.ignore
          ? VehicleDetailsOperationMode.unspecified
          : vehicle.operationMode;
    }

    return isSelected
        ? VehicleDetailsOperationMode.unspecified
        : VehicleDetailsOperationMode.ignore;
  }

  // if batch quotes exist and we are in a territory where collection can
  // occur, if there are no collected quotes it is because a postcode is
  // not setup with haulier. Passing in collectedPriceRequired = true will
  // cause a new batch quote to be generated and updates / deletes to be
  // overlooked and improper. So here, we return false if batch quote is
  // already quoted yet does not contain collected quote.
  bool collectedPriceRequired({
    bool changeYards = false,
    bool changePostCode = false,
    bool changeAccountNo = false,
  }) {
    if (!activeTerritory.canCollect()) return false;
    if (postCodeController.text.isEmpty) return false;

    // If key values changed, re-trigger collected quote
    if (changePostCode || changeAccountNo) return true;
    final batchQuotes = baseState.batchQuoteBundle?.batchQuotes;

    // set to true for initial call (if there is no quote currently)
    if (batchQuotes?.isEmpty ?? true) return true;

    // If already quoted but missing collected quote, do not retrigger
    return batchQuotes?.any((q) => q.acquisition == QuoteTypeEnum.collected) ??
        false;
  }

  BatchQuoteModel selectedBatchQuote() {
    return baseState.batchQuoteBundle!.batchQuotes.firstWhere(
      (e) => e.yardCode == model.selectedYard!.yardCode,
    );
  }

  List<BatchQuoteModel> batchQuotesByPriceType(QuoteTypeEnum quoteType) {
    return baseState.batchQuoteBundle!.batchQuotes
        .where((e) => e.acquisition == quoteType)
        .toList();
  }

  void swapBatchQuotes(int batchQuoteId) {
    if (baseState.batchQuote?.id == batchQuoteId) return;

    baseState.batchQuote = baseState.batchQuoteBundle!.batchQuotes.firstWhere(
      (e) => e.id == batchQuoteId,
    );
    model.selectedYard = baseState.batchQuote!.yard;
    model.selectedQuoteType = baseState.batchQuote!.acquisition;
    baseState.currentSelectBatchQuoteId = batchQuoteId;

    //Fill collection details for collection quote
    if (baseState.batchQuote != null &&
        baseState.batchQuote?.acquisition == QuoteTypeEnum.collected &&
        baseState.batchQuote?.collectionAndBankDetail != null) {
      final collectionAndBankDetail =
          baseState.batchQuote!.collectionAndBankDetail!;

      model.collectionOperator = CollectionOperator(
        collectionOperatorId: 0,
        accountNumber: collectionAndBankDetail.accountNumber ?? '',
        accountName: collectionAndBankDetail.accountName ?? '',
      );
      if (collectionAndBankDetail.appointmentDateTime != null) {
        model.collectionDateTime = collectionAndBankDetail.appointmentDateTime;
      }

      model.collectionOperatorAddress =
          baseState.temporaryAccountLocation?.address ??
          Address(line1: '', postCode: '');

      notesController.text = baseState.batchQuote!.notes ?? '';

      collectionOperatorSearchController.text =
          model.collectionOperator?.accountNumber != null &&
              model.collectionOperator!.accountNumber.isNotEmpty
          ? '(${model.collectionOperator?.accountNumber}) '
                '${model.collectionOperator?.accountName ?? ''}'
          : '';
    }

    notifyListeners();
  }

  Future<AccountModel?> loadAccountAndCreatePostcodePrefixBasedLocation(
    String accountNumber,
  ) async {
    if (accountNumber.isEmpty) {
      return null;
    }

    final accountSearchResponse = await accountService
        .accountSearchThroughCamByAccountCode(accountNumber);

    if (accountSearchResponse.isOk &&
        accountSearchResponse.response!.accounts.isEmpty) {
      return null;
    }

    final account = accountSearchResponse.response!.accounts.first;
    baseState.temporaryAccountStore = account;

    final isCollectedQuoteAvailable =
        baseState.batchQuoteBundle?.batchQuotes.any(
          (b) => b.acquisition == QuoteTypeEnum.collected,
        ) ??
        false;

    if (account.accountType == AccountTypeEnum.retail &&
        isCollectedQuoteAvailable) {
      account.locations = account.locations
          .whereNot(
            (location) => location.code.toUpperCase().startsWith(account.code!),
          )
          .toList();
    }

    if (isCollectedQuoteAvailable &&
        account.accountType == AccountTypeEnum.retail &&
        account.address.postCode.length > 4 &&
        (account.code?.isNotEmpty ?? false) &&
        account.locations.isEmpty) {
      await addPostcodePrefixBasedLocationToAccount(account: account);
    }

    return account;
  }

  Future<void> addPostCodePrefixBasedLocationToAccount({
    required int accountIndex,
  }) async {
    final account = baseState.existingAccountState.accounts?[accountIndex];
    if (account == null ||
        account.accountType != AccountTypeEnum.retail ||
        account.address.postCode.length <= 3) {
      return;
    }

    await addPostcodePrefixBasedLocationToAccount(account: account);
  }

  Future<void> addPostcodePrefixBasedLocationToAccount({
    required AccountModel account,
  }) async {
    final locationCode = account.address.postCode
        .substring(0, account.address.postCode.length - 3)
        .trim();

    final location = account.locations.firstWhereOrNull(
      (location) => location.code.toUpperCase() == locationCode.toUpperCase(),
    );

    if (location != null) {
      return;
    }

    final accountId =
        'accounts/${activeTerritory.territoryCode()}/${account.code}';

    final response = await accountService.addOrUpdateAccountLocation(
      account: account,
      accountId: accountId,
      locationCode: locationCode,
      locationName: locationCode,
      primaryContactId: Namespace.nil.value,
      address: account.address,
      countryCode: activeTerritory.countryCode(),
    );

    if (response.isOk) {
      account.locations.add(
        AccountLocation(
          address: account.address,
          code: locationCode,
          name: locationCode,
        ),
      );
    }
  }

  Future<void> loadBatchQuoteBundle(String id) async {
    try {
      final response = await quoteService.loadBatchQuoteBundle(id);
      if (response.isOk) {
        setBundleAndActiveBatchQuote(response.response);

        final account = await loadAccountAndCreatePostcodePrefixBasedLocation(
          baseState.batchQuote?.accountModel!.accountNumber ?? '',
        );

        if (account != null) {
          baseState.temporaryAccountStore = account;
          baseState.temporaryAccountLocation =
              account.locations
                  .where(
                    (x) =>
                        x.code ==
                        baseState.batchQuote?.accountModel!.accountLocationCode,
                  )
                  .firstOrNull ??
              account.locations.firstOrNull;

          model.collectionOperatorAddress =
              baseState.temporaryAccountLocation?.address ?? account.address;

          var collectionAddress = '';
          if (baseState.temporaryAccountLocation != null) {
            collectionAddress =
                '${baseState.temporaryAccountLocation?.address.line1} - '
                '(${baseState.temporaryAccountLocation?.code})';
          }

          setAccountInfoTextControllers(
            accountNumber: account.code ?? '',
            accountName: account.code == ElvConstants.ldecashAccountNumber
                ? ''
                : baseState.batchQuote?.accountModel!.name ?? '',
            accountLocationCode:
                baseState.batchQuote?.accountModel?.accountLocationCode,
            firstName: baseState.batchQuote?.accountModel!.firstName,
            secondName: baseState.batchQuote?.accountModel!.lastName,
            email: baseState.batchQuote?.accountModel?.email,
            contactNumber: baseState.batchQuote?.accountModel?.landlineNumber,
            mobileNumber: baseState.batchQuote?.accountModel?.mobileNumber,
            postCode: baseState.batchQuote?.postCode,
            bankSortCode:
                baseState.batchQuote?.collectionAndBankDetail?.bankSortCode,
            bankAccountNumber: baseState
                .batchQuote
                ?.collectionAndBankDetail
                ?.bankAccountNumber,
            notes: baseState.batchQuote?.notes,
            collectionAddress: collectionAddress,
          );
          _checkKW();
          unawaited(updateDistance(response.response));
        }
      }
    } catch (e) {
      debugPrint(e.toString());
    }
    return;
  }

  void setBundleAndActiveBatchQuote(BatchQuoteBundleResponse? bundle) {
    if (bundle == null) return;

    baseState.batchQuoteBundle = bundle;

    final selectedYard = selectedYardCode();

    final quotes = selectedYard == null
        ? bundle.batchQuotes
        : bundle.batchQuotes
              .where(
                (x) =>
                    x.yardCode == selectedYard &&
                    x.acquisition ==
                        (isCollectionQuote
                            ? QuoteTypeEnum.collected
                            : QuoteTypeEnum.delivered),
              )
              .toList();

    final highestPriceQuote = _getHighestPriceQuote(
      quotes.isEmpty ? bundle.batchQuotes : quotes,
    );

    baseState.batchQuote = selectedYard == null
        ? _selectActiveBatchQuote(bundle, highestPriceQuote)
        : highestPriceQuote;

    baseState.currentSelectBatchQuoteId = baseState.batchQuote!.id;

    model.selectedYard = baseState.batchQuote!.yard;
    model.selectedLeadSource = model.leadSources?.firstWhereOrNull(
      (e) => e.id == baseState.batchQuote!.leadSourceId,
    );

    final baseStateAccountModel = baseState.batchQuote?.accountModel;
    if (baseStateAccountModel != null) {
      model.accountDetails.accountNumber = baseStateAccountModel.accountNumber;
      model.accountDetails.contact = baseStateAccountModel.mobileNumber;
      model.accountDetails.firstName = baseStateAccountModel.firstName;
      model.accountDetails.lastName = baseStateAccountModel.lastName;
      model.accountDetails.email = baseStateAccountModel.email;
    }

    // Reset vehicle operation modes
    for (final vehicle in model.vehicleDescriptions) {
      vehicle.operationMode = VehicleDetailsOperationMode.unspecified;
    }

    _updateVehicleDescriptions();
    toggleCanSubmit();

    _sortQuotesBySummaryOrder(bundle.batchQuotes);

    model.priceLoading = false;

    notifyListeners();
  }

  BatchQuoteModel _getHighestPriceQuote(List<BatchQuoteModel> quotes) {
    return quotes.reduce((a, b) {
      final sumA = a.quoteSummaries.fold<num>(
        0,
        (sum, item) => sum + item.quotedPrice,
      );
      final sumB = b.quoteSummaries.fold<num>(
        0,
        (sum, item) => sum + item.quotedPrice,
      );
      return sumA > sumB ? a : b;
    });
  }

  BatchQuoteModel _selectActiveBatchQuote(
    BatchQuoteBundleResponse bundle,
    BatchQuoteModel highestPriceQuote,
  ) {
    final quotes = bundle.batchQuotes;

    if (model.selectedYard != null && model.selectedQuoteType != null) {
      final match = quotes.firstWhereOrNull(
        (b) =>
            b.yard?.yardCode == model.selectedYard!.yardCode &&
            b.acquisition == model.selectedQuoteType,
      );
      if (match != null) return match;
    }

    if (quotes.length == 1) return quotes.first;

    if ((quotes.first.postCode ?? '').isNotEmpty) return highestPriceQuote;

    return quotes.firstWhereOrNull(
          (b) => b.yardCode == model.selectedYard?.yardCode,
        ) ??
        highestPriceQuote;
  }

  void _sortQuotesBySummaryOrder(List<BatchQuoteModel> batchQuotes) {
    final isUK = activeTerritory == ElvTerritory.uk;

    for (final bq in batchQuotes) {
      final vehicleOrder = bq.quoteSummaries
          .map((s) => isUK ? s.vehicleReg : s.vin)
          .toList();

      bq.quotes.sort((a, b) {
        final keyA = isUK
            ? a.vehicleDescription.vehicleReg
            : a.vehicleDescription.vin;
        final keyB = isUK
            ? b.vehicleDescription.vehicleReg
            : b.vehicleDescription.vin;
        return vehicleOrder.indexOf(keyA).compareTo(vehicleOrder.indexOf(keyB));
      });
    }
  }

  Future<bool> deleteVehicle(ActiveQuote quote) async {
    model.vehicleDescriptions
            .firstWhere((e) => e.id == quote.id)
            .operationMode =
        VehicleDetailsOperationMode.delete;

    // If request fails dont delete vehicle
    if (await batchQuoteBundleOperations()) {
      model.vehicleDescriptions.removeWhere((e) => e.id == quote.id);
      return true;
    }
    return false;
  }

  void updateVehicle({
    required ActiveQuote vehicle,
    int? alloyWheels,
    int? steelWheels,
    int? chromeWheels,
    bool? hasBattery,
    bool? hasCat,
    int? numOfPipeCats,
    int? numOfPreCats,
    List<PriceAdjustmentComponent>? priceAdjustments,
  }) {
    final config = vehicle.vehicleConfiguration;
    vehicle.vehicleConfiguration
      ..alloyWheels = alloyWheels ?? config.alloyWheels
      ..steelWheels = steelWheels ?? config.steelWheels
      ..chromeWheels = chromeWheels ?? config.chromeWheels
      ..hasBattery = hasBattery ?? config.hasBattery
      ..hasOriginalCat = hasCat ?? config.hasOriginalCat
      ..numOfPipeCats = numOfPipeCats ?? config.numOfPipeCats
      ..numOfPreCats = numOfPreCats ?? config.numOfPreCats
      ..priceAdjustment = priceAdjustments ?? config.priceAdjustment;

    model.vehicleDescriptions
            .firstWhere((e) => e.id == vehicle.id)
            .operationMode =
        VehicleDetailsOperationMode.update;

    final quotes = baseState.batchQuoteBundle!.batchQuotes
        .expand((bq) => bq.quotes)
        .where((q) => q.vehicleDescription.id == vehicle.id)
        .toList();
    for (final quote in quotes) {
      _reCalculateQuotePrice(quote);
    }
    notifyListeners();
  }

  void _reCalculateQuotePrice(ActiveQuote quote) {
    final partPrices = quote.partPrices ?? [];
    var finalPrice = 0.00;
    var catValue = 0.00;
    finalPrice =
        (quote.vehicleConfiguration.priceAdjustment?.map((e) => e.value) ?? [])
            .fold(0, (a, b) => a + b);

    final preCatPartPrice = partPrices.firstWhereOrNull(
      (p) =>
          p.description == PartPriceDescriptionConstants.preCatalyticConverter,
    );

    final pipeCatPartPrice = partPrices.firstWhereOrNull(
      (p) =>
          p.description == PartPriceDescriptionConstants.pipeCatalyticConverter,
    );

    for (final partPrice in partPrices) {
      switch (partPrice.description) {
        case PartPriceDescriptionConstants.alloyWheel:
          finalPrice +=
              quote.vehicleConfiguration.alloyWheels * partPrice.price;
        case PartPriceDescriptionConstants.steelWheel:
          finalPrice +=
              quote.vehicleConfiguration.steelWheels * partPrice.price;
        case PartPriceDescriptionConstants.chromeWheel:
          finalPrice +=
              quote.vehicleConfiguration.chromeWheels * partPrice.price;
        case PartPriceDescriptionConstants.battery:
          if (quote.vehicleConfiguration.hasBattery ?? false) {
            finalPrice += partPrice.price;
          }
        case PartPriceDescriptionConstants.catConverter:
          if ((quote.vehicleConfiguration.hasOriginalCat ?? false) &&
              preCatPartPrice == null &&
              pipeCatPartPrice == null) {
            finalPrice += partPrice.price;
            catValue = partPrice.price;
          }
        case PartPriceDescriptionConstants.preCatalyticConverter:
          catValue += quote.vehicleConfiguration.numOfPreCats * partPrice.price;
          finalPrice +=
              quote.vehicleConfiguration.numOfPreCats * partPrice.price;
        case PartPriceDescriptionConstants.pipeCatalyticConverter:
          catValue +=
              quote.vehicleConfiguration.numOfPipeCats * partPrice.price;
          finalPrice +=
              quote.vehicleConfiguration.numOfPipeCats * partPrice.price;
        case PartPriceDescriptionConstants.haulage:
          finalPrice -= partPrice.price.abs();
        default:
          finalPrice += partPrice.price;
      }
    }

    quote.total = finalPrice;
    quote.catValue = catValue;
  }

  void reCalculateHaulageOnSelectedQuote(double haulageRate) {
    if (baseState.batchQuote == null) return;
    final batchQuote = baseState.batchQuoteBundle!.batchQuotes.firstWhere(
      (b) => b.id == baseState.batchQuote!.id,
    );
    final haulagePartPrices = batchQuote.quotes
        .where((q) => q.partPrices != null)
        .expand((q) => q.partPrices!)
        .where((pp) => pp.description == PartPriceDescriptionConstants.haulage);
    for (final p in haulagePartPrices) {
      p.price = haulageRate;
    }

    final quotes = batchQuote.quotes;
    for (final q in quotes) {
      _reCalculateQuotePrice(q);
    }
    notifyListeners();
  }

  Future<void> bulkUpdatePriceAdjustments({
    List<PriceAdjustmentComponent>? priceAdjustment,
  }) async {
    model.canSubmit = false;
    model.priceLoading = true;
    notifyListeners();

    for (final quote in baseState.batchQuote!.quotes) {
      quote.vehicleConfiguration.priceAdjustment = priceAdjustment;
    }

    for (final vehicle in model.vehicleDescriptions) {
      vehicle.operationMode = VehicleDetailsOperationMode.update;
    }

    await batchQuoteBundleOperations();

    model.canSubmit = true;
    notifyListeners();
  }

  String? changeYardCode() {
    return (baseState.batchQuote?.yardCode ?? '') !=
            model.selectedYard?.yardCode
        ? model.selectedYard?.yardCode
        : null;
  }

  String? selectedYardCode() {
    return model.selectedYard?.yardCode;
  }

  bool emailValidToConfirmQuote() {
    final accountModel = model.accountDetails;

    if (accountModel.accountNumber == ElvConstants.ldecashAccountNumber &&
        activeTerritory.emailIsRequired()) {
      return validEmail(accountModel.email);
    }
    return true;
  }

  void scrollToBottom() {
    if (baseState.scrollController.hasClients) {
      Timer(const Duration(milliseconds: 100), () {
        baseState.scrollController.jumpTo(
          baseState.scrollController.position.maxScrollExtent,
        );

        notifyListeners();
      });
    }
  }

  void _checkKW() {
    //checks through the vehicles for any without a KW and adds them to the
    //list so that the KW can remain modifiable during this flow.

    model.vehiclesIDsWithNoCurbWeight.addAll(
      model.vehicleDescriptions
          .where((v) => v.curbWeight == null || v.curbWeight == 0.0)
          .toList()
          .map((e) => e.id)
          .toList(),
    );
    notifyListeners();
  }

  void _updateVehicleDescriptions() {
    for (final b in baseState.batchQuoteBundle!.vehicleInformation) {
      if (model.vehicleDescriptions.firstWhereOrNull(
            (v) => b.vehicleDescription.id == v.id,
          ) ==
          null) {
        model.vehicleDescriptions.add(
          b.vehicleDescription
            ..operationMode = VehicleDetailsOperationMode.ignore,
        );
      }
    }
  }

  Future<void> getCollectionOperatorsByHaulagePriceMatrices() async {
    try {
      final collectionOperators = await collectionOperatorService
          .getCollectionOperatorsByHaulagePriceMatrices(
            territoryCode: activeTerritory.territoryCode(),
            batchquoteBundleId: baseState.batchQuote!.batchQuoteBundleId!,
          );

      baseState.collectionOperators = collectionOperators;
      notifyListeners();
    } on Exception catch (ex, trace) {
      EmrLogger.error(
        ElvConstants.loggerCollectionOperatorError,
        error: ex,
        stackTrace: trace,
        params: {
          'territoryCode': activeTerritory.toString(),
          'postCode':
              baseState.batchQuote?.postCode ?? 'No postcode on batchquote',
          'yardCode':
              baseState.batchQuote?.yardCode ?? 'No yardcodes on batchquote',
        },
      );

      baseState.collectionOperators = {};
    }
  }

  Future<bool> isValidPostcode(String postcode) async {
    try {
      if (!postcode.isValidPostcodeFormat()) {
        isPostCodeValid = false;
        return false;
      }

      final result = await yardService.isValidPostcode(postcode);
      isPostCodeValid = result;
      return result;
    } on Exception catch (e, trace) {
      isPostCodeValid = false; // Set it to false if an error occurs
      EmrLogger.error(
        'Failed to validate postcode: ',
        params: {'postCode': postcode},
        type: EmrOneCoreTelemetry.kTypeResult,
        stackTrace: trace,
        error: e,
        source: 'QuickQuote',
      );

      return false;
    }
  }

  Future<bool> isValidUKBankAccount(
    String sortCode,
    String accountNumber,
  ) async {
    // Do not validate if any value is masked
    if (sortCode.startsWith('*') || accountNumber.startsWith('*')) {
      return true;
    }

    final response = await accountService.validateUKBankAccount(
      sortCode,
      accountNumber,
    );

    return response.response ?? false;
  }

  Future<void> updateDistance(BatchQuoteBundleResponse? bundle) async {
    if (activeTerritory != ElvTerritory.uk ||
        bundle == null ||
        postCodeController.text.isEmpty) {
      cleanYardDistance();
      return;
    }
    final yards = bundle.batchQuotes
        .where(
          (x) => x.acquisition == QuoteTypeEnum.delivered && x.yardCode != null,
        )
        .map((x) => x.yardCode!)
        .toList();
    if (yards.isEmpty) {
      cleanYardDistance();
      return;
    }
    model.loadingDistance = true;
    notifyListeners();
    final yardDistance = await yardService.findDistanceBetweenPostcode(
      postCodeController.text,
      yards,
    );

    if (yardDistance == null) {
      cleanYardDistance();
      return;
    }

    model.loadingDistance = false;
    model.yardDistanceList = yardDistance;
    notifyListeners();
  }

  void cleanYardDistance() {
    model.loadingDistance = false;
    model.yardDistanceList = [];
    notifyListeners();
  }

  /// Changes account and regenerates the Quotes
  Future<void> changeLocationCodeAndReQuote({
    required AccountLocation location,
  }) async {
    model.priceLoading = true;
    if (baseState.temporaryAccountStore == null) {
      baseState.temporaryAccountStore = null;
      baseState.temporaryAccountLocation = null;
      setAccountInfoTextControllers(
        accountNumber: '',
        postCode: baseState.batchQuote?.postCode,
      );
      return;
    }

    baseState.temporaryAccountLocation = location;
    model.collectionOperatorAddress =
        baseState.temporaryAccountLocation!.address;
    final postCode =
        baseState.temporaryAccountLocation?.address.postCode ??
        baseState.temporaryAccountStore!.address.postCode;

    final account = baseState.temporaryAccountLocation;
    final collectionAddress =
        '''${account!.address.line1} - (${account.code})''';

    setAccountInfoTextControllers(
      accountNumber: baseState.temporaryAccountStore!.code ?? '',
      accountLocationCode: baseState.temporaryAccountLocation?.code,
      accountName: baseState.temporaryAccountStore!.name ?? '',
      email: baseState.temporaryAccountStore!.email,
      contactNumber: baseState.temporaryAccountStore!.landline,
      mobileNumber: baseState.temporaryAccountStore!.mobilePhone,
      postCode: postCode,
      collectionAddress: collectionAddress,
    );

    if (activeTerritory == ElvTerritory.uk && postCode.isNotEmpty) {
      await isValidPostcode(postCode);
    }

    if (isPostCodeValid ||
        postCode.isEmpty ||
        activeTerritory == ElvTerritory.usa) {
      await batchQuoteBundleOperations(
        changeAccountNo: true,
        changePostCode: true,
      );
    }

    return;
  }
}
