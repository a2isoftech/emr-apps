import 'package:emr_one_core/controllers/base_settings_controller.dart';
import 'package:emr_one_core/controllers/settings_controller.dart';
import 'package:emr_one_core/eo_constants.dart';
import 'package:emr_one_core/extensions/extensions.dart';
import 'package:emr_one_core/validators/validators.dart';
import 'package:emr_one_core/widgets/widgets.dart';
import 'package:emr_one_crm/services/contract_controller.dart';
import 'package:emr_sharedtypes/constants.dart';
import 'package:emr_sharedtypes/uom/uom_service.dart';
import 'package:emr_sharedtypes/uom/uom_value.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CWCollectedOptionsMobile extends StatefulWidget {
  const CWCollectedOptionsMobile({
    required this.controller,
    super.key,
    this.enabled = true,
  });

  final ContractController controller;
  final bool enabled;

  @override
  State<CWCollectedOptionsMobile> createState() =>
      _CWCollectedOptionsMobileState();
}

class _CWCollectedOptionsMobileState extends State<CWCollectedOptionsMobile> {
  final haulageChargeBinding = ValueNotifier<UomValue?>(null);
  late final List<Uom> _uoms;
  late VoidCallback _haulageChargeListener;

  @override
  void initState() {
    super.initState();

    final uomService = context.read<UomService>();
    final settingsController =
        context.read<BaseSettingsController>() as SettingsController;
    _uoms = uomService.getUoms(settingsController.territory);
    _haulageChargeListener = () => setState(updateHaulageCharge);
    final haulageModel = widget.controller.model!.haulageAdjustment;
    haulageChargeBinding.addListener(_haulageChargeListener);

    if (haulageModel != null) {
      haulageChargeBinding.value = UomValue.fromValue(
        haulageModel.value,
        haulageModel.uom,
      );
    }
  }

  @override
  void dispose() {
    haulageChargeBinding.removeListener(_haulageChargeListener);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final isHaulageChargeDisabled =
        !widget.enabled || widget.controller.model!.isFullyCharged;
    return Visibility(
      visible: widget.enabled,
      child: ChangeNotifierProvider.value(
        value: widget.controller,
        builder: (context, child) => FormField(
          validator: (value) {
            if (widget.controller.hasValidHaulageCharge() == false) {
              widget.controller
                  .addInvalidKey(widget.controller.haulageChargeKey!);
              return context.l10n.required;
            }
            return null;
          },
          builder: (field) => Column(
            children: [
              FormHeadingRow(
                headings: ['${context.l10n.haulageCharge}:'],
                disabled: isHaulageChargeDisabled,
                textStyle: isHaulageChargeDisabled && isDark
                    ? EmrOneConstants.kSmallestHeadingTextStyle
                        .copyWith(color: Colors.grey)
                    : null,
              ),
              FormRow(
                children: [
                  EmrUomFormField(
                    binding: haulageChargeBinding,
                    hintText: context.l10n.amount,
                    defaultUom: Uom.ld,
                    uomList: [Uom.ld, ..._uoms],
                    priceableElement: EmrUomPriceableElement.commodityRate,
                    enabled: ValueNotifier(
                      widget.enabled &&
                          !widget.controller.model!.isFullyCharged,
                    ),
                    validator: widget.enabled &&
                            !widget.controller.model!.isFullyCharged
                        ? Validators.required
                        : null,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void updateHaulageCharge() {
    setState(() {
      widget.controller.model!.haulageAdjustment = haulageChargeBinding.value;
    });
  }
}
