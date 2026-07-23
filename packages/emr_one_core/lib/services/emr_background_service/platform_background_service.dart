import 'package:emr_one_core/services/emr_background_service/background_upload.dart';

/// An abstract class that defines the interface for platform-specific
/// background services. Used by [CupertinoBackgroundService] and
/// [AndroidBackgroundService].
abstract class PlatformBackgroundService {
  void initialize();

  void dispose();

  Future<String?> startUpload(BackgroundUpload backgroundUpload);
}
