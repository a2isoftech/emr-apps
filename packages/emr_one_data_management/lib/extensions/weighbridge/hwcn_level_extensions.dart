import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/widgets.dart';

extension HWcnLevelExtension on HwcnLevel {
  String localizedLabel(BuildContext context) => switch (this) {
        HwcnLevel.off => context.l10n.off,
        HwcnLevel.warn => context.l10n.warn,
        HwcnLevel.enforce => context.l10n.enforce,
      };
}
