import 'dart:convert';

import 'package:emr_one_core/qr/qr_data_helper/base/base_encrypted_string_converter.dart';

class Base64StringEncryptor implements BaseEncryptedStringConverter {
  const Base64StringEncryptor();
  @override
  Future<String> createEncryptedString(
    Map<String, dynamic> encryptedProperties,
  ) =>
      Future.value(createEncryptedStringSync(encryptedProperties));

  @override
  String createEncryptedStringSync(Map<String, dynamic> encryptedProperties) {
    final bytes = utf8.encode(jsonEncode(encryptedProperties));

    return base64Encode(bytes);
  }

  @override
  Future<String> decrypt(String toDecrypt) =>
      Future.value(decryptSync(toDecrypt));

  @override
  String decryptSync(String toDecrypt) => utf8.decode(base64Decode(toDecrypt));
}
