import 'package:emr_account_registration/signup.dart';
import 'package:emr_one_portal/portal.dart';
import 'package:emr_one_portal_tickets/graphql/schema.graphql.dart';
import 'package:flutter/material.dart';

class ContactPreferencesController with ChangeNotifier {
  ContactPreferencesController({
    required this.accountService,
    required this.accountServicePortal,
    required this.portalUserInfoService,
    required this.portalService,
  });
  final AccountService accountService;
  final AccountServicePortal accountServicePortal;
  final CustomerUserInfoService portalUserInfoService;
  final PortalService portalService;

  late AccountModel? _model;
  late bool _canSubmit = true;

  late bool _modelRetrievedAlready = false;

  bool canSubmit() => _canSubmit;

  bool hasModel() => _model != null;

  Future<AccountModel?> loadSignupModel() async {
    if (!_modelRetrievedAlready) {
      _modelRetrievedAlready = true;
      _model = AccountModel.fromSignupModel(
        await accountService.getSignupModel(
          '',
          RunContext.portal,
          invertCanPost: false,
        ),
      );
    }
    return _model;
  }

  AccountModel model() => _model!;

  void setCanEmail({required AccountModel model, required bool? val}) {
    model.canEmail = val;
    notifyListeners();
  }

  void setCanPhone({required AccountModel model, required bool? val}) {
    model.canPhone = val;
    notifyListeners();
  }

  void setCanPost({required AccountModel model, required bool? val}) {
    model.canPost = val;
    notifyListeners();
  }

  void setCanSms({required AccountModel model, required bool? val}) {
    model.canSms = val;
    notifyListeners();
  }

  void setDefaultYardCode({required AccountModel model, required String? val}) {
    model.yardCode = val;
    notifyListeners();
  }

  Future<String?> updateContactPreferences({
    required void Function(String) onError,
    required void Function(String) onSuccess,
  }) async {
    try {
      //start processing
      _canSubmit = false;
      notifyListeners();

      //check if model is null
      if (_model == null) {
        _canSubmit = true;
        onError(
          'Contact prefernces could not be updated due to invalid model.',
        );
        return null;
      }

      //call the mutation
      final account =
          await accountServicePortal.updateContactPreferences(_model!);
      if (account == null) {
        // account number not returned so a possible error
        _canSubmit = true;
        onError('Null returned from account service');
        return null;
      }
      final accountNumber = account.replaceAll('"', '');
      onSuccess(accountNumber);
      return accountNumber;
    } catch (ex) {
      _canSubmit = true;
      LoggingService.logFailure(
        EmrOnePortalTelemetry.kUpdateContactPreferences,
        ex,
        partyAccountNo: portalUserInfoService.userInfo.partyAccountNumber,
        userId: portalUserInfoService.userInfo.id,
      );
      onError(ex.toString());
    }
    return null;
  }

  Future<List<Yard>> yardsAvalaible() async {
    if (hasModel()) {
      final countryCode = getCountryCode(_model?.locatedAtCountryCode);
      return portalService.getYards(countryCode);
    }
    return [];
  }

  Enum$CountryCode getCountryCode(String? countryShortName) {
    if (countryShortName!.isCountryUK()) {
      return Enum$CountryCode.UK;
    } else if (countryShortName.isCountryNL()) {
      return Enum$CountryCode.NL;
    } else {
      return Enum$CountryCode.US;
    }
  }
}
