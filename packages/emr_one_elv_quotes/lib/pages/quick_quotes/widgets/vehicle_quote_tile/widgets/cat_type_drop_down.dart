import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_elv_core/extensions/small_screen_check.dart';
import 'package:emr_one_elv_core/models/models.dart';
import 'package:emr_one_elv_quotes/common/custom_control_items.dart';
import 'package:emr_one_elv_quotes/common/custom_selection_box.dart';
import 'package:flutter/material.dart';

class CatTypeDropdown extends StatelessWidget {
  const CatTypeDropdown({
    required this.value,
    required this.onChanged,
    super.key,
  });

  final CatTypeEnum value;
  final void Function(CatTypeEnum?)? onChanged;

  @override
  Widget build(BuildContext context) {
    if (SmallScreenCheck().isSmallScreen(context)) {
      return SizedBox(
        height: 68,
        child: CustomSelectBox<CatTypeEnum>(
          label: '${context.l10n.cat} ${context.l10n.type}',
          value: value,
          items: CustomControlItems.fromMap<CatTypeEnum>({
            CatTypeEnum.unknown: CatTypeEnum.unknown.label,
            CatTypeEnum.preCat: CatTypeEnum.preCat.label,
            CatTypeEnum.pipeCat: CatTypeEnum.pipeCat.label,
          }),
          sorted: false,
          onChanged: onChanged,
        ),
      );
    }
    return Expanded(
      child: CustomSelectBox<CatTypeEnum>(
        label: '${context.l10n.cat} ${context.l10n.type}',
        value: value,
        items: CustomControlItems.fromMap<CatTypeEnum>({
          CatTypeEnum.unknown: CatTypeEnum.unknown.label,
          CatTypeEnum.preCat: CatTypeEnum.preCat.label,
          CatTypeEnum.pipeCat: CatTypeEnum.pipeCat.label,
        }),
        sorted: false,
        onChanged: onChanged,
      ),
    );
  }
}
