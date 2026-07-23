import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:signals/signals_flutter.dart';

class LotWeightScaleManual extends StatefulWidget {
  const LotWeightScaleManual({super.key});

  @override
  State<LotWeightScaleManual> createState() => _LotWeightScaleManualState();
}

class _LotWeightScaleManualState extends State<LotWeightScaleManual> {
  Signal<ValueUomPair> valueUomPair = signal<ValueUomPair>(ValueUomPair());

  @override
  Widget build(BuildContext context) {
    final uomService = Provider.of<UomService>(context, listen: false);
    final uoms = uomService.getUoms(
      UserInfoService.instance?.userInfo.defaultTerritory ?? 'A11',
    );
    final formKey = GlobalKey<FormState>();

    return Padding(
      padding: const EdgeInsets.all(
        Insets.gutter,
      ),
      child: Form(
        key: formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Expanded(
                  child: UomInputField(
                    values: uoms,
                    hintText: context.l10n.weight,
                    initialUom: uoms.first,
                    autoFocus: true,
                    onChanged: (value) => valueUomPair.value = value,
                    validator: Validators.required,
                  ),
                ),
              ],
            ),
            const SizedBox(height: Insets.gutter),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                OutlinedButton(
                  onPressed: () {
                    Navigator.of(
                      context,
                      rootNavigator: true,
                    ).pop();
                  },
                  child: Text(context.l10n.cancel),
                ),
                ElevatedButton(
                  onPressed: () {
                    if (!formKey.currentState!.validate()) {
                      return;
                    }

                    Navigator.of(
                      context,
                      rootNavigator: true,
                    ).pop(
                      UomValue.fromValue(
                        valueUomPair.value.value,
                        Uom.fromCode(
                          valueUomPair.value.uom.uomCode,
                        ),
                      ),
                    );
                  },
                  child: Text(context.l10n.ok),
                ),
              ],
            ),
            const SizedBox(height: Insets.gutter * 2),
          ],
        ),
      ),
    );
  }
}
