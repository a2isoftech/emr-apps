import 'dart:typed_data';

import 'package:cross_file/cross_file.dart';
import 'package:emr_one_forms_engine/core/constants/enums.dart';

class CapturedMedia {
  final CapturedMediaType type;
  XFile? file;
  late final bool isDownloading;
  XFile? thumbnail;
  final String uniqueId;
  final String componentId;
  final Uint8List? bytes;

  CapturedMedia(
      {required this.type,
      required this.uniqueId,
      required this.componentId,
      this.file,
      this.thumbnail,
      this.bytes}) {
    isDownloading = file == null;
  }
}
