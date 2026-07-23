export 'emr_background_service_interface.dart'
    if (dart.library.io) 'emr_background_service_native.dart'
    if (dart.library.html) 'emr_background_service_web.dart';

enum BackgroundTransferStatus {
  pending,
  completed,

  /// The upload failed, but can be retried.
  failed,

  /// A situation when the upload cannot ever succeed, such as when the source
  /// file no longer exists.
  abandoned,
}

class EmrBackgroundServiceResponse {
  EmrBackgroundServiceResponse({
    required this.status,
    this.message,
  });

  final BackgroundTransferStatus status;

  final String? message;
}
