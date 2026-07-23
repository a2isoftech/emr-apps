import 'package:emr_one_elv_core/models/account_models/account_models.dart';
import 'package:emr_one_elv_quotes/extensions/extensions.dart';

extension $AccountModel on AccountModel {
  String getContactName() {
    return '${(title ?? '').capitalize()} ${firstName.capitalize()} '
            '${middleName.capitalize()} '
            '${lastName.capitalize()}'
        .trim()
        .replaceAll('  ', ' ');
  }
}
