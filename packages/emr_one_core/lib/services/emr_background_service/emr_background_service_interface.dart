import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/services/emr_background_service/background_upload.dart';
import 'package:emr_one_core/services/emr_background_service/emr_background_service_data_store.dart';
import 'package:flutter/foundation.dart';

class EmrBackgroundService {
  static EmrBackgroundService get instance => throw UnimplementedError();

  Future<void> initialize({
    Future<Map<String, String>> Function()? getDefaultHeaders,
  }) =>
      throw UnimplementedError();

  final EmrBackgroundServiceDataStore dataStore = throw UnimplementedError();

  final ValueNotifier<List<BackgroundUpload>> uploads =
      throw UnimplementedError();

  /// Queue an upload.
  /// [source] can be either an [XFile]
  ///  or a file path [String] (for iOS or Android).
  /// [destinationUrl] is the URL to which the file will be uploaded.
  Future<EmrBackgroundServiceResponse> upload(
    dynamic source,
    String destinationUrl,
  ) =>
      throw UnimplementedError();

  /// Delete an upload. This is only appropriate for native platforms.
  Future<void> deleteUpload(BackgroundUpload backgroundUpload) =>
      throw UnimplementedError();
}
