import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_accounts/emr_one_accounts.dart';
import 'package:emr_one_core/services/settings_service.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/material.dart';

class ManagePrepaymentCardsController extends AccountManagementBaseController {
  ManagePrepaymentCardsController({
    required this.coreApiService,
    required this.settingsService,
  });

  Account? account;

  List<Yard>? allowedYards;

  PrepaymentCard? prepaymentCard;

  final CoreApiService coreApiService;
  final SettingsService settingsService;

  GlobalKey<FormState>? cardsFormKey;

  final ValueNotifier<bool> canAddCard = ValueNotifier(false);

  EditPrepaymentCardsFormData? _formData;

  ValueNotifier<String> showErrorMessage = ValueNotifier('');

  EditPrepaymentCardsFormData get data =>
      _formData ??
      EditPrepaymentCardsFormData('', null, null, null, active: null);

  @override
  void reset() {
    processing = false;
    _formData = null;
    notifyListeners();
  }

  @override
  Future<void> setAccount(Account? a) async {
    account = a;
  }

  Future<void> setAllowedYards() async {
    allowedYards = await settingsService.allowedYards();
  }

  @override
  void dispose() {
    // Clean up listeners
    isFormValid.dispose();
    canAddCard.dispose();
    super.dispose();
  }

  Future<List<KeyValuePair<Enum$PrepayCardIssuer, String>>> issuerTypes(
    String _,
  ) async {
    return Enum$PrepayCardIssuer.values
        .map((v) => (key: v, value: v.toString().split('.').last))
        .where((item) => item.key == Enum$PrepayCardIssuer.SECORE)
        .toList();
  }

  Future<void> setPrepaymentCard(PrepaymentCard? prepaymentCard) async {
    this.prepaymentCard = prepaymentCard;

    _formData = EditPrepaymentCardsFormData(
      prepaymentCard?.code,
      prepaymentCard?.panDigits,
      prepaymentCard?.issueDate ?? DateTime.now().toUtc(),
      prepaymentCard != null
          ? null
          : allowedYards?.firstWhere(
              (x) =>
                  x.yardCode ==
                  settingsService.userInfoService.userInfo.defaultYard,
            ),
      active: prepaymentCard?.active,
    );

    _formData!.issuerType =
        EnumExtensions.getEnumValueNotifier<Enum$PrepayCardIssuer>(
          prepaymentCard?.issuerType ?? 'SECORE',
          Enum$PrepayCardIssuer.values,
        );

    _formData!.prepaymentCards.addAll(account?.prepaymentCards ?? []);
  }

  @override
  Future<(bool success, String error)> update() async {
    toggleProcessing(value: true);

    if (account?.code?.isEmpty ?? true) {
      toggleProcessing();
      return (false, 'Account not found');
    }

    final (success, error) = await coreApiService.accountService
        .updateAccountPrepayCard(
          Input$CreateOrUpdateAccountPrepayCardsInput(
            accountId: account!.id!,
            prepaymentCard: Input$PrepaymentCardInput(
              code: data.code.value!,
              panDigits: data.panDigits.value!,
              issuerType: data.issuerType.value.key,
              issueDate: data.issueDate.value!,
              active: true,
            ),
          ),
        );

    toggleProcessing();

    return (success, error ?? '');
  }

  @override
  Future<(bool success, String error)> delete() async {
    toggleProcessing(value: true);

    if (account?.code?.isEmpty ?? true) {
      toggleProcessing();
      return (false, 'Account not found');
    }

    final (success, error) = await coreApiService.accountService
        .deleteAccountPrepayCards(
          Input$DeletePrepayCardInput(
            accountId: account!.id!,
            prepayCardCode: data.code.value!,
          ),
        );

    toggleProcessing();

    return (success, error ?? '');
  }

  @override
  Future<(bool success, String error)> add() async {
    toggleProcessing(value: true);

    if (account?.code?.isEmpty ?? true) {
      toggleProcessing();
      return (false, 'Account not found');
    }
    final (success, error) = await coreApiService.accountService
        .addAccountPrepayCards(
          Input$CreateOrUpdateAccountPrepayCardsInput(
            accountId: account!.id!,
            prepaymentCard: Input$PrepaymentCardInput(
              code: data.code.value!,
              panDigits: data.panDigits.value!,
              issuerType: data.issuerType.value.key,
              issueDate: data.issueDate.value!,
              active: true,
            ),
          ),
        );

    toggleProcessing();

    return (success, error ?? '');
  }

  void refreshScreen() {
    notifyListeners();
  }

  Future<(bool success, String error)> replace() async {
    toggleProcessing(value: true);

    if (account?.code?.isEmpty ?? true) {
      toggleProcessing();
      return (false, 'Account not found');
    }
    final (success, error) = await coreApiService.accountService
        .replaceAccountPrepayCards(
          Input$ReplacePrepayCardInput(
            accountId: account!.id!,
            cardNumber: data.code.value ?? '',
            last4Digit: data.panDigits.value == null
                ? ''
                : data.panDigits.value!.toString(),
            yardCode: data.yard.value == null ? '' : data.yard.value!.yardCode,
          ),
        );

    toggleProcessing();

    return (success, error ?? '');
  }

  Future<List<Yard>> yardCodes(String p1) async {
    return settingsService.allowedYards();
  }
}
