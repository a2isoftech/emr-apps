import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_sharedtypes/enums/enums.dart';
import 'package:flutter/widgets.dart';

extension AccountTypeEnumExtension on AccountTypeEnum {
  String displayString(BuildContext context) {
    return switch (this) {
      AccountTypeEnum.none => context.l10n.none,
      AccountTypeEnum.business => context.l10n.business,
      AccountTypeEnum.retail => context.l10n.retail,
      AccountTypeEnum.supplier => context.l10n.supplier,
      AccountTypeEnum.internal => context.l10n.internal,
    };
  }
}
