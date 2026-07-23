import 'dart:typed_data';

class DiagnosticMedia {
  DiagnosticMedia({
    required this.uuid,
    required this.instanceUuid,
    required this.mediaType,
    required this.localPath,
    required this.isUploaded,
    required this.isUploading,
    this.imageData,
  });

  String uuid;

  String instanceUuid;

  String mediaType;

  String localPath;

  bool isUploading;

  bool isUploaded;

  Uint8List? imageData;
}
