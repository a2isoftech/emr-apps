import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_crm/emr_one_crm_constants.dart';
import 'package:emr_one_crm/services/contract_controller.dart';
import 'package:emr_sharedtypes/constants.dart';
import 'package:emr_sharedtypes/uom/uom_value.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CwCollectedDelta extends StatefulWidget {
  const CwCollectedDelta({required this.controller, super.key});

  final ContractController controller;

  @override
  State<CwCollectedDelta> createState() => _CwCollectedDeltaState();
}

class _CwCollectedDeltaState extends State<CwCollectedDelta> {
  final collectedDeltaBinding = ValueNotifier<UomValue?>(null);
  late final List<Uom> _uoms;
  late VoidCallback _collectedDeltaChangeListener;
  late bool hasCollected;

  @override
  void initState() {
    super.initState();
    _uoms = UomTypeConstants.collectedDeltaUoms;
    _collectedDeltaChangeListener = updateCollectedDelta;
    final collectedDelta = widget.controller.model!.collectedDelta;
    collectedDeltaBinding.addListener(_collectedDeltaChangeListener);
    hasCollected = widget.controller.hasDeliveryMethod(
      CrmDeliveryMethod.collected,
    );
    if (collectedDelta != null) {
      collectedDeltaBinding.value = UomValue.fromValue(
        collectedDelta.value,
        collectedDelta.uom,
      );
    }
  }

  @override
  void dispose() {
    collectedDeltaBinding.removeListener(_collectedDeltaChangeListener);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: hasCollected,
      child: ChangeNotifierProvider.value(
        value: widget.controller,
        builder: (context, child) => FormField(
          builder: (field) => Column(
            children: [
              SizedBox(
                width: double.infinity,
                child: Wrap(
                  spacing: Insets.gutter / 2,
                  runSpacing: Insets.gutter / 2,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          '${context.l10n.lessCharged}:',
                          style: EmrOneConstants.kSmallestHeadingTextStyle,
                        ),
                        Switch(
                          activeThumbColor: Theme.of(
                            context,
                          ).colorScheme.secondary,
                          value: widget.controller.model!.isLessCharged,
                          onChanged: (value) {
                            _onChargeSwitchChanged(
                              value: value,
                              isLessChargedSwitch: true,
                            );
                          },
                        ),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          '${context.l10n.fullyCharged}:',
                          style: EmrOneConstants.kSmallestHeadingTextStyle,
                        ),
                        Switch(
                          activeThumbColor: Theme.of(
                            context,
                          ).colorScheme.secondary,
                          value: widget.controller.model!.isFullyCharged,
                          onChanged: (value) {
                            _onChargeSwitchChanged(
                              value: value,
                              isLessChargedSwitch: false,
                            );
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              if (!widget.controller.model!.isFullyCharged &&
                  !widget.controller.model!.isLessCharged) ...[
                FormHeadingRow(headings: ['${context.l10n.collectedDelta}: ']),
                FormRow(
                  children: [
                    EmrUomFormField(
                      binding: collectedDeltaBinding,
                      hintText: context.l10n.reduceCommodityRateMsg,
                      defaultUom: _uoms.first,
                      uomList: _uoms,
                      priceableElement: EmrUomPriceableElement.commodityRate,
                      enabled: ValueNotifier(
                        hasCollected &&
                            !widget.controller.model!.isFullyCharged,
                      ),
                      validator:
                          hasCollected &&
                              !widget.controller.model!.isFullyCharged
                          ? (value) {
                              if (value == null) return context.l10n.required;

                              if (value is String) {
                                if (value.trim().isEmpty) {
                                  return context.l10n.required;
                                }
                                return Validators.decimal(
                                  value,
                                  min: 0,
                                  max: 99999,
                                );
                              }

                              return null;
                            }
                          : null,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Switch(
                      activeThumbColor: Theme.of(context).colorScheme.secondary,
                      value: widget
                          .controller
                          .model!
                          .displayCollectedDeltaOnRemittance,
                      onChanged: (value) {
                        widget.controller.setDisplayCollectedDeltaOnRemittance(
                          value: value,
                        );
                      },
                    ),
                    const SizedBox(width: Insets.gutter / 2),
                    Expanded(
                      child: Text(
                        context.l10n.displayCollectedDeltaOnRemittance,
                        style: EmrOneConstants.kSmallestHeadingTextStyle,
                        softWrap: true,
                        overflow: TextOverflow.visible,
                      ),
                    ),
                  ],
                ),
              ] else if (widget.controller.model!.isLessCharged) ...[
                FormHeadingRow(headings: ['${context.l10n.collectedCost}: ']),
                FormRow(
                  children: [
                    EmrUomFormField(
                      binding: collectedDeltaBinding,
                      hintText: context.l10n.enterCollectedCostMsg,
                      defaultUom: Uom.ld,
                      uomList: _uoms,
                      priceableElement: EmrUomPriceableElement.commodityRate,
                      enabled: ValueNotifier(
                        widget.controller.model!.isLessCharged,
                      ),
                    ),
                  ],
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }

  void updateCollectedDelta() {
    setState(() {
      widget.controller.model!.collectedDelta = collectedDeltaBinding.value;
    });
  }

  void _onChargeSwitchChanged({
    required bool value,
    required bool isLessChargedSwitch,
  }) {
    if (!hasCollected) return;

    if (value) {
      widget.controller.model!.hasCToF = false;
    }
    if (!widget.controller.hasDeliveryMethod(CrmDeliveryMethod.collected)) {
      widget.controller.addDeliveryMethod(CrmDeliveryMethod.collected);
    }

    if (isLessChargedSwitch) {
      widget.controller.setLessCharged(lessCharged: value);
      if (value) widget.controller.setFullyCharged(fullyCharged: !value);
    } else {
      widget.controller.setFullyCharged(fullyCharged: value);
      if (value) widget.controller.setLessCharged(lessCharged: !value);
    }
  }
}
