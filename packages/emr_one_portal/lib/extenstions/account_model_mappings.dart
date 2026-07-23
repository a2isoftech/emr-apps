import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_portal/shared/models/account_model.dart';

extension FromSignupModelMapping on AccountModel {
  Input$UpdateSelfServeAccountInput toUpdateContactPrefs() {
    return Input$UpdateSelfServeAccountInput(
      canEmail: canEmail ?? false,
      canPhone: canPhone ?? false,
      canPost: canPost ?? false,
      canSms: canSms ?? false,
      firstName: '',
      lastName: '',
      address1: '',
      address2: '',
      address3: '',
      postCode: '',
      county: '',
      title: '',
      preferredYardCode: yardCode,
    );
  }
}
