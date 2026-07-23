import 'package:emr_account_registration/models/country_data.dart';
import 'package:emr_one_accounts/screens/account_management/models/key_value_pair.dart';

String getCountryTitle(String countryCode) {
  final countryName = CountryData.getCountryData(countryCode)?.fullName;

  return countryName == null ? countryCode : '$countryCode - $countryName';
}

String? countryCode(CountrySelection? country) => country?.value;
