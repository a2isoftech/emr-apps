import 'dart:async';
import 'dart:io';

import 'package:emr_one_core/src/logging/loggers/emr_log_level.dart';
import 'package:emr_one_core/src/logging/loggers/emr_log_record.dart';
import 'package:emr_one_core/src/logging/sinks/emr_log_sink.dart';
import 'package:intl/intl.dart';
import 'package:meta/meta.dart';
import 'package:path/path.dart' as path;

/// Writes logs to a daily Text File located in [logFileDirectory]. Log file
/// is named with today's date.
///
/// Enables batching by setting the value of
/// bufferLength. For immediate writes set [bufferLength] to 0. Any value above
/// 0 will be the number of log messages to batch before triggering a write.
///
/// [immediateFlushThreshold] sets the minimum log EmrLogLevel needed to
/// instantly flush any pending logs. Set this to [EmrLogLevel.off]
/// to disable this behaviour.
///
/// [flushTimeoutSeconds] sets how often the log buffer is automatically
/// flushed. Set this to 0 for no timer.
///
/// It is critical to ensure [dispose] is called during app shutdown, to
/// flush any pending log messages and to cancel the internal timer.

@internal
class TextFileSink implements EmrLogSink {
  TextFileSink({
    required String logDirectory,
    this.bufferLength = 100,
    this.immediateFlushThreshold = EmrLogLevel.error,
    this.flushTimeoutSeconds = 10,
  }) {
    logFileDirectory = Directory(logDirectory);
    logFileDirectory.createSync(recursive: true);
    _createTimer();
  }

  late Directory logFileDirectory;

  Future<void>? isFlushing;

  final int flushTimeoutSeconds;
  Timer? flushTimer;

  final List<String> _lineBuffer = [];

  final int bufferLength;

  final EmrLogLevel immediateFlushThreshold;

  /// Adds the message to the log buffer. Performs checks and flushes the
  /// current buffer to the text file if conditions are met.
  ///
  /// If a flush is triggered, this sink method will be locked/awaited until the
  /// flush is complete to ensure logs are not added to the buffer or subsequent
  /// flushes triggered when a flush is in progress.
  @override
  Future<void> log(EmrLogRecord record) async {
    // Ensure that we're not adding logs to the buffer when a flush is in
    // progress
    if (isFlushing != null) {
      await isFlushing;
    }

    _lineBuffer.add(record.toString());

    if (record.level >= immediateFlushThreshold ||
        _lineBuffer.length > bufferLength) {
      await _flush();
      //Ensure the timer is reset
      _createTimer();
    }
  }

  /// Ensure that the current buffer is flushed & written to disk and that
  /// the timer is cancelled.
  @override
  Future<void> dispose() async {
    await _flush();
    flushTimer?.cancel();
  }

  /// Forces all pending log messages to be written immediately.
  @override
  Future<void> flush() async {
    await _flush();
  }

  /// Write all buffered lines to the text file. Will lock the sink until the
  /// operation is complete.
  Future<void> _flush() async {
    //Ensure that we're not flushing when a flush is in progress
    if (isFlushing != null) {
      await isFlushing;
    }

    final completer = Completer<void>();
    isFlushing = completer.future;

    final file = getLogFile();
    final sink = file.openWrite(
      mode: FileMode.append,
    );

    sink.writeAll(_lineBuffer);
    await sink.flush();
    await sink.close();
    _lineBuffer.clear();

    completer.complete();
    isFlushing = null;
  }

  void _createTimer() {
    if (flushTimeoutSeconds == 0) {
      return;
    }
    if (flushTimer?.isActive ?? false) {
      flushTimer?.cancel();
    }
    flushTimer = Timer(Duration(seconds: flushTimeoutSeconds), () async {
      if (_lineBuffer.isNotEmpty) {
        await _flush();
        return;
      }
      _createTimer();
    });
  }

  /// Retrieve today's log file name.
  File getLogFile() {
    final fileName = path.join(logFileDirectory.path,
        'emr_apps_log_${DateFormat('yyyy-MM-dd').format(DateTime.now())}.log',);
    return File(fileName);
  }
}
