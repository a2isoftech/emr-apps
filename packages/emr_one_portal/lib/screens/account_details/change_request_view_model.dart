import 'package:emr_account_registration/signup.dart';
import 'package:emr_one_portal/portal.dart';

class ChangeRequestViewModel {
  ChangeRequestViewModel({
    required this.model,
    required this.changeRequestSummary,
    required this.country,
  });

  final AccountDetailsModel? model;
  final ChangeRequestSummary changeRequestSummary;
  final CountryData? country;
}
