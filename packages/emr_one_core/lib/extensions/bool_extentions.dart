import 'package:emr_one_core/extensions/extensions.dart';
import 'package:flutter/material.dart';

extension BoolExtensions on bool {
  String asYesNo(BuildContext context) =>
      this ? context.l10n.yes : context.l10n.no;
}
