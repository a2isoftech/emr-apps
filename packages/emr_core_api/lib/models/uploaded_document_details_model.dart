import 'package:json_annotation/json_annotation.dart';

part 'uploaded_document_details_model.g.dart';

@JsonSerializable()
class UploadedDocumentDetailsModel {
  UploadedDocumentDetailsModel({
    required this.title,
    required this.firstName,
    required this.lastName,
    required this.dateOfBirth,
    required this.documentNumber,
    required this.address,
    required this.address1,
    required this.address2,
    required this.city,
    required this.county,
    required this.issuedbyCounty,
    required this.postCode,
    required this.countryRegion,
    required this.dateOfExpiration,
    required this.errorMessage,
    required this.idtype,
    required this.base64Image,
    required this.height,
    required this.eyeColour,
  });

  factory UploadedDocumentDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$UploadedDocumentDetailsModelFromJson(json);

  UploadedDocumentDetailsModel.init();

  String? title = '';
  String? firstName = '';
  String? lastName = '';
  DateTime? dateOfBirth;
  String? documentNumber = '';
  String? address = '';
  String? address1 = '';
  String? address2 = '';
  String? city = '';
  String? county = '';
  String? issuedbyCounty = '';
  String? postCode = '';
  String? countryRegion = '';
  DateTime? dateOfExpiration = DateTime.utc(9999, 12, 31);
  String? errorMessage = '';
  String? idtype = '';
  String? base64Image = '';
  String? height = '';
  String? eyeColour = '';

  Map<String, dynamic> toJson() => _$UploadedDocumentDetailsModelToJson(this);

  bool hasDifferentFirstName(String? fName) {
    if (firstName != null && firstName!.isNotEmpty) {
      return firstName != fName;
    }
    return false;
  }

  bool hasDifferentLastName(String? lName) {
    if (lastName != null && lastName!.isNotEmpty) {
      return lastName != lName;
    }
    return false;
  }
}
