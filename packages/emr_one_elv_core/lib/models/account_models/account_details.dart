import 'package:emr_one_elv_core/constants.dart';

class AccountDetails {
  AccountDetails({
    required this.accountNumber,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.contact,
  });

  factory AccountDetails.init() => AccountDetails(
        accountNumber: ElvConstants.ldecashAccountNumber,
        firstName: '',
        lastName: '',
        email: '',
        contact: '',
      );

  String accountNumber;
  String firstName;
  String lastName;
  String email;
  String contact;
}
