import 'package:json_annotation/json_annotation.dart';

part 'qr_code_data.g.dart';

@JsonSerializable()
class QRCodeData {
  QRCodeData({
    required this.objectType,
    required this.objectId,
    this.version = 1,
    this.userDefinedProperties,
    this.encryptedProperties,
  });
  factory QRCodeData.fromJson(Map<String, dynamic> json) =>
      _$QRCodeDataFromJson(json);
  final String objectType;
  final String objectId;
  final int version;
  final Map<String, dynamic>? userDefinedProperties;
  final Map<String, dynamic>? encryptedProperties;
  Map<String, dynamic> toJson() => _$QRCodeDataToJson(this);
}
