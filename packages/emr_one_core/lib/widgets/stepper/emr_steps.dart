import 'package:flutter/material.dart';

@immutable
class EmrStep {
  const EmrStep({
    required this.content,
    this.title,
    this.subtitle,
    this.state = StepState.indexed,
    this.isActive = false,
    this.onPressed,
    this.stepIcon,
  });

  final Widget? title;
  final Widget? subtitle;
  final Widget content;
  final StepState state;
  final bool isActive;
  final void Function()? onPressed;
  final Icon? stepIcon;
}
