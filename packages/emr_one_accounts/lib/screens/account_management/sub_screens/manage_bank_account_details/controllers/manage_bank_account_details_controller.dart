import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_accounts/emr_one_accounts.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:emr_sharedtypes/enums/account_type_enum.dart';
import 'package:flutter/material.dart';

class ManageBankAccountDetailsController
    extends AccountManagementBaseController {
  ManageBankAccountDetailsController({
    required this.coreApiService,
    required this.userInfoService,
  });

  Account? account;
  final CoreApiService coreApiService;
  final UserInfoService userInfoService;

  EditBankAccountDetailsFormData? _formData;

  ValueNotifier<String> showErrorMessage = ValueNotifier('');

  ValueNotifier<BankAccountComboErrorField?> bankAccountComboErrorField =
      ValueNotifier(null);

  VoidCallback? _onAccountNumberChanged;
  VoidCallback? _onSortCodeChanged;

  EditBankAccountDetailsFormData get data =>
      _formData ?? EditBankAccountDetailsFormData();

  static Enum$BankAccountType mapAccountTypeToBankAccountType(
    AccountTypeEnum type,
  ) => type == AccountTypeEnum.retail
      ? Enum$BankAccountType.PERSONAL
      : Enum$BankAccountType.BUSINESS;

  @override
  void reset() {
    processing = false;
    _detachAccountSortListeners();
    _formData = null;
    bankAccountComboErrorField.value = null;
    notifyListeners();
  }

  void _detachAccountSortListeners() {
    if (_formData != null) {
      if (_onAccountNumberChanged != null) {
        _formData!.accountNumber.removeListener(_onAccountNumberChanged!);
      }
      if (_onSortCodeChanged != null) {
        _formData!.sortCode.removeListener(_onSortCodeChanged!);
      }
      _formData!.country.removeListener(countryChanged);
    }
    _onAccountNumberChanged = null;
    _onSortCodeChanged = null;
  }

  void _clearComboValidation() => bankAccountComboErrorField.value = null;

  @override
  void setAccount(Account? a) {
    _detachAccountSortListeners();
    account = a;
    final bankAccount = (account?.bankAccounts ?? []).isNotEmpty
        ? account?.bankAccounts?.elementAt(0)
        : null;
    _formData = EditBankAccountDetailsFormData(
      accountHolderName: bankAccount?.accountHolderName,
      accountNumber: bankAccount?.accountNumber,
      address1: bankAccount?.address?.address1,
      address2: bankAccount?.address?.address2,
      address3: bankAccount?.address?.address3,
      address4: bankAccount?.address?.address4,
      address5: bankAccount?.address?.address5,
      address6: bankAccount?.address?.address6,
      bankName: bankAccount?.bankName,
      currenyCode: bankAccount?.currencyId,
      ibanCode: bankAccount?.ibanCode,
      postCode: bankAccount?.address?.postCode,
      reference: bankAccount?.reference,
      sortCode: bankAccount?.sortCode,
      swiftCode: bankAccount?.swiftCode,
      countryCurrencyLink: bankAccount?.countryCurrencyId,
    );
    setAddressString(bankAccount?.address ?? Address.empty());
    _formData!.country = EnumExtensions.getEnumValueNotifier<Enum$CountryId>(
      bankAccount?.address?.countryCode ?? 'UK',
      Enum$CountryId.values,
    );

    _formData!.bankAccountVerificationType =
        EnumExtensions.getEnumValueNotifier<Enum$BankAccountVerificationType>(
          bankAccount?.verificationType ?? '',
          Enum$BankAccountVerificationType.values,
        );
    _formData!.isFasterPay.value = bankAccount?.fasterPaymentSupported ?? false;
    _formData!.comments.value = bankAccount?.comments;

    final accountType = bankAccount == null ? mapAccountTypeToBankAccountType(
      account?.accountType ?? AccountTypeEnum.none,
    ) : Enum$BankAccountType.fromJson(bankAccount.bankAccountType
    ?? Enum$BankAccountType.NONE.toJson());
    _formData!.bankAccountType =
        EnumExtensions.getEnumValueNotifier<Enum$BankAccountType>(
          accountType.toJson(),
          Enum$BankAccountType.values,
        );
    _clearComboValidation();
    _formData!.country.addListener(countryChanged);
    setupListeners();
  }

  void countryChanged() {
    notifyListeners();
  }

  void setupListeners() {
    void checkAndCallApi(BankAccountComboErrorField lastEdited) {
      _clearComboValidation();
      final bankAccountNumber = data.accountNumber.value?.trim();
      final bankSortCode = data.sortCode.value?.trim();
      if (bankAccountNumber == null ||
          bankAccountNumber.length != 8 ||
          bankSortCode == null ||
          bankSortCode.length != 6) {
        return;
      }
      validateAndFetch(
        bankAccountNumber,
        bankSortCode,
        userInfoService,
        lastEdited,
      );
    }

    _onAccountNumberChanged = () =>
        checkAndCallApi(BankAccountComboErrorField.accountNumber);
    _onSortCodeChanged = () =>
        checkAndCallApi(BankAccountComboErrorField.sortCode);

    data.accountNumber.addListener(_onAccountNumberChanged!);
    data.sortCode.addListener(_onSortCodeChanged!);
  }

  Future<List<KeyValuePair<Enum$BankAccountType, String>>> bankAccountTypes(
    String _,
  ) async {
    return Enum$BankAccountType.values
        .where(
          (v) =>
              v == Enum$BankAccountType.PERSONAL ||
              v == Enum$BankAccountType.BUSINESS,
        )
        .map((v) => (key: v, value: v.toString().split('.').last))
        .toList();
  }

  Future<List<KeyValuePair<Enum$CountryId, String>>> countries(String _) async {
    return Enum$CountryId.values
        .map((v) => (key: v, value: v.toString().split('.').last))
        .toList();
  }

  Future<List<KeyValuePair<Enum$BankAccountVerificationType, String>>>
  bankVerificationTypes(String _) async {
    return Enum$BankAccountVerificationType.values
        .map((v) => (key: v, value: v.toString().split('.').last))
        .toList();
  }

  @override
  Future<(bool success, String error)> update() async {
    toggleProcessing(value: true);

    if (account?.code?.isEmpty ?? true) {
      toggleProcessing();
      return (false, 'Account not found');
    }
    final userInfo = await userInfoService.getUserInfo();

    final (success, error) = await coreApiService.accountService
        .updatePartyBankAccount(
          Input$CreateOrUpdatePartyBankAccountInput(
            accountId: account!.id!,
            bankAccount: Input$BankAccountInput(
              bankName: data.bankName.value!,
              bankAccountType: data.bankAccountType.value.key,
              accountHolderName: data.accountHolderName.value!,
              sortCode: data.sortCode.value!,
              accountNumber: data.accountNumber.value!,
              currencyId: data.currenyCode.value!,
              address: Input$AddressInput(
                address1: data.address1.value,
                address2: data.address2.value,
                address3: data.address3.value,
                address4: data.address4.value,
                address5: data.address5.value,
                address6: data.address6.value,
                postCode: data.postCode.value,
                countryCode: data.country.value.value,
              ),
              ibanCode: data.ibanCode.value,
              reference: data.reference.value,
              swiftCode: data.swiftCode.value,
              countryCurrencyId: data.currenyCode.value,
              verificationType: data.bankAccountVerificationType.value.key,
              fasterPaymentSupported:
                  data.isFasterPay.value,
              comments: [
                Input$CommentInput(
                  content: data.comments.value ?? '',
                  created: Input$CreatedInput(
                    userInfoId: userInfo!.id,
                    at: DateTime.now(),
                    userName: userInfo.name,
                  ),
                ),
              ],
            ),
          ),
        );

    toggleProcessing();

    return (success, error ?? '');
  }

  @override
  Future<(bool success, String error)> add() async {
    toggleProcessing(value: true);
    final userInfo = await userInfoService.getUserInfo();
    if (account?.code?.isEmpty ?? true) {
      toggleProcessing();
      return (false, 'Account not found');
    }
    final (success, error) = await coreApiService.accountService
        .addPartyBankAccount(
          Input$CreateOrUpdatePartyBankAccountInput(
            accountId: account!.id!,
            bankAccount: Input$BankAccountInput(
              bankName: data.bankName.value!,
              bankAccountType: data.bankAccountType.value.key,
              accountHolderName: data.accountHolderName.value!,
              sortCode: data.sortCode.value!,
              accountNumber: data.accountNumber.value!,
              currencyId: data.currenyCode.value!,
              address: Input$AddressInput(
                address1: data.address1.value,
                address2: data.address2.value,
                address3: data.address3.value,
                address4: data.address4.value,
                address5: data.address5.value,
                address6: data.address6.value,
                postCode: data.postCode.value,
                countryCode: data.country.value.value,
              ),
              ibanCode: data.ibanCode.value,
              reference: data.reference.value,
              swiftCode: data.swiftCode.value,
              countryCurrencyId: data.currenyCode.value,
              verificationType: data.bankAccountVerificationType.value.key,
              fasterPaymentSupported:
                  data.isFasterPay.value,
              comments: [
                Input$CommentInput(
                  content: data.comments.value ?? '',
                  created: Input$CreatedInput(
                    userInfoId: userInfo!.id,
                    at: DateTime.now(),
                    userName: userInfo.name,
                  ),
                ),
              ],
            ),
          ),
        );

    toggleProcessing();

    return (success, error ?? '');
  }

  Future<void> validateAndFetch(
    String bankAccountNumber,
    String bankSortCode,
    UserInfoService userInforSerice,
    BankAccountComboErrorField lastEditedField,
  ) async {
    final (result, bank, address, invalidCombo) = await coreApiService
        .accountService
        .validateUKBankAccount(
          bankSortCode,
          bankAccountNumber,
          userInforSerice,
        );

    if (invalidCombo) {
      bankAccountComboErrorField.value = lastEditedField;
      _formData?.bankName.value = '';
      _formData?.address1.value = '';
      _formData?.address2.value = '';
      _formData?.address3.value = '';
      _formData?.address4.value = '';
      _formData?.address5.value = '';
      _formData?.address6.value = '';
      _formData?.postCode.value = '';
      _formData?.addressString.value = '';
      return;
    }

    if (!result) {
      return;
    }

    _clearComboValidation();

    _formData?.bankName.value = bank;

    _formData?.address1.value = address.address1 ?? '';
    _formData?.address2.value = address.address2 ?? '';
    _formData?.address3.value = address.address3 ?? '';
    _formData?.address4.value = address.address4 ?? '';
    _formData?.address5.value = address.address5 ?? '';
    _formData?.address6.value = address.address6 ?? '';
    _formData?.postCode.value = address.postCode ?? '';
    setAddressString(address);
  }

  void setAddressString(Address address) {
    final address2 = address.address2!.isEmpty ? '' : ', ${address.address2},';
    final address3 = address.address3!.isEmpty ? '' : ', ${address.address3},';
    final postCode = address.postCode!.isEmpty ? '' : ', ${address.postCode}';
    final addressString = '${address.address1}$address2$address3$postCode'
        .trim()
        .replaceFirst(RegExp(r'^,|,$'), '');
    _formData?.addressString.value = addressString;
  }
}

enum BankAccountComboErrorField { accountNumber, sortCode }
