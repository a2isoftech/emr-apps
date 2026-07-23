import 'package:collection/collection.dart';
import 'package:emr_one_portal/graphql/cam_raven/graphql.dart';
import 'package:emr_one_portal/portal.dart';
import 'package:emr_one_portal_tickets/graphql/graphql.dart';

extension ToAccountDetailsModel on Query$GetAccountDetails$account {
  AccountDetailsModel toAccountDetailsModel(String partyAccountNumber) {
    final mainContact = accountContacts?.firstWhereOrNull(
      (element) =>
          element!.value.contactTypes.any((y) => y == Enum$ContactType.MAIN),
    );

    final bankAccount = bankAccounts?.firstWhereOrNull(
      (element) => element!.accountNumber.isNotEmpty,
    );

    final address = accountAddresses
        ?.firstWhereOrNull((a) => a!.key == mainContact?.value.addressKey);
    return AccountDetailsModel(
      partyAccountNumber: partyAccountNumber,
      accountName: _mapContactName(mainContact),
      accountDetails: Account(
        address1: address?.address1 ?? 'N/A',
        address2: address?.address2 ?? 'N/A',
        address3: address?.address3 ?? 'N/A',
        contactEmail: _mapContactEmail(mainContact)!,
        contactName: _mapContactName(mainContact),
        countryCode: address?.countryCode ?? 'N/A',
        county: address?.address5 ?? 'N/A',
        eoriNumber: '',
        faxNumber: mainContact?.value.contactPreferences.fax.value ?? '',
        houseNumber: address?.address1 ?? 'N/A',
        jobTitle: 'N/A',
        mobileNumber: _mapContactTel(mainContact)!,
        postCode: address?.postCode ?? 'N/A',
        telephoneNumber: _mapContactTel(mainContact)!,
        town: address?.address4 ?? 'N/A',
        vatNumber: businessDetail?.vatNumber ?? 'N/A',
        website: 'N/A',
      ),
      bankDetails: BankDetails(
        accountName: bankAccount?.accountHolderName ?? 'N/A',
        accountNumber: bankAccount?.accountNumber ?? 'N/A',
        bankName: bankAccount?.bankName ?? 'N/A',
        iban: bankAccount?.ibanCode ?? 'N/A',
        paymentTerms:
            businessDetail?.paymentTerm?.financialPaymentMethod ?? 'N/A',
        ref: bankAccount?.reference ?? 'N/A',
        sortCode: bankAccount?.sortCode ?? 'N/A',
        swift: bankAccount?.swiftCode ?? 'N/A',
      ),
    );
  }

  static String _mapContactName(
    Query$GetAccountDetails$account$accountContacts? contact,
  ) {
    var name = 'UNKNOWN';
    if (contact?.value.firstName != null && contact?.value.lastName != null) {
      name = '${contact?.value.firstName} ${contact?.value.lastName}';
    }
    return name;
  }

  static String? _mapContactEmail(
    Query$GetAccountDetails$account$accountContacts? contact,
  ) {
    final emailAddress = contact?.value.contactPreferences.email.value;

    if (emailAddress != null) {
      return emailAddress;
    }
    return '';
  }

  static String? _mapContactTel(
    Query$GetAccountDetails$account$accountContacts? contact,
  ) {
    final phoneNo = contact?.value.contactPreferences.phone.value;
    final mobileNo = contact?.value.contactPreferences.mobile.value;

    if (phoneNo != null) {
      return phoneNo;
    } else if (mobileNo != null) {
      return mobileNo;
    } else {
      return '';
    }
  }
}

extension FromAccountDetailsModel on AccountDetailsModel {
  Input$AccountChangeRequestInput toAccountChangeRequestInput(
    String? partyName,
    AccountDetailsModel newModel,
  ) {
    final fields = <Input$AccountFieldChangedInput>[];
    _addFieldIfRequired(
      fields,
      'address1',
      accountDetails.address1,
      newModel.accountDetails.address1,
    );
    _addFieldIfRequired(
      fields,
      'address2',
      accountDetails.address2,
      newModel.accountDetails.address2,
    );
    _addFieldIfRequired(
      fields,
      'address3',
      accountDetails.address3,
      newModel.accountDetails.address3,
    );
    _addFieldIfRequired(
      fields,
      'contactEmail',
      accountDetails.contactEmail,
      newModel.accountDetails.contactEmail,
    );
    _addFieldIfRequired(
      fields,
      'contactName',
      accountDetails.contactName,
      newModel.accountDetails.contactName,
    );
    _addFieldIfRequired(
      fields,
      'countryCode',
      accountDetails.countryCode,
      newModel.accountDetails.countryCode,
    );
    _addFieldIfRequired(
      fields,
      'county',
      accountDetails.county,
      newModel.accountDetails.county,
    );
    _addFieldIfRequired(
      fields,
      'eoriNumber',
      accountDetails.eoriNumber,
      newModel.accountDetails.eoriNumber,
    );
    _addFieldIfRequired(
      fields,
      'faxNumber',
      accountDetails.faxNumber,
      newModel.accountDetails.faxNumber,
    );
    _addFieldIfRequired(
      fields,
      'houseNumber',
      accountDetails.houseNumber,
      newModel.accountDetails.houseNumber,
    );
    _addFieldIfRequired(
      fields,
      'jobTitle',
      accountDetails.jobTitle,
      newModel.accountDetails.jobTitle,
    );
    _addFieldIfRequired(
      fields,
      'mobileNumber',
      accountDetails.mobileNumber,
      newModel.accountDetails.mobileNumber,
    );
    _addFieldIfRequired(
      fields,
      'postCode',
      accountDetails.postCode,
      newModel.accountDetails.postCode,
    );
    _addFieldIfRequired(
      fields,
      'telephoneNumber',
      accountDetails.telephoneNumber,
      newModel.accountDetails.telephoneNumber,
    );
    _addFieldIfRequired(
      fields,
      'town',
      accountDetails.town,
      newModel.accountDetails.town,
    );
    _addFieldIfRequired(
      fields,
      'vatNumber',
      accountDetails.vatNumber,
      newModel.accountDetails.vatNumber,
    );
    _addFieldIfRequired(
      fields,
      'website',
      accountDetails.website,
      newModel.accountDetails.website,
    );
    _addFieldIfRequired(
      fields,
      'accountName',
      bankDetails.accountName,
      newModel.bankDetails.accountName,
    );
    _addFieldIfRequired(
      fields,
      'accountNumber',
      bankDetails.accountNumber,
      newModel.bankDetails.accountNumber,
    );
    _addFieldIfRequired(
      fields,
      'bankName',
      bankDetails.bankName,
      newModel.bankDetails.bankName,
    );
    _addFieldIfRequired(
      fields,
      'iban',
      bankDetails.iban,
      newModel.bankDetails.iban,
    );
    _addFieldIfRequired(
      fields,
      'paymentTerms',
      bankDetails.paymentTerms,
      newModel.bankDetails.paymentTerms,
    );
    _addFieldIfRequired(
      fields,
      'ref',
      bankDetails.ref,
      newModel.bankDetails.ref,
    );
    _addFieldIfRequired(
      fields,
      'sortCode',
      bankDetails.sortCode,
      newModel.bankDetails.sortCode,
    );
    _addFieldIfRequired(
      fields,
      'swift',
      bankDetails.swift,
      newModel.bankDetails.swift,
    );

    return Input$AccountChangeRequestInput(
      accountName: accountName,
      requestedBy: partyName,
      fields: fields,
    );
  }

  void _addFieldIfRequired(
    List<Input$AccountFieldChangedInput> fields,
    String name,
    String oldValue,
    String newValue,
  ) {
    if (oldValue.toLowerCase() != newValue.toLowerCase()) {
      fields.add(
        Input$AccountFieldChangedInput(
          name: name,
          oldValue: oldValue,
          newValue: newValue,
        ),
      );
    }
  }
}
