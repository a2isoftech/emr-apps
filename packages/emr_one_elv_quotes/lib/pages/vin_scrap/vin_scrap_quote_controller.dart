import 'package:collection/collection.dart';
import 'package:emr_core_api/services/account_service.dart';
import 'package:emr_one_core/config/app_config.dart';
import 'package:emr_one_core/controllers/settings_controller.dart';
import 'package:emr_one_core/services/user_info/user_info_service.dart';
import 'package:emr_one_core/utilities/debounceable.dart';
import 'package:emr_one_elv_core/constants.dart';
import 'package:emr_one_elv_core/extensions/extract_fuel_type_extension.dart';
import 'package:emr_one_elv_core/models/api_response.dart';
import 'package:emr_one_elv_core/models/quote_models/quote_models.dart';
import 'package:emr_one_elv_core/models/simple_bundle_request_model.dart';
import 'package:emr_one_elv_quotes/extensions/vin_scrap_page_text_extension.dart';
import 'package:emr_one_elv_quotes/pages/vin_scrap/vin_scrap_state.dart';
import 'package:emr_one_elv_quotes/services/services.dart';
import 'package:emr_sharedtypes/models/accounts/account.dart';
import 'package:emr_sharedtypes/models/yard.dart';
import 'package:flutter/material.dart';

class VINScrapController extends ChangeNotifier {
  VINScrapController({
    required this.appConfig,
    required this.quoteService,
    required this.yardService,
    required this.vehicleService,
    required this.activeTerritory,
    required this.accountService,
  });
  final AppConfig appConfig;
  final QuoteService quoteService;
  final YardService yardService;
  final VehicleService vehicleService;
  final ElvTerritory activeTerritory;
  final AccountService accountService;

  VINScrapState state = VINScrapState.init();
  final _debounceableVehicleSearch =
      Debounceable<dynamic>(debounceDuration: const Duration(seconds: 1));
  final TextEditingController vinController = TextEditingController();
  final TextEditingController accountSelectController = TextEditingController();

  Future<void> searchVin() async {
    final text = vinController.text;

    // Territory-specific validation
    if (activeTerritory == ElvTerritory.usa && text.length < 8) return;
    if (activeTerritory == ElvTerritory.uk &&
        (text.length < 2 || text.length > 7)) {
      return;
    }

    await _debounceableVehicleSearch.call(() async {
      state.vehicleSearchComplete = false;
      notifyListeners();

      // Clean input and extract VRNs
      final cleanedInput = text.replaceAll(',', ' ');
      final vrns = extractVINs(cleanedInput)
          .map((e) => e.trim())
          .where((e) => e.isNotEmpty)
          .toSet() // remove duplicates
          .toList();

      if (vrns.isEmpty) return;

      final result = await vehicleService.getVehicleAsync(
        VehicleLookupModel(
          vehicleIdentifiers: vrns,
          territoryCode: activeTerritory.territoryCode(),
          returnVehicleBatchQuote: false,
          quoteSource: 'VinScrap',
        ),
      );

      responseCheck(result);
      state.vehicleSearchComplete = true;
      notifyListeners();

      if (result.response != null && result.response!.isNotEmpty) {
        addVehicle(result.response!);

        for (final vrn in vrns) {
          final matchFound = result.response!.any(
            (element) =>
                element.vehicleReg?.toLowerCase() == vrn.toLowerCase() ||
                element.vin?.toLowerCase() == vrn.toLowerCase(),
          );

          if (!matchFound && !state.failedVrnLookUps.contains(vrn)) {
            state.failedVrnLookUps.add(vrn);
          }
        }
      } else {
        for (final vrn in vrns) {
          if (!state.failedVrnLookUps.contains(vrn)) {
            state.failedVrnLookUps.add(vrn);
          }
        }
      }
    });
  }

Future<bool> createBatchQuote({
  required bool isShortVIN,
  required String make,
  required String model,
  int? year,
  double? engineSize,
}) async {
    final lookedUpVehicle = state.vehicleDescriptions.first;

    if (isShortVIN && activeTerritory == ElvTerritory.usa) {
      lookedUpVehicle.make = make;
      lookedUpVehicle.model = model;
      lookedUpVehicle.year = year;
      lookedUpVehicle.engineSize = engineSize;

      final result = await vehicleService.updateVehicleWithShortVIN(
        lookedUpVehicle,
        activeTerritory.territoryCode(),
      );

      if (!result.isOk) return false;
    }

    final vehiclePricingRequests = [
      VehicleListItem(
        numberOfAlloyWheels: activeTerritory.quoteNumberOfAlloys(),
        numberOfSteelWheels: 0,
        numberOfChromeWheels: 0,
        hasOriginalCatalyticConverter: activeTerritory.quoteWithCat(),
        fuelType: lookedUpVehicle.fuelType!.extractFuelType(),
        knownVehicleId: lookedUpVehicle.id,
        vin: lookedUpVehicle.vin,
        overrideKerbWeight: lookedUpVehicle.curbWeight?.toInt() != null &&
                lookedUpVehicle.curbWeight!.toInt() > 0
            ? lookedUpVehicle.curbWeight?.toInt()
            : activeTerritory.defaultVehicleKerbWeight(),
        hasBattery: activeTerritory.quoteWithBattery(),
        vehicleRolls: false,
        engineRuns: false,
        hasLockingWheelNutKey: false,
      ),
    ];

    final quotingCustomerDetails = state.account == null
        ? QuotingCustomerDetails(
            accountNo: ElvConstants.ldecashAccountNumber,
            firstName: 'Weighbridge',
            lastName: 'Operator',
          )
        : QuotingCustomerDetails(accountNo: state.account!.code!);

    final multiPricingRequest = SimpleBundleRequestModel(
      vehicleList: vehiclePricingRequests,
      quotingCustomerDetails: quotingCustomerDetails,
      territoryCode: activeTerritory.territoryCode(),
      numberOfDeliveredPricesRequired: 1,
      preselectedYardCode:
          state.yard?.yardCode ?? state.otherYards.first.yardCode,
      b2BorB2C: ElvConstants.b2b,
      quoteSource: ElvConstants.quoteSourceVinScrap,
    );

    final priceAndCreateBatchQuoteResponse =
        await quoteService.newSimpleCreateBatchQuote(body: multiPricingRequest);

    if (!responseCheck(priceAndCreateBatchQuoteResponse)) {
      return false;
    }

    if (priceAndCreateBatchQuoteResponse.response != null &&
        priceAndCreateBatchQuoteResponse.response!.batchQuotes.isNotEmpty) {
      final batchQuoteId =
          priceAndCreateBatchQuoteResponse.response!.batchQuotes.first.id;
      final confirmationResponse = await quoteService.confirmBatchQuoteAsync(
        batchQuoteId: batchQuoteId,
      );
      if (!responseCheck(confirmationResponse)) {
        return false;
      }
    }

    // reset batch quote state
    state.batchQuote = null;
    state.vinSearchText = null;
    state.speculativeQuote = null;
    state.account = null;
    state.vehicleDescriptions.clear();

    vinController.text = '';
    accountSelectController.text = '';
    notifyListeners();
    return true;
  }

  void confirmQuote() {}

  void addVehicle(List<VehicleDetail> value) {
    state.vehicleDescriptions = [];
    state.vehicleDescriptions.add(value.first);
    notifyListeners();
  }

  List<String> extractVINs(String text) {
    final vinRegex = RegExp(r'\b(?:[A-HJ-NPR-Z0-9]{17}|[A-Z0-9]{1,7})\b');

    final matches = vinRegex.allMatches(text);

    final vins = <String>[];
    for (final match in matches) {
      vins.add(match.group(0)!);
      text.replaceAll(match.group(0)!, '');
    }

    final remaining = text.split(' ');
    for (final vin in remaining) {
      if (!vins.contains(vin)) {
        vins.add(vin);
      }
    }

    return vins;
  }

List<String> removeDuplicateVRNs(
    List<String> vrnsToSearch,
  ) {
    final toRemove = <String>[];

    for (final i in vrnsToSearch) {
      if (state.vehicleDescriptions.any(
        (element) =>
            element.vehicleReg!.toLowerCase() == i.toLowerCase() ||
            element.vin!.toLowerCase() == i.toLowerCase(),
      )) {
        toRemove.add(i);
      }
    }
    for (final r in toRemove) {
      vrnsToSearch.remove(r);
    }

    final sortedL = vrnsToSearch.toSet().toList();

    return sortedL;
  }

  bool responseCheck<T>(ApiResponse<T> result) {
    if (!result.isOk) {
      state.apiError = true;
      state.apiErrorMessage = result.errorMessage;
    }

    return result.isOk;
  }

  void removeVehicle(VehicleDetail vehicle) {
    state.vehicleDescriptions
        .removeWhere((element) => element.vin == vehicle.vin);
    notifyListeners();
  }

  Future<void> setYard(
    SettingsController settingsController,
  ) async {
    final usersYards = UserInfoService.instance?.userInfo.yards ?? [];
    await settingsController.loadUserSettings();
    final territoryCode = settingsController.territory;

    state.otherYards.clear();
    final userTerritories =
        UserInfoService.instance?.userInfo.territories ?? [];

    final current = userTerritories
        .where((element) => element.code == territoryCode)
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

    final activeYards = await yardService.getElvYardsFromUserYards(yards);

    state.otherYards = activeYards;
    state.otherYards.sortBy((element) => element.yardCode);

    if (state.otherYards.isNotEmpty) {
      state.yard = state.otherYards.first;
    }
    notifyListeners();
  }

  String getYardName() {
    final yardCode = state.yard?.yardCode ?? 'NOT SELECTED';
    final yardName = state.yard?.name ?? 'NOT SELECTED';
    return '($yardCode) $yardName';
  }

  void selectYard(Yard e) {
    state.yard = e;
    notifyListeners();
  }

  void setAccount(Account account) {
    state.account = account;
    accountSelectController.text = '${account.name} (${account.code})';
    notifyListeners();
  }
}
