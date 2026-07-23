// This class is based on code from logging v1.3.0. by dart.dev.
// Original license details:
//
// Copyright (c) 2019, the Dart project authors. Please see the AUTHORS file
// for details. all rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:flutter/material.dart';

/// [EmrLogLevel]s to control logging output. Logging can be enabled to include
/// all levels above certain [EmrLogLevel]. [EmrLogLevel]s are ordered using
/// an integer value [EmrLogLevel.value]. The predefined [EmrLogLevel] constants
/// below are sorted as follows (in descending order):
/// [EmrLogLevel.critical],
/// [EmrLogLevel.error],
/// [EmrLogLevel.warning],
/// [EmrLogLevel.event],
/// [EmrLogLevel.information],
/// [EmrLogLevel.verbose],
/// and [EmrLogLevel.all].
///
/// These levels follow Azure Application Insights log levels
@immutable
class EmrLogLevel implements Comparable<EmrLogLevel> {
  const EmrLogLevel(this.name, this.value);

  final String name;

  /// Unique value for this level. Used to order levels, so filtering can
  /// exclude messages whose level is under certain value.
  final int value;

  /// Special key to turn on logging for all levels ([value] = 0).
  static const EmrLogLevel all = EmrLogLevel('all', 0);

  /// Special key to turn off all logging ([value] = 2000).
  static const EmrLogLevel off = EmrLogLevel('off', 2000);

  /// Key for highly detailed tracing ([value] = 300).
  static const EmrLogLevel verbose = EmrLogLevel('verbose', 300);

  /// Key for fairly detailed tracing ([value] = 400).
  static const EmrLogLevel information = EmrLogLevel('information', 400);

  /// Key for event tracking ([value] = 600)..
  static const EmrLogLevel event = EmrLogLevel('event', 600);

  /// Key for potential problems ([value] = 900).
  static const EmrLogLevel warning = EmrLogLevel('warning', 900);

  /// Key for serious failures ([value] = 1000).
  static const EmrLogLevel error = EmrLogLevel('error', 1000);

  /// Key for critical issues ([value] = 1200).
  static const EmrLogLevel critical = EmrLogLevel('critical', 1200);

  @override
  bool operator ==(Object other) =>
      other is EmrLogLevel && value == other.value;

  bool operator <(EmrLogLevel other) => value < other.value;

  bool operator <=(EmrLogLevel other) => value <= other.value;

  bool operator >(EmrLogLevel other) => value > other.value;

  bool operator >=(EmrLogLevel other) => value >= other.value;

  @override
  int compareTo(EmrLogLevel other) => value - other.value;

  @override
  int get hashCode => value;

  @override
  String toString() => name;

  static EmrLogLevel fromString(String level) {
    return switch (level.toLowerCase()) {
      'all' => all,
      'verbose' => verbose,
      'information' => information,
      'event' => event,
      'warning' => warning,
      'error' => error,
      'critical' => critical,
      _ => off
    };
  }
}
