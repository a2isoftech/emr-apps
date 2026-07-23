abstract class BaseEncryptedStringConverter {
  Future<String> createEncryptedString(
    Map<String, dynamic> encryptedProperties,
  );
  String createEncryptedStringSync(Map<String, dynamic> encryptedProperties);

  Future<String> decrypt(String toDecrypt);
  String decryptSync(String toDecrypt);
}
