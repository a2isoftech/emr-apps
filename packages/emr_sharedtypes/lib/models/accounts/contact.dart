import 'package:emr_sharedtypes/emr_sharedtypes.dart';

class Contact {
  Contact({
    required this.id,
    required this.contactTypes,
    required this.title,
    required this.firstName,
    required this.lastName,
    required this.contactPreferences,
    required this.proofOfIdentification,
    required this.proofOfAddress,
    this.address,
    this.dateOfBirth,
    this.jobTitle,
    this.middleName,
    this.faxNumber,
    this.signature,
  });

  final String? id;
  final List<String>? contactTypes;
  final String? title;
  final String? jobTitle;
  final String? firstName;
  final String? lastName;
  final String? middleName;
  final String? faxNumber;

  Address? address;
  String? addressKey;
  List<Identification>? proofOfIdentification;
  List<Identification>? proofOfAddress;
  ContactPreference contactPreferences;
  MediaAsset? signature;
  DateTime? dateOfBirth;
}
