import 'package:emr_one_portal/portal.dart';

class HomePageModel {
  HomePageModel({
    required this.firstName,
    required this.lastName,
    required this.emailAddress,
    required this.mobileNumber,
    required this.proofOfId,
    required this.proofOfAddress,
    required this.locatedAtCountry,
  });

  final String firstName;
  final String lastName;
  final String emailAddress;
  final String mobileNumber;
  final ProofModel? proofOfId;
  final ProofModel? proofOfAddress;
  final String locatedAtCountry;
}
