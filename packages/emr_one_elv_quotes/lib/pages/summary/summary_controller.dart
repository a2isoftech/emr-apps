import 'dart:async';

import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_elv_core/constants.dart';
import 'package:emr_one_elv_core/models/api_response.dart';
import 'package:emr_one_elv_core/models/collection_operator.dart';
import 'package:emr_one_elv_core/models/models.dart';
import 'package:emr_one_elv_core/models/quote_models/update_collection_detail.dart';
import 'package:emr_one_elv_quotes/models/models.dart';
import 'package:emr_one_elv_quotes/services/services.dart';
import 'package:flutter/material.dart';

class SummaryController extends ChangeNotifier {
  SummaryController({
    required this.emailService,
    required this.quoteService,
    required this.accountService,
    required this.vehicleService,
    required this.activeTerritory,
    required this.readOnly,
    required this.addressService,
    required this.collectionOperatorService,
    required this.allowInspectionReopen,
    required this.usaAllowChromeWheels,
    required this.ukAllowChromeWheels,
    required this.allowEditBankDetails,
    required this.usaDisplayMultipleCats,
    required this.ukDisplayMultipleCats,
    required this.yardService,
  });

  final EmailService emailService;
  final QuoteService quoteService;
  final ELVAccountService accountService;
  final VehicleService vehicleService;
  final ElvTerritory activeTerritory;
  final bool readOnly;
  final AddressService addressService;
  final CollectionOperatorService collectionOperatorService;
  final bool allowInspectionReopen;
  final bool usaAllowChromeWheels;
  final bool ukAllowChromeWheels;
  final bool allowEditBankDetails;
  final bool usaDisplayMultipleCats;
  final bool ukDisplayMultipleCats;
  final YardService yardService;

  final Map<String, List<CollectionOperator>> collectionOperators = {};
  bool get isRetailAccount =>
      batchQuote != null &&
      batchQuote!.accountModel != null &&
      batchQuote!.accountModel!.accountNumber.startsWith('N');

  BatchQuoteModel? batchQuote;
  late int batchQuoteID;
  bool failedLoad = false;
  bool showVehicleDialog = false;
  bool showImageDialog = false;
  bool successfullySentForPayment = false;
  bool apiError = false;
  String apiErrorMessage = '';
  List<String> abandonReasons = [];

  Future<void> init({required int id}) async {
    await Future.wait([loadAbandonReasons(), loadBatchQuoteEvent(id: id)]);
    notifyListeners();
  }

  Future<void> loadBatchQuoteEvent({required int id}) async {
    batchQuoteID = id;
    try {
      final response = await quoteService.getBatchQuote(id);
      responseCheck(response);
      batchQuote = response.response;
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  Future<List<CollectionOperator>> loadCollectionOperatorList() async {
    return collectionOperatorService.getCollectionOperators(
      '',
      activeTerritory.territoryCode(),
    );
  }

  Future<void> getCollectionOperatorsByHaulagePriceMatrices() async {
    try {
      if (collectionOperators.isEmpty) {
        collectionOperators.addAll(
          await collectionOperatorService
              .getCollectionOperatorsByHaulagePriceMatrices(
                territoryCode: activeTerritory.territoryCode(),
                batchquoteBundleId: batchQuote!.batchQuoteBundleId!,
              ),
        );
      }

      notifyListeners();
    } on Exception catch (ex, trace) {
      EmrLogger.error(
        ElvConstants.loggerCollectionOperatorError,
        error: ex,
        stackTrace: trace,
        params: {
          'territoryCode': activeTerritory.toString(),
          'postCode': batchQuote?.postCode ?? 'No postcode on batchquote',
          'yardCode': batchQuote?.yardCode ?? 'No yardcode on batchquote',
        },
      );
    }
  }

  Future<void> updateCollectionDetail(
    int batchQuoteId,
    UpdateCollectionDetail updatedCollectionDetail,
    String territoryCode,
  ) async {
    final response = await collectionOperatorService.updateCollectionDetail(
      batchQuoteId,
      updatedCollectionDetail,
      territoryCode,
    );

    if (response.isOk) {
      batchQuote!.collectionAndBankDetail = response.response;
      notifyListeners();
    }
  }

  Future<void> updateBankDetailAndNotes({
    required int batchQuoteId,
    required String bankSortCode,
    required String bankAccountNumber,
    required String notes,
  }) async {
    final response = await collectionOperatorService
        .updateAccountBankDetailAndNotes(
          batchQuoteId: batchQuoteId,
          bankSortCode: bankSortCode,
          bankAccountNumber: bankAccountNumber,
          notes: notes,
        );

    if (response.isOk) {
      batchQuote!.collectionAndBankDetail!.bankSortCode =
          response.response?.bankSortCode;
      batchQuote!.collectionAndBankDetail!.bankAccountNumber =
          response.response?.bankAccountNumber;
      batchQuote!.notes = response.response?.notes;
      notifyListeners();
    }
  }

  void responseCheck<T>(ApiResponse<T> result) {
    if (!result.isOk) {
      apiError = true;
      apiErrorMessage = result.errorMessage;
    }
    notifyListeners();
  }

  void resetApiError() {
    apiError = false;
    apiErrorMessage = '';
    notifyListeners();
  }

  Future<void> sendCustomerEmail({
    required BuildContext context,
    required bool isDraft,
    required bool showCat,
    required bool showWheelDetails,
    required bool showVehicleDetails,
    required bool showBattery,
    required String email,
  }) async {
    final emailSuccess = await emailService.sendEmailForBatchQuote(
      batchQuoteId: batchQuote!.id,
      showCatDetails: showCat,
      showKerbWeight: false,
      showVehicleDetails: showVehicleDetails,
      showWheelDetails: showWheelDetails,
      showBatteryDetails: showBattery,
      isDraft: isDraft,
      emails: [email],
      territoryCode: activeTerritory.territoryCode(),
    );
    responseCheck(emailSuccess);
    return;
  }

  void viewQuoteVsInspection(int quoteID) {
    quoteService.quoteVsInspection(quoteID);
  }

  Future<void> loadAbandonReasons() async {
    final response = await quoteService.getAbandonReasons(
      activeTerritory.territoryCode(),
    );
    if (response.isOk) {
      abandonReasons = response.response ?? [];
    }
  }

  Future<void> abandonBatchQuote(String abandonReason) async {
    final response = await quoteService.abandonBatchQuote(
      batchQuoteId: batchQuoteID,
      abandonReason: abandonReason,
      territoryCode: activeTerritory.territoryCode(),
    );
    if (response.isOk) {
      batchQuote = response.response;
      notifyListeners();
    }
  }

  Future<bool> reopenInspection(int quoteId) async {
    final inspectionReopened = await quoteService.reopenInspection(quoteId);
    if (inspectionReopened && batchQuote != null) {
      batchQuote!.quotes.firstWhere((q) => q.id == quoteId).quoteStatus =
          QuoteStatusEnum.inspectionInProgress;
      notifyListeners();
    }
    return inspectionReopened;
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
}
