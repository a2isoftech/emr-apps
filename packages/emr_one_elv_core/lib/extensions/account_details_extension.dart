import 'package:emr_one_elv_core/models/account_models/account_details.dart';
import 'package:emr_one_elv_core/models/account_models/account_model.dart';

extension $accountDetails on AccountDetails {
  bool accountDetailsMatch(AccountModel? accountModel) {
    return firstName == (accountModel?.firstName ?? '') &&
        lastName == (accountModel?.lastName ?? '') &&
        email == (accountModel?.email ?? '');
  }
}
