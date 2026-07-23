import 'package:emr_one_elv_core/models/account_models/account_models.dart';
import 'package:emr_one_elv_core/models/address.dart';
import 'package:emr_sharedtypes/enums/account_type_enum.dart';

class Defaults {
  static AccountModel account() => AccountModel(
        accountNumber: '',
        accountLocationCode: null,
        defaultYardCode: 'XXXXXX',
        lastName: '',
        contactId: 0,
        address: Address(line1: '', postCode: ''),
        firstName: '',
        middleName: '',
        email: '',
        landlineNumber: '',
        mobileNumber: '',
        name: '',
        accountType: AccountTypeEnum.none,
      );
}
