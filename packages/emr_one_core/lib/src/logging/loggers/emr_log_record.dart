// This class is based on code from logging v1.3.0. by dart.dev.
// Original license details:
//
// Copyright (c) 2019, the Dart project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:emr_one_core/src/logging/loggers/emr_log_level.dart';
import 'package:meta/meta.dart';

/// A log entry representation used to propagate information from [Logger] to
/// individual handlers.
@internal
class EmrLogRecord {
  EmrLogRecord(
    this.level,
    this.message,[
    this.error,
    this.stackTrace,
    this.params,
    this.type,
    this.source,
    this.eventSeverity,
  ])  : time = DateTime.now(),
        sequenceNumber = EmrLogRecord._nextNumber++;

  final EmrLogLevel level;
  final EmrLogLevel? eventSeverity;
  final String message;

  /// Non-string message passed to Logger.
  final Map<String, String>? params;

  /// Time when this record was created.
  final DateTime time;

  String get timeAsString => time.toIso8601String();

  /// Unique sequence number greater than all log records created before it.
  final int sequenceNumber;

  static int _nextNumber = 0;

  /// Associated error (if any) when recording errors messages.
  final Exception? error;

  /// Associated stackTrace (if any) when recording errors messages.
  final StackTrace? stackTrace;

  /// The type of this log. Primarily used to distinguish events.
  final String? type;

  /// The source of this log. Allows for recording the source of a log
  /// without the need to create an expensive StackTrace
  final String? source;

  @override
  String toString() {
    final prefix = '[$timeAsString] [$level] [$sequenceNumber]';
    final sb = StringBuffer('$prefix - $message');

    if (source != null) {
      sb.write('\r\n$prefix - Source: $source');
    }
    if (type != null) {
      sb.write('\r\n$prefix - Type: $type');
    }
    if (params != null) {
      sb.write('\r\n$prefix - params: $params');
    }
    if (error != null) {
      sb.write('\r\n$prefix - Error: $error');
    }
    if (stackTrace != null) {
      sb.write('\r\n$prefix - Stack Trace:\r\n$stackTrace');
    }
    return sb.toString();
  }
}
