import 'package:emr_one_core/extensions/build_context_extensions.dart';
import 'package:emr_sharedtypes/models/weighbridge/enums.dart';
import 'package:flutter/material.dart';

extension ShowWeightModeExtensions on ShowWeightMode {
  String localizedLabel(BuildContext context) => switch (this) {
        ShowWeightMode.paidWeightOnly => context.l10n.paidWeightOnly,
        ShowWeightMode.tareAndWeightDeduction =>
          context.l10n.tareAndWeightDeduction,
        ShowWeightMode.fullWeightDetails => context.l10n.fullWeightDetails
      };
}
