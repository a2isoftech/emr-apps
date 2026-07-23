import 'package:emr_one_core/widgets/filter/emr_filter_controller.dart';
import 'package:emr_one_crm/emr_one_crm_constants.dart';
import 'package:emr_one_crm/extensions/account_type_extensions.dart';
import 'package:emr_one_crm/models/account_type.dart';
import 'package:emr_sharedtypes/models/account_type.dart';

class AccountTypeProvider {
  static Future<List<AccountType>> getSuggestions(
    String query,
    EmrFilterController filterController,
  ) async {
    final pattern = RegExp(query, caseSensitive: false);

    final accountTypes = AccountTypeEnum.values.displayNames();
    return accountTypes
        .where(
          (e) => e.name.contains(pattern),
        )
        .toList();
  }

  static Future<List<AccountType>> getTradeRSearchSuggestions(
    String query,
    EmrFilterController filterController,
  ) async {
    final pattern = RegExp(query, caseSensitive: false);

    final accountTypes = AccountTypeEnum.values.displayNames();
    return accountTypes
        .where(
          (e) =>
              e.name.contains(pattern) &&
              !AccountTypeConstants.excludedAccountTypeNames
                  .contains(e.name.toLowerCase()),
        )
        .toList();
  }
}
