import 'package:emr_one_core/controllers/base_settings_controller.dart';
import 'package:emr_one_core/controllers/settings_controller.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_crm/emr_one_crm_constants.dart';
import 'package:emr_one_crm/keys.dart';
import 'package:emr_one_crm/models/gpl_grade.dart';
import 'package:emr_one_crm/services/contract_controller.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AddPricingList extends StatefulWidget {
  const AddPricingList({
    required this.isDark,
    required this.defaultUom,
    required this.controller,
    required this.gplGrade,
    super.key,
  });

  final bool isDark;
  final Uom defaultUom;
  final ContractController controller;
  final GplGrade gplGrade;

  @override
  State<AddPricingList> createState() => _AddPricingListState();
}

class _AddPricingListState extends State<AddPricingList> {
  final targetWeightUomBinding = ValueNotifier<UomValue?>(null);
  final haulageChargeUomBinding = ValueNotifier<UomValue?>(null);
  final collectedDeltaChangeUomBinding = ValueNotifier<UomValue?>(null);
  late TextEditingController materialDescriptionController;
  late VoidCallback _targetWeightListener;
  late VoidCallback _haulageChargeListener;
  late VoidCallback _collectedDeltaChangeListener;
  late final List<Uom> _uoms;

  bool isExpanded = false;

  @override
  void initState() {
    super.initState();
    isExpanded = widget.controller.isGplCreate.value &&
        widget.controller.isFixed &&
        widget.gplGrade.contractWeight.value <= 0;
    final uomService = context.read<UomService>();
    final settingsController =
        context.read<BaseSettingsController>() as SettingsController;
    _uoms = uomService.getUoms(settingsController.territory);
    widget.controller.lastSelectedUom =
        widget.controller.lastSelectedUom ?? widget.defaultUom;
    targetWeightUomBinding.value = UomValue.fromValue(
      widget.controller.getContractWeight(widget.gplGrade).value,
      widget.controller.getContractWeight(widget.gplGrade).uom,
    );

    haulageChargeUomBinding.value = UomValue.fromValue(
      widget.controller.getHaulageCharge(widget.gplGrade)?.value ?? 0,
      widget.controller.getHaulageCharge(widget.gplGrade)?.uom ?? _uoms.first,
    );

    collectedDeltaChangeUomBinding.value = UomValue.fromValue(
      widget.controller.model!.collectedDelta?.value ?? 0,
      widget.controller.model!.collectedDelta?.uom ?? _uoms.first,
    );

    _targetWeightListener = () => setState(_updateResult);
    _haulageChargeListener = () => setState(_updateResult);
    _collectedDeltaChangeListener = () => setState(_updateResult);

    targetWeightUomBinding.addListener(_targetWeightListener);
    haulageChargeUomBinding.addListener(_haulageChargeListener);
    collectedDeltaChangeUomBinding.addListener(_collectedDeltaChangeListener);

    materialDescriptionController = TextEditingController(
      text: widget.gplGrade.materialDescription,
    );
  }

  @override
  void dispose() {
    targetWeightUomBinding.removeListener(_targetWeightListener);
    haulageChargeUomBinding.removeListener(_haulageChargeListener);
    collectedDeltaChangeUomBinding.removeListener(
      _collectedDeltaChangeListener,
    );
    materialDescriptionController.dispose();
    targetWeightUomBinding.dispose();
    haulageChargeUomBinding.dispose();
    collectedDeltaChangeUomBinding.dispose();
    super.dispose();
  }

  void _updateResult() {
    final targetWeight = targetWeightUomBinding.value?.value ?? 0;
    final targetUom =
        targetWeightUomBinding.value?.uom ??
        widget.controller.lastSelectedUom ??
        widget.defaultUom;

    setState(() {
      widget.controller.updateContractWeight(
        widget.gplGrade,
        ValueUomPair(uom: targetUom, value: targetWeight),
      );
    });
  }

  String _getSelectedDepotNames() {
    return widget.controller.model?.selectedDepots
            .map((e) => e.name)
            .join(',') ??
        '';
  }

  String _getSelectedArisingPointNames() {
    return widget.controller.model?.selectedArisingPoints
            .map((e) => e.shortName)
            .join(',') ??
        '';
  }

  @override
  Widget build(BuildContext context) {
    final colPrice = widget.controller.getCollectedPrice(widget.gplGrade);
    final delPrice = widget.controller.getDeliveredPrice(widget.gplGrade);

    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(12)),
        border: Border.all(
          color: widget.isDark
              ? Theme.of(context).colorScheme.tertiary
              : Theme.of(context).colorScheme.secondary,
        ),
      ),
      padding: const EdgeInsets.all(Insets.gutter / 2),
      margin: const EdgeInsets.only(bottom: Insets.gutter / 2),
      child: Column(
        children: [
          InkWell(
            onTap: () {
              setState(() {
                isExpanded = !isExpanded;
              });
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    [
                      widget.gplGrade.gradeCode,
                      if ((widget.gplGrade.brokerReference ?? '')
                          .trim()
                          .isEmpty)
                        widget.gplGrade.description,
                      if ((widget.gplGrade.brokerReference ?? '')
                          .trim()
                          .isNotEmpty)
                        widget.gplGrade.brokerReference!.trim(),
                    ].join(' - '),
                    style: const TextStyle(fontWeight: FontWeight.w900),
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    if (widget.controller.hasDeliveryMethod(
                      CrmDeliveryMethod.collected,
                    ))
                      Padding(
                        padding: const EdgeInsets.only(left: Insets.gutter / 2),
                        child: Text(
                          _formatPriceForHeader(colPrice.deliveredPrice),
                          style: const TextStyle(fontWeight: FontWeight.w900),
                        ),
                      ),
                    if (widget.controller.hasDeliveryMethod(
                      CrmDeliveryMethod.delivered,
                    ))
                      Padding(
                        padding: const EdgeInsets.only(left: Insets.gutter / 2),
                        child: Text(
                          _formatPriceForHeader(delPrice),
                          style: const TextStyle(fontWeight: FontWeight.w900),
                        ),
                      ),
                    Padding(
                      padding: const EdgeInsets.only(left: Insets.gutter / 2),
                      child: IconButton(
                        onPressed: () {
                          widget.controller.removeGradeFromList(
                            widget.gplGrade,
                          );
                        },
                        icon: Icon(
                          Icons.delete,
                          color: Theme.of(context).colorScheme.error,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          if (isExpanded)
            Padding(
              padding: const EdgeInsets.only(top: Insets.gutter / 2),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (widget.controller.hasDeliveryMethod(
                        CrmDeliveryMethod.collected,
                      ) ||
                      widget.controller.isFixed)
                    Padding(
                      padding: const EdgeInsets.only(bottom: Insets.gutter / 2),
                      child: TextFormField(
                        enabled: false,
                        initialValue:
                            '${context.l10n.location}: '
                            '${_getSelectedArisingPointNames()}',
                        decoration: InputDecoration(
                          hintText: context.l10n.location,
                        ),
                        readOnly: true,
                      ),
                    ),
                  if (!widget.controller.isGplCreate.value)
                    Padding(
                      padding: const EdgeInsets.only(bottom: Insets.gutter / 2),
                      child: TextFormField(
                        enabled: false,
                        initialValue:
                            '${context.l10n.depotLabel}: '
                            '${_getSelectedDepotNames()}',
                        decoration: InputDecoration(
                          hintText: context.l10n.depotLabel,
                        ),
                        readOnly: true,
                      ),
                    ),
                  FormRow(children: [Text(context.l10n.materialDescription)]),
                  Padding(
                    padding: const EdgeInsets.only(bottom: Insets.gutter),
                    child: TextFormField(
                      controller: materialDescriptionController,
                      enabled: true,
                      decoration: InputDecoration(
                        hintText: context.l10n.materialDescription,
                      ),
                      onChanged: (value) {
                        widget.controller.updateMaterialDescription(
                          widget.gplGrade,
                          value,
                        );
                      },
                    ),
                  ),
                  if (widget.controller.isFixed)
                    FormRow(children: [Text(context.l10n.targetWeight)]),
                  if (widget.controller.isFixed)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        FormRow(children: [Text(context.l10n.targetWeight)]),
                        FormRow(
                          children: [
                            EmrUomFormField(
                              binding: targetWeightUomBinding,
                              hintText: context.l10n.targetWeight,
                              defaultUom: widget.defaultUom,
                              validator: (_) => requiredGreaterThanZero(),
                              autovalidateMode: AutovalidateMode.always,
                            ),
                          ],
                        ),
                      ],
                    ),
                  FormRow(
                    children: [
                      if (widget.controller.hasDeliveryMethod(
                        CrmDeliveryMethod.collected,
                      ))
                        Text(context.l10n.colPrice),
                      if (widget.controller.hasDeliveryMethod(
                        CrmDeliveryMethod.delivered,
                      ))
                        Text(context.l10n.delPrice),
                    ],
                  ),
                  FormRow(
                    children: [
                      if (widget.controller.hasDeliveryMethod(
                        CrmDeliveryMethod.collected,
                      ))
                        UomInputField.fromUOMDefaults(
                          key: K.addGradeCollectedPrice,
                          context: context,
                          initialValue: widget.controller
                              .getCollectedPrice(widget.gplGrade)
                              .collectedPrice,
                          onChanged: (value) {
                            widget.controller.updateCollectedPrice(
                              widget.gplGrade,
                              value,
                            );
                          },
                          hintText: context.l10n.colPrice,
                          filled: true,
                          enabled: widget.controller.hasDeliveryMethod(
                            CrmDeliveryMethod.collected,
                          ),
                        ),
                      if (widget.controller.hasDeliveryMethod(
                        CrmDeliveryMethod.delivered,
                      ))
                        UomInputField.fromUOMDefaults(
                          key: K.addGradeDeliveredPrice,
                          context: context,
                          initialValue: widget.controller.getDeliveredPrice(
                            widget.gplGrade,
                          ),
                          hintText: context.l10n.delPrice,
                          onChanged: (value) {
                            widget.controller.updateDeliveredPrice(
                              widget.gplGrade,
                              value,
                            );
                          },
                          filled: true,
                          enabled: widget.controller.hasDeliveryMethod(
                            CrmDeliveryMethod.delivered,
                          ),
                        ),
                    ],
                  ),
                  if (widget.controller.hasDeliveryMethod(
                        CrmDeliveryMethod.collected,
                      ) &&
                      !widget.controller.model!.isFullyCharged) ...[
                    FormRow(
                      children: [
                        if (widget.controller.model!.isLessCharged)
                          Text(context.l10n.collectedCost)
                        else
                          Text(context.l10n.collectedDelta),
                      ],
                    ),
                    EmrUomFormField(
                      binding: collectedDeltaChangeUomBinding,
                      defaultUom: collectedDeltaChangeUomBinding.value?.uom,
                      priceableElement: EmrUomPriceableElement.costRate,
                      enabled: ValueNotifier(false),
                      hintText: widget.controller.model!.isLessCharged
                          ? context.l10n.enterCollectedCostMsg
                          : context.l10n.reduceCommodityRateMsg,
                      uomList: UomTypeConstants.collectedDeltaUoms,
                    ),
                  ],
                  if (widget.controller.model!.isLessCharged &&
                      widget.controller.hasDeliveryMethod(
                        CrmDeliveryMethod.collected,
                      ))
                    FormRow(children: [Text(context.l10n.haulageCharge)]),
                  if (widget.controller.model!.isLessCharged &&
                      widget.controller.hasDeliveryMethod(
                        CrmDeliveryMethod.collected,
                      ))
                    EmrUomFormField(
                      binding: haulageChargeUomBinding,
                      defaultUom: Uom.ld,
                      priceableElement: EmrUomPriceableElement.haulageRate,
                      enabled: ValueNotifier(true),
                      hintText: context.l10n.haulageCharge,
                      uomList: [Uom.ld, ..._uoms],
                    )
                  else
                    Container(),
                ],
              ),
            ),
        ],
      ),
    );
  }

  String _formatPriceForHeader(ValueUomPair colPrice) {
    if (colPrice.value == 0 && colPrice.uom == Uom.unknown) {
      return '0';
    }
    return '${colPrice.value.toStringAsFixed(4)} / '
        '${colPrice.uom.name.toUpperCase()}';
  }

  String? requiredGreaterThanZero() {
    final pair = targetWeightUomBinding.value;

    final requiredError = Validators.required(pair);
    if (requiredError != null) {
      return requiredError;
    }

    if ((pair?.value ?? 0) <= 0) {
      return context.l10n.mustBeGreater(0);
    }

    return null;
  }
}
