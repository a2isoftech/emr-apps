import 'package:emr_one_core/eo_constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

sealed class EmrOneNotificationBase {
  EmrOneNotificationBase({
    required this.title,
    required this.description,
    this.id,
    this.onTap,
  });

  final String title;

  final String description;

  String? id;

  final void Function()? onTap;

  IconData get icon;

  Color get backgroundColour;
}

class EmrOneNotification extends EmrOneNotificationBase {
  EmrOneNotification({
    required super.title,
    required super.description,
    super.id,
    super.onTap,
  });

  @override
  IconData get icon => FontAwesomeIcons.info.data;

  @override
  Color get backgroundColour => OppraColours.calipso;
}

class EmrOneSuccessNotification extends EmrOneNotificationBase {
  EmrOneSuccessNotification({
    required super.title,
    required super.description,
    super.id,
    super.onTap,
  });

  @override
  IconData get icon => Icons.check_outlined;

  @override
  Color get backgroundColour => OppraColours.plasticPines;
}

class EmrOneWarningNotification extends EmrOneNotificationBase {
  EmrOneWarningNotification({
    required super.title,
    required super.description,
    super.id,
    super.onTap,
  });

  @override
  IconData get icon => FontAwesomeIcons.exclamation.data;

  @override
  Color get backgroundColour => OppraColours.naranjaCaqui;
}

class EmrOneErrorNotification extends EmrOneNotificationBase {
  EmrOneErrorNotification({
    required super.title,
    required super.description,
    super.id,
    super.onTap,
  });

  @override
  IconData get icon => Icons.close;

  @override
  Color get backgroundColour => OppraColours.redSavinaPepper;
}

class EmrOneProgressNotification extends EmrOneNotificationBase {
  EmrOneProgressNotification({
    required super.title,
    required super.description,
    super.id,
    super.onTap,
    ValueNotifier<double>? progress,
    this.inProgressText,
  }) : progress = progress ?? ValueNotifier(0);

  @override
  IconData get icon => Icons.upload;

  @override
  Color get backgroundColour => OppraColours.calipso;

  /// A value of 0.0 means no progress and 1.0 means that progress is complete.
  /// The value will be clamped to be in the range 0.0-1.0. Progress must reach
  /// 1.0 for the notification to begin self-dismissal
  final ValueNotifier<double> progress;

  /// Only for use alongside the type `EmrOneOverlayType.progress`
  /// to override the default text.
  final String? inProgressText;
}
