import 'package:emr_one_core/src/logging/loggers/emr_log_record.dart';
import 'package:emr_one_core/src/logging/sinks/emr_log_sink.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

@internal
class ConsoleSink implements EmrLogSink {
  @override
  Future<void> dispose() async {}

  @override
  Future<void> flush() async {}

  @override
  Future<void> log(EmrLogRecord record) async {
    debugPrint(record.toString());
  }
}
