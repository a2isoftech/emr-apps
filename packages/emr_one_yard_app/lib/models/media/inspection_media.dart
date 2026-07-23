import 'package:emr_one_core/models/media_file.dart';

class InspectionMedia {
  InspectionMedia({
    required this.localUrl,
    required this.lineNumber,
    required this.mediaType,
    this.comment,
    this.discrepantId,
  });

  final String localUrl;
  final int lineNumber;
  final String? comment;
  final String? discrepantId;
  final MediaType mediaType;
}
