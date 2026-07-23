// This class is based on code from logging v1.3.0. by dart.dev.
// Original license details:
//
// Copyright (c) 2019, the Dart project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:async';

import 'package:emr_one_core/src/logging/loggers/emr_log_level.dart';
import 'package:emr_one_core/src/logging/loggers/emr_log_record.dart';
import 'package:emr_one_core/src/logging/sinks/emr_log_sink.dart';
import 'package:meta/meta.dart';

/// Automatically record stack traces for any message of this level or above.
EmrLogLevel recordStackTraceAtLevel = EmrLogLevel.error;

/// Use a [EmrLogger] to log debug messages.
///
/// [EmrLogger]s are named using a hierarchical dot-separated name convention.
class EmrLogger {
  /// Create or find a Logger by name.
  ///
  /// Calling `Logger(name)` will return the same instance whenever it is called
  /// with the same string name.
  factory EmrLogger._(String name) =>
      _loggers.putIfAbsent(name, () => EmrLogger._internal(name));

  EmrLogger._internal(this.name) {
    //Make this EmrLogger listen to each event from the root stream.
    _rootController.stream.listen(
      _controller.add,
      onDone: _controller.close,
      onError: _controller.addError,
    );
  }

  /// Simple name of this logger.
  final String name;

  /// The full name of this logger, which includes the parent's full name.
  String get fullName => name;

  /// Controller used to notify when log entries are added to this logger.
  final StreamController<EmrLogRecord> _controller =
      StreamController<EmrLogRecord>.broadcast();

  /// Returns a stream of messages added to this [EmrLogger].
  ///
  /// You can listen for messages using the standard stream APIs, for instance:
  ///
  /// ```dart
  /// logger.onRecord.listen((record) { ... });
  /// ```
  Stream<EmrLogRecord> get onRecord => _controller.stream;

  /// Adds a log record for a [message] at a particular [logLevel] if
  /// `isLoggable(logLevel)` is true.
  ///
  /// If [message] is a [Function], it will be lazy evaluated. Additionally, if
  /// [message] or its evaluated value is not a [String], then 'toString()' will
  /// be called on the object and the result will be logged. The log record will
  /// contain a field holding the original object.
  ///
  /// The log record will also contain a field for the zone in which this call
  /// was made. This can be advantageous if a log listener wants to handler
  /// records of different zones differently (e.g. group log records by HTTP
  /// request if each HTTP request handler runs in it's own zone).
  ///
  /// If this record is logged at a level equal to or higher than
  /// [recordStackTraceAtLevel] and [stackTrace] is `null` or [StackTrace.empty]
  /// it will be defaulted to the current stack trace for this call.
  static EmrLogRecord _createRecord(
    EmrLogLevel logLevel,
    String? message, {
    Exception? error,
    StackTrace? stackTrace,
    Map<String, String>? params,
    String? type,
    String? source,
    EmrLogLevel? eventSeverity,
  }) {
    var st = stackTrace;

    if ((st == null || st == StackTrace.empty) &&
        logLevel >= recordStackTraceAtLevel) {
      st = StackTrace.current;
    }

    return EmrLogRecord(
      logLevel,
      message ?? '',
      error,
      st,
      params,
      type,
      source,
      eventSeverity,
    );
  }

  void _log(EmrLogRecord record) {
    _controller.add(record);
  }

  /// Log message at level [EmrLogLevel.verbose].
  ///
  /// See [_log] for information on how non-String [message] arguments are
  /// handled.
  static void verbose(
    String message, {
    StackTrace? stackTrace,
    Map<String, String>? params,
    String? type,
    String? source,
  }) => _rootController.add(
    _createRecord(
      EmrLogLevel.verbose,
      message,
      stackTrace: stackTrace,
      params: params,
      type: type,
      source: source,
    ),
  );

  /// Log message at level [EmrLogLevel.information].
  ///
  /// See [_log] for information on how non-String [message] arguments are
  /// handled.
  static void info(
    String message, {
    StackTrace? stackTrace,
    Map<String, String>? params,
    String? type,
    String? source,
  }) => _rootController.add(
    _createRecord(
      EmrLogLevel.information,
      message,
      stackTrace: stackTrace,
      params: params,
      type: type,
      source: source,
    ),
  );

  /// Log message at level [EmrLogLevel.event].
  ///
  /// See [_log] for information on how non-String [message] arguments are
  /// handled.
  static void event(
    String name, {
    Map<String, String>? params,
    String? type,
    String? source,
    EmrLogLevel? severity,
  }) => _rootController.add(
    _createRecord(
      EmrLogLevel.event,
      name,
      params: params,
      type: type,
      source: source,
      eventSeverity: severity,
    ),
  );

  /// Log message at level [EmrLogLevel.warning].
  ///
  /// See [_log] for information on how non-String [message] arguments are
  /// handled.
  static void warning(
    String message, {
    Exception? error,
    StackTrace? stackTrace,
    Map<String, String>? params,
    String? type,
    String? source,
  }) => _rootController.add(
    _createRecord(
      EmrLogLevel.warning,
      message,
      error: error,
      stackTrace: stackTrace,
      params: params,
      type: type,
      source: source,
    ),
  );

  /// Log message at level [EmrLogLevel.error].
  ///
  /// See [_log] for information on how non-String [message] arguments are
  /// handled.
  static void error(
    String message, {
    Exception? error,
    StackTrace? stackTrace,
    Map<String, String>? params,
    String? type,
    String? source,
  }) => _rootController.add(
    _createRecord(
      EmrLogLevel.error,
      message,
      error: error,
      stackTrace: stackTrace,
      params: params,
      type: type,
      source: source,
    ),
  );

  /// Log message at level [EmrLogLevel.critical].
  ///
  /// See [_log] for information on how non-String [message] arguments are
  /// handled.
  static void critical(
    String message, {
    Exception? error,
    StackTrace? stackTrace,
    Map<String, String>? params,
    String? type,
    String? source,
  }) => _rootController.add(
    _createRecord(
      EmrLogLevel.critical,
      message,
      error: error,
      stackTrace: stackTrace,
      params: params,
      type: type,
      source: source,
    ),
  );

  /// Top-level root [EmrLogger].
  static final StreamController<EmrLogRecord> _rootController =
      StreamController<EmrLogRecord>.broadcast();

  /// All attached [EmrLogger]s in the system.
  static final Map<String, EmrLogger> _loggers = <String, EmrLogger>{};

  /// This is used for logging to specific loggers, and should only be used
  /// in special circumstances such as logging in components critical to
  /// the logging infrastructure, where it may be critical to avoid writing to
  /// certain log sinks. (Currently used to avoid self-referencing loop in
  /// app insights http client logging).
  static void logTo(
    List<String> loggers,
    EmrLogLevel logLevel,
    String? message, {
    Exception? error,
    StackTrace? stackTrace,
    Map<String, String>? params,
    String? type,
    String? source,
    EmrLogLevel? eventSeverity,
  }) {
    for (final name in loggers) {
      _loggers[name]?._log(
        _createRecord(
          logLevel,
          message,
          error: error,
          stackTrace: stackTrace,
          params: params,
          type: type,
          source: source,
          eventSeverity: eventSeverity,
        ),
      );
    }
  }
}

@internal
class EmrLoggerFactory {
  /// Provides methods for attaching new loggers to the logger pool,
  /// and ensuring that they close gracefully in the event of a shutdown or
  /// error.
  static void fromAnonymous(
    String name,
    List<EmrLogLevel> levels,
    Future<void> Function(EmrLogRecord record) onLog, [
    Future<void> Function()? onDone,
    void Function()? onError,
  ]) {
    final logger = EmrLogger._(name);
    logger.onRecord.listen(
      // Triggered whenever a new log message is added to the stream
      // controller.
      (record) async {
        if (levels.contains(record.level) || levels.contains(EmrLogLevel.all)) {
          await onLog(record);
        }
      },
      // Triggered when the stream is closed.
      // Intended use is to close the logger, release any external references
      // and ensure that any pending log messages are flushed.
      onDone: () async {
        if (onDone != null) {
          await onDone();
        }
      },
      // Triggered if the stream errors.
      // As we are in the logger, if this errors there's not much we can do.
      // (Maybe write the error to a separate file??)
      // (Try and restart loggers?)
      // At a bare minimum, ensure that all current log messages are flushed
      onError: (error, stacktrace) async => onError,
    );
  }

  static void fromSink(String name, List<EmrLogLevel> levels, EmrLogSink sink) {
    fromAnonymous(name, levels, sink.log, sink.dispose, sink.flush);
  }

  /// Closes the log stream which signals to attached loggers to flush any
  /// buffered logs and release managed resources.
  ///
  /// Should only be called on app shutdown
  static Future<void> deallocate() async {
    // This will propagate down to each attached logger, as they are registered
    // to listen to the onDone event and trigger the streamController.close
    // event.
    await EmrLogger._rootController.close();
  }
}
