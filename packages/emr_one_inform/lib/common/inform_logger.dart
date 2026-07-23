import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_inform/globals.dart';

class InformLogger {
  static void logEvent(
    String name, {
    Map<String, String> params = const <String, String>{},
    String type = EmrOneCoreTelemetry.kTypeDefault,
  }) {
    if (InformJobs.preference?.isLoggingEnabled ?? true) {
      EmrLogger.event(source: 'inform', name, params: params);
    }
  }
}
