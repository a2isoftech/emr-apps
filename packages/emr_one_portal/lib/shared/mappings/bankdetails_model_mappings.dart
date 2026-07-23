import 'package:collection/collection.dart';
import 'package:emr_one_portal/graphql/cam_raven/graphql.dart';
import 'package:emr_one_portal/portal.dart';

extension ToBankDetailsModel on Query$GetBankDetails$account {
  BankDetails toBankDetailsModel() {
    final bankAccount = bankAccounts?.firstWhereOrNull(
      (element) => element!.accountNumber.isNotEmpty,
    );
    return BankDetails(
      accountName: bankAccount?.accountHolderName ?? 'N/A',
      accountNumber: bankAccount?.accountNumber ?? 'N/A',
      bankName: bankAccount?.bankName ?? 'N/A',
      iban: bankAccount?.ibanCode ?? 'N/A',
      paymentTerms: 'N/A',
      ref: bankAccount?.reference ?? 'N/A',
      sortCode: bankAccount?.sortCode ?? 'N/A',
      swift: bankAccount?.swiftCode ?? 'N/A',
    );
  }
}
