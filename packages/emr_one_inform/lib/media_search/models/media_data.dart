import 'dart:typed_data';

class MediaData {
  MediaData(this.bytes, this.fileName, this.mimeType);
  final Uint8List bytes;
  final String? fileName;
  final String? mimeType;
}

class MediaDownloadProgress {
  MediaDownloadProgress({
    required this.bytes,
    required this.byteCount,
    this.totalBytes,
    this.fileName,
  });
  final List<int> bytes;
  final int byteCount;
  final int? totalBytes;
  final String? fileName;
}
