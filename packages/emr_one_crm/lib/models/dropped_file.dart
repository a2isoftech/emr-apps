import 'dart:typed_data';

class DroppedFile {
  DroppedFile({
    required this.url,
    required this.name,
    required this.mime,
    required this.bytes,
    required this.stream,
    required this.byteData,
  });

  final String url;
  final String name;
  final String mime;
  final int bytes;
  final Stream<List<int>> stream;
  final Uint8List byteData;

  String get size {
    final kb = bytes / 1024;
    final mb = kb / 1024;

    return mb > 1
        ? '${mb.toStringAsFixed(2)} MB'
        : '${kb.toStringAsFixed(2)} KB';
  }
}
