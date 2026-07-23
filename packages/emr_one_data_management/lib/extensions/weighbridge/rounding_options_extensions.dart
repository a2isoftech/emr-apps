import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/widgets.dart';

extension RoundingOptionExtension on RoundingOption {
  String localizedLabel(BuildContext context) => switch (this) {
        RoundingOption.noRounding => context.l10n.noRounding,
        RoundingOption.roundUp => context.l10n.roundUp,
        RoundingOption.roundDown => context.l10n.roundDown,
      };
}
