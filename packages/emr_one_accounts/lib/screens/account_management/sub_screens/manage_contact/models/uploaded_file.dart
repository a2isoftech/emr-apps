import 'dart:typed_data';

class UploadedFile {
  UploadedFile({
    required this.bytes,
    required this.identifier,
    required this.extension,
    required this.name,
  });

  final Uint8List? bytes;
  final String? identifier;
  final String? extension;
  final String? name;
}
