import 'package:emr_one_core/src/logging/loggers/emr_log_record.dart';
import 'package:meta/meta.dart';

@internal
abstract class EmrLogSink {
  /// Write the [EmrLogRecord] to a log destination
  Future<void> log(EmrLogRecord record);

  /// Ensure that all resources are released properly and any pending logs are
  /// flushed before the log sink is disposed
  Future<void> dispose();

  /// Flush any pending buffered logs
  Future<void> flush();
}
