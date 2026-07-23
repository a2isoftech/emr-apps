import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/widgets.dart';

extension CostStatusExtensions on Enum$CostStatus {
  String displayString(BuildContext context) => switch (this) {
    .NONE => context.l10n.none,
    .$unknown => '',
  };
}
