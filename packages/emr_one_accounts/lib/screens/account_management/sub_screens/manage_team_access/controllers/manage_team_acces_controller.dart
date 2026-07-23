import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_accounts/emr_one_accounts.dart';
import 'package:emr_one_accounts/screens/account_management/sub_screens/manage_team_access/models/edit_team_access_form_data.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/material.dart';

class ManageTeamAccessController extends AccountManagementBaseController {
  ManageTeamAccessController({required this.coreApiService});

  Account? account;

  Team? team;

  final CoreApiService coreApiService;

  GlobalKey<FormState>? accountTeamFormKey;

  EditTeamAccessFormData? _formData;

  bool isInEditMode = false;

  EditTeamAccessFormData get data => _formData ?? EditTeamAccessFormData(null);

  final ValueNotifier<String> errorMessage = ValueNotifier<String>('');
  @override
  void toggleProcessing({bool value = false}) {
    if (processing != value) {
      processing = value;
      notifyListeners();
    }
  }

  @override
  bool isProcessing() => processing;

  @override
  void reset() {
    processing = false;
    team = null;
    errorMessage.value = '';
    notifyListeners();
  }

  @override
  void setAccount(Account? a) {
    account = a;
  }

  @override
  void dispose() {
    // Clean up listeners
    _formData = null;
    isFormValid.dispose();
    errorMessage.dispose();
    super.dispose();
  }

  void setTeam(Team? team) {
    isInEditMode = team != null;
    this.team = team;
    _formData = EditTeamAccessFormData(team);
  }

  void notify() {
    notifyListeners();
  }

  Future<List<Team>> getTeams(String searchText) async {
    return coreApiService.userAccess.getTeams(searchText);
  }

  @override
  Future<(bool success, String error)> update() async {
    throw UnimplementedError();
  }

  @override
  Future<(bool success, String error)> delete() async {
    toggleProcessing(value: true);

    if (account?.code?.isEmpty ?? true) {
      toggleProcessing();
      return (false, 'Account not found');
    }

    final (success, error) = await coreApiService.accountService
        .deleteAccountTeam(account!.id!, team!.id);
    toggleProcessing();

    return (success, error ?? '');
  }

  @override
  Future<(bool, String)> add() async {
    toggleProcessing(value: true);

    if (account?.code?.isEmpty ?? true) {
      toggleProcessing();
      return (false, 'Account not found');
    }

    final gqlCreateTeam = Input$AccountTeamInput(
      accountId: account!.id!,
      teamId: _formData!.teamNotifier.value!.id,
    );

    final (success, error) = await coreApiService.accountService.addAccountTeam(
      gqlCreateTeam,
    );
    toggleProcessing();

    return (success, error ?? '');
  }
}
