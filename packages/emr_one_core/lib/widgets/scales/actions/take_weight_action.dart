import 'dart:async';

import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/models/scales/scales.dart';
import 'package:emr_one_core/widgets/scales/callbacks.dart';
import 'package:emr_one_core/widgets/scales/intents/take_weight_intent.dart';
import 'package:emr_one_theme/emr_one_theme.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TakeWeightAction extends ContextAction<TakeWeightIntent> {
  TakeWeightAction({
    this.preferredUom,
    this.onWeightTaken,
    this.manualWeightMode = false,
    this.uomsForManualWeight,
  });

  final WeightTakenCallback? onWeightTaken;
  final bool manualWeightMode;
  final List<Uom>? uomsForManualWeight;
  final Uom? preferredUom;

  @override
  Future<void> invoke(
    covariant TakeWeightIntent intent, [
    BuildContext? context,
  ]) async {
    if (context == null) return;

    if (!intent.scaleController.enabled ||
        !intent.scaleController.isConnected.value ||
        !intent.scaleController.isSteady.value) {
      return;
    }

    WeightTaken? weight;
    if (manualWeightMode) {
      weight = await _getManualWeight(context, uomsForManualWeight, intent);
    } else {
      weight = await intent.scaleController.takeWeight();
    }

    if (weight == null) return;
    await onWeightTaken?.call(weight, intent.scaleController.scale);
  }

  Future<WeightTaken?> _getManualWeight(
    BuildContext context,
    List<Uom>? uomsForManualWeight,
    TakeWeightIntent intent,
  ) {
    final theme = Theme.of(context).extension<EmrScaleTheme>();
    final uomService = Provider.of<UomService>(context, listen: false);
    final uoms = uomsForManualWeight ??
        uomService.getUoms(
          UserService.instance?.user.defaultTerritoryCode ?? 'A11',
        );
    var valueUomPair = ValueUomPair(uom: uoms.first);
    return showDialog<WeightTaken>(
      context: context,
      barrierColor: Theme.of(context).disabledColor,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        title: Text(context.l10n.addManualWeight),
        content: KeyboardListener(
          focusNode: FocusNode(),
          autofocus: true,
          onKeyEvent: (value) {
            if (value.logicalKey.keyLabel == 'Escape') {
              context.pop();
            }
          },
          child: SizedBox(
            width: theme!.uomInputFieldWidth,
            height: theme.uomInputFieldHeight,
            child: Column(
              children: [
                UomInputField(
                  values: uoms,
                  hintText: context.l10n.weight,
                  initialUom: uoms.first,
                  onChanged: (value) => valueUomPair = value,
                ),
              ],
            ),
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {
              context.pop();
            },
            child: Text(context.l10n.cancel),
          ),
          FilledButton(
            onPressed: () {
              if (valueUomPair.value <= 0) return;

              context.pop(
                intent.scaleController.convertWeightTo(
                  WeightTaken(
                    scaleIdentifier: '',
                    value: valueUomPair.value,
                    uomCode: valueUomPair.uom.name,
                    uomId: 0,
                    isSteady: true,
                    isArchivedWeight: true,
                    serialNo: '99999',
                  ),
                  preferredUom,
                ),
              );
            },
            style: EmrButtonStyles.cta(),
            child: Text(context.l10n.ok),
          ),
        ],
      ),
    );
  }
}
