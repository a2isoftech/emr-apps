import 'dart:convert';

import 'package:emr_one_core/qr/qr_data_helper/base/base_encrypted_string_converter.dart';
import 'package:emr_one_core/qr/qr_data_helper/base/base_qr_code_handler.dart';
import 'package:emr_one_core/qr/qr_data_helper/base64_string_encryptor.dart';
import 'package:emr_one_core/qr/qr_data_helper/models/qr_code_data.dart';

class QRCodeHandler extends BaseQRCodeHandler {
  QRCodeHandler({
    this.encryptedStringConverter = const Base64StringEncryptor(),
  });
  final BaseEncryptedStringConverter encryptedStringConverter;
  @override
  Future<String> generateQRCodeContent({required QRCodeData data}) {
    return Future.value(generateQrCodeContentSync(data: data));
  }

  @override
  String generateQrCodeContentSync({required QRCodeData data}) {
    _validateQrCodeData(data);

    final sb = StringBuffer('${data.objectType}-${data.objectId};');

    final json = data.toJson();

    json['EncryptedProperties'] =
        data.encryptedProperties != null && data.encryptedProperties!.isNotEmpty
            ? encryptedStringConverter
                .createEncryptedStringSync(data.encryptedProperties!)
            : '';

    sb.write(jsonEncode(json));

    return sb.toString();
  }

  @override
  Future<QRCodeData?> readQrCode({required String qrCodeContent}) {
    return Future.value(readQrCodeSync(qrCodeContent: qrCodeContent));
  }

  @override
  QRCodeData? readQrCodeSync({required String qrCodeContent}) {
    final parts = _validateQrContent(qrCodeContent);

    final map = jsonDecode(parts.last) as Map<String, dynamic>;

    if (map.isEmpty) {
      throw ArgumentError.value(
        qrCodeContent,
        'qrCodeContent',
        'ObjectId, ObjectType are mandatory fields '
            'and cannot be their default values',
      );
    }

    if (map.containsKey('EncryptedProperties')) {
      final decrypted = encryptedStringConverter
          .decryptSync(map['EncryptedProperties'].toString());

      map['EncryptedProperties'] = decrypted.isNotEmpty
          ? jsonDecode(decrypted)
          : const <String, dynamic>{};
    }

    final data = QRCodeData.fromJson(map);

    if (data.objectId.isEmpty || data.objectType.isEmpty) {
      throw ArgumentError.value(
        qrCodeContent,
        'qrCodeContent',
        'ObjectId, ObjectType and Version are mandatory fields '
            'and cannot be their default values',
      );
    }

    return data;
  }

  static void _validateQrCodeData(QRCodeData data) {
    if (data.objectId.isEmpty) {
      throw ArgumentError.value(data.objectId, 'objectId');
    }

    if (data.objectType.isEmpty) {
      throw ArgumentError.value(data.objectType, 'objectType');
    }

    if (data.version < 1) {
      throw ArgumentError.value(data.version, 'version');
    }
  }

  static List<String> _validateQrContent(String qrCodeContent) {
    if (qrCodeContent.isEmpty) {
      throw ArgumentError.value(
        qrCodeContent,
        'qrCodeContent',
        'qrCodeContent cannot be empty or whitespace',
      );
    }

    final parts = qrCodeContent.split(';');

    //string.split() doesn't throw if delimiter is not found,
    //it returns a single element with the full string
    //this condition checks if a single element is returned that starts with
    //{ i.e content only contains json
    //OR has 2 elements and the first element (quick identifier)
    //is null or whitespace
    if ((parts.length == 1 && qrCodeContent.startsWith('{')) ||
        (parts.length == 2 && parts[0].isEmpty)) {
      throw ArgumentError.value(
        qrCodeContent,
        'qrCodeContent',
        'qrCodeContent does not contain quick identifier',
      );
    }

    //this condition catches the case of no delimiter,
    // causing a single element containing both the
    //quickidentifier AND the json
    if (parts.length == 1 && !parts.first.startsWith('{')) {
      throw ArgumentError.value(
        qrCodeContent,
        'qrCodeContent',
        'qrCodeContent does not contain content delimiter',
      );
    }

    return parts;
  }
}
