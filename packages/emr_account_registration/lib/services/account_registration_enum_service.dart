import 'package:collection/collection.dart';
import 'package:emr_account_registration/emr_account_registration_constants.dart';
import 'package:emr_account_registration/services/logging_service.dart';
import 'package:emr_core_api/emr_core_api.dart';

class AccountRegistrationEnumService {
  static TEnum? stringToEnum<TEnum>(String enumString, List<TEnum> enumValues) {
    if (enumString.isNotEmpty && enumString.contains('.')) {
      enumString = enumString.split('.').last;
    }
    return enumValues.firstWhereOrNull(
      (e) => e.toString().split('.').last == enumString,
    );
  }

  static Enum$CountryId? convertToCountryId(String val) {
    try {
      if (val.isEmpty || val == 'GBR') {
        return Enum$CountryId.UK;
      }
      if (val == 'USA') {
        return Enum$CountryId.US;
      }

      final result = Enum$CountryId.values.firstWhere(
        (e) =>
            e.toString() ==
            (val.startsWith(r'Enum$CountryId') ? val : 'Enum\$CountryId.$val'),
      );
      return result;
    } catch (e) {
      LoggingService.logToConsole('Error converting to Enum\$CountryId: $e');
      return null;
    }
  }

  static String convertFromCountryId(Enum$CountryId? val) {
    if (val == null) {
      return AccountRegistrationStrings.defaultCountry;
    }
    final result = val.toString().replaceAll(r'Enum$CountryId.', '');
    return result;
  }
}
