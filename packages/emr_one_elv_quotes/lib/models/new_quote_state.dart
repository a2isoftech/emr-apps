import 'package:emr_one_elv_core/models/batch_quote_bundle_response.dart';
import 'package:emr_one_elv_core/models/collection_operator.dart';
import 'package:emr_one_elv_quotes/controller/manual_vehicle_lookup/manual_vehicle_lookup_state.dart';
import 'package:emr_one_elv_quotes/models/existing_account_model.dart';
import 'package:emr_one_elv_quotes/models/models.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/material.dart';

class NewQuoteState {
  NewQuoteState({
    required this.existingAccountState,
    required this.newAccountState,
    required this.manualVehicleLookupState,
    required this.otherYards,
    required this.accountCreationSuccess,
    required this.apiError,
    required this.apiErrorMessage,
    required this.collectionOperators,
    this.temporaryAccountStore,
    this.batchQuote,
  });

  factory NewQuoteState.initial() => NewQuoteState(
    existingAccountState: ExistingAccountModel.initial(),
    newAccountState: NewAccountModel.initial(),
    manualVehicleLookupState: ManualVehicleLookUpState(),
    otherYards: [],
    accountCreationSuccess: false,
    apiError: false,
    apiErrorMessage: '',
    collectionOperators: {},
  );

  ExistingAccountModel existingAccountState;
  NewAccountModel newAccountState;

  AccountModel? temporaryAccountStore;
  AccountLocation? temporaryAccountLocation;
  ManualVehicleLookUpState manualVehicleLookupState;
  List<Yard> otherYards = [];
  bool accountCreationSuccess = false;
  BatchQuoteBundleResponse? batchQuoteBundle;
  BatchQuoteModel? batchQuote;
  bool apiError = false;
  String apiErrorMessage = '';
  ScrollController scrollController = ScrollController();
  Map<String, List<CollectionOperator>> collectionOperators = {};
  int currentSelectBatchQuoteId = 0;
}
