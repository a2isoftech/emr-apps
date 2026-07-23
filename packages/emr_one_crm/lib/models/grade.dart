import 'package:emr_one_core/extensions/extensions.dart';
import 'package:flutter/material.dart';

class Grade {
  Grade(
    this.gradeCode, [
    this.description = '',
    this.gradeGroup = '',
    this.gradeType = '',
    this.groupDesc = '',
  ]);
  factory Grade.empty() => Grade('');
  final String gradeCode;
  String description;
  final String gradeGroup;
  final String groupDesc;
  final String gradeType;

  // TODO: Move this to an extension method?
  String formattedStringOrDefault(BuildContext context) {
    if (gradeCode.isEmpty || description.isEmpty) {
      return context.l10n.noGradeSelected;
    }

    return '$gradeCode : $description';
  }
}
