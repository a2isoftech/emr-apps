import 'package:emr_one_elv_quotes/elv_quotes.dart';
import 'package:emr_one_elv_quotes/models/existing_account_model.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';

class QuickQuotesNewState {
  QuickQuotesNewState({
    required this.existingAccountState,
    required this.otherYards,
    required this.leadSources,
    this.selectedAccount,
    this.selectedYard,
  });

  factory QuickQuotesNewState.initial() => QuickQuotesNewState(
    existingAccountState: ExistingAccountModel.initial(),
    otherYards: [],
    leadSources: {},
  );

  ExistingAccountModel existingAccountState;
  AccountModel? selectedAccount;
  AccountLocation? selectionLocation;
  List<Yard> otherYards = [];
  Yard? selectedYard;
  Map<int, String> leadSources;
}
