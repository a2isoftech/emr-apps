import 'package:emr_one_core/emr_one_core.dart';
import 'package:json_annotation/json_annotation.dart';

part 'background_upload.g.dart';

enum BackgroundUploadConnectionType {
  any,
  wifi,
}

@JsonSerializable()
class BackgroundUpload {
  BackgroundUpload(
    this.source,
    this.destinationUrl, {
    this.id = '',
    this.status = BackgroundTransferStatus.pending,
    this.message = '',
    this.attempts = 0,
    this.connectionType = BackgroundUploadConnectionType.any,
    DateTime? timestamp,
    this.progress = 0,
  }) {
    this.timestamp = timestamp ?? DateTime.now().toUtc();
  }

  factory BackgroundUpload.fromJson(Map<String, dynamic> json) =>
      _$BackgroundUploadFromJson(json);

  Map<String, dynamic> toJson() => _$BackgroundUploadToJson(this);

  String id;

  String source;

  final String destinationUrl;

  BackgroundTransferStatus status;

  String message;

  int attempts;

  late DateTime timestamp;

  BackgroundUploadConnectionType connectionType;

  @JsonKey(includeFromJson: false, includeToJson: false)
  int progress;
}
