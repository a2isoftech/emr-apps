import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_accounts/emr_one_accounts.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/material.dart';

class ManageLoyaltyCardsController extends AccountManagementBaseController {
  ManageLoyaltyCardsController({required this.coreApiService});

  final CoreApiService coreApiService;

  Account? account;
  LoyaltyCard? loyaltyCard;

  GlobalKey<FormState>? cardsFormKey;

  final ValueNotifier<bool> canAddLoyaltyCard = ValueNotifier(false);
  ValueNotifier<String> showErrorMessage = ValueNotifier('');

  EditLoyaltyCardsFormData? _formData;
  LoyaltyCard? _originalCard;

  EditLoyaltyCardsFormData get data =>
      _formData ?? EditLoyaltyCardsFormData('', '', null);

  String _safeLocationCode() => '';

  @override
  void setAccount(Account? a) {
    account = a;
  }

  @override
  void reset() {
    processing = false;
    loyaltyCard = null;
    _originalCard = null;
    _formData = null;
    notifyListeners();
  }

  @override
  void dispose() {
    isFormValid.dispose();
    canAddLoyaltyCard.dispose();
    super.dispose();
  }

  Future<List<KeyValuePair<Enum$PrepayCardIssuer, String>>> issuerTypes(
    String _,
  ) async {
    return Enum$PrepayCardIssuer.values
        .map((v) => (key: v, value: v.toString().split('.').last))
        .toList();
  }

  void setLoyaltyCard(LoyaltyCard? card) {
    loyaltyCard = card;
    if (card == null) {
      _formData = EditLoyaltyCardsFormData('', '', DateTime.now().toUtc());
      return;
    }

    _originalCard = LoyaltyCard(
      card.code,
      card.locationCode,
      card.issueDate,
      card.provider,
    );

    _formData = EditLoyaltyCardsFormData(
      card.code,
      card.locationCode,
      card.issueDate,
    );

    _formData!.provider =
        EnumExtensions.getEnumValueNotifier<Enum$PrepayCardIssuer>(
          card.provider ?? '',
          Enum$PrepayCardIssuer.values,
        );
  }

  /// ADD
  @override
  Future<(bool success, String error)> add() async {
    toggleProcessing(value: true);

    if (account?.id == null) {
      toggleProcessing();
      return (false, 'Account not found');
    }

    final (success, error) = await coreApiService.accountService
        .addAccountLoyaltyCards(
          Input$CreateOrUpdateAccountLoyaltyCardInput(
            accountId: account!.id!,
            cardCode: data.code.value!,
            issuedLocationCode: _safeLocationCode(),
            issuedOnUtc: data.issueDate.value!,
            provider: data.provider.value.value,
          ),
        );

    if (success) {
      account!.loyaltyCards.add(
        LoyaltyCard(
          data.code.value,
          '',
          data.issueDate.value,
          data.provider.value.value,
        ),
      );
      notifyListeners();
    }

    toggleProcessing();
    return (success, error ?? '');
  }

  /// UPDATE
  @override
  Future<(bool success, String error)> update() async {
    if (account?.id == null || loyaltyCard == null) {
      return (false, 'Loyalty card not found');
    }

    if (!_hasChanges()) {
      return (false, 'No changes detected');
    }

    toggleProcessing(value: true);

    final (success, error) = await coreApiService.accountService
        .updateAccountLoyaltyCards(
          Input$CreateOrUpdateAccountLoyaltyCardInput(
            accountId: account!.id!,
            cardCode: data.code.value!,
            issuedLocationCode: _safeLocationCode(),
            issuedOnUtc: data.issueDate.value!,
            provider: data.provider.value.value,
          ),
        );

    if (success) {
      final updatedCard = LoyaltyCard(
        loyaltyCard!.code,
        '',
        data.issueDate.value,
        data.provider.value.value,
      );

      final index = account!.loyaltyCards.indexWhere(
        (c) => c.code == loyaltyCard!.code,
      );

      if (index != -1) {
        account!.loyaltyCards[index] = updatedCard;
        loyaltyCard = updatedCard;
      }

      _originalCard = LoyaltyCard(
        updatedCard.code,
        updatedCard.locationCode,
        updatedCard.issueDate,
        updatedCard.provider,
      );

      notifyListeners();
    }

    toggleProcessing();
    return (success, error ?? '');
  }

  bool _hasChanges() {
    if (_originalCard == null) return true;

    return _originalCard!.issueDate != data.issueDate.value ||
        _originalCard!.provider != data.provider.value.value;
  }

  /// DELETE
  @override
  Future<(bool success, String error)> delete() async {
    toggleProcessing(value: true);

    if (account?.id == null || loyaltyCard == null) {
      toggleProcessing();
      return (false, 'Loyalty card not found');
    }

    final (success, error) = await coreApiService.accountService
        .deleteAccountLoyaltyCards(
          Input$DeleteAccountLoyaltyCardsInput(
            accountId: account!.id!,
            cardCode: loyaltyCard!.code,
          ),
        );

    toggleProcessing();
    return (success, error ?? '');
  }
}
