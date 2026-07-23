import 'dart:convert';

class QrCode {
  static const signatureType = 'signature';
  static const idUploadType = 'idupload';
  static const addressUploadType = 'addressupload';
  static const mainType = 'main';

  final String data;
  final String qrCodeType;
  final Map<String, Object>? metadata;
  final bool pollImage;

  QrCode({
    required this.data,
    required this.qrCodeType,
    this.metadata,
    this.pollImage = false,
  });

  // Convert to Map
  Map<String, dynamic> toJson() {
    return {
      'data': data,
      'qrCodeType': qrCodeType,
      'metadata': metadata,
      'pollImage': pollImage,
    };
  }

  // Create from Map
  factory QrCode.fromJson(Map<String, dynamic> json) {
    return QrCode(
      data: json['data'],
      qrCodeType: json['qrCodeType'],
      metadata: json['metadata'] != null
          ? Map<String, Object>.from(json['metadata'])
          : null,
      pollImage: json['pollImage'] ?? false,
    );
  }

  // Convert object to JSON string
  String toJsonString() => jsonEncode(toJson());

  // Create object from JSON string
  static QrCode fromJsonString(String jsonString) {
    return QrCode.fromJson(jsonDecode(jsonString));
  }
}
