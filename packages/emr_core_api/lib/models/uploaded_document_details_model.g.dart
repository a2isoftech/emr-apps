// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'uploaded_document_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UploadedDocumentDetailsModel _$UploadedDocumentDetailsModelFromJson(
  Map<String, dynamic> json,
) => UploadedDocumentDetailsModel(
  title: json['title'] as String?,
  firstName: json['firstName'] as String?,
  lastName: json['lastName'] as String?,
  dateOfBirth: json['dateOfBirth'] == null
      ? null
      : DateTime.parse(json['dateOfBirth'] as String),
  documentNumber: json['documentNumber'] as String?,
  address: json['address'] as String?,
  address1: json['address1'] as String?,
  address2: json['address2'] as String?,
  city: json['city'] as String?,
  county: json['county'] as String?,
  issuedbyCounty: json['issuedbyCounty'] as String?,
  postCode: json['postCode'] as String?,
  countryRegion: json['countryRegion'] as String?,
  dateOfExpiration: json['dateOfExpiration'] == null
      ? null
      : DateTime.parse(json['dateOfExpiration'] as String),
  errorMessage: json['errorMessage'] as String?,
  idtype: json['idtype'] as String?,
  base64Image: json['base64Image'] as String?,
  height: json['height'] as String?,
  eyeColour: json['eyeColour'] as String?,
);

Map<String, dynamic> _$UploadedDocumentDetailsModelToJson(
  UploadedDocumentDetailsModel instance,
) => <String, dynamic>{
  'title': instance.title,
  'firstName': instance.firstName,
  'lastName': instance.lastName,
  'dateOfBirth': instance.dateOfBirth?.toIso8601String(),
  'documentNumber': instance.documentNumber,
  'address': instance.address,
  'address1': instance.address1,
  'address2': instance.address2,
  'city': instance.city,
  'county': instance.county,
  'issuedbyCounty': instance.issuedbyCounty,
  'postCode': instance.postCode,
  'countryRegion': instance.countryRegion,
  'dateOfExpiration': instance.dateOfExpiration?.toIso8601String(),
  'errorMessage': instance.errorMessage,
  'idtype': instance.idtype,
  'base64Image': instance.base64Image,
  'height': instance.height,
  'eyeColour': instance.eyeColour,
};
