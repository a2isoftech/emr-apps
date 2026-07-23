import 'package:emr_one_core/controllers/base_settings_controller.dart';
import 'package:emr_one_core/controllers/settings_controller.dart';
import 'package:emr_one_core/eo_constants.dart';
import 'package:emr_one_core/extensions/extensions.dart';
import 'package:emr_one_core/widgets/widgets.dart';
import 'package:emr_one_crm/emr_one_crm_constants.dart';
import 'package:emr_one_crm/graphql/trader/schema.graphql.dart';
import 'package:emr_one_crm/models/models.dart';
import 'package:emr_one_crm/screens/contract_wizard/components/cw_addgradeselgrade.dart';
import 'package:emr_one_crm/screens/contract_wizard/components/cw_gradesinvalid.dart';
import 'package:emr_one_crm/services/contract_controller.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CWAddGrade extends StatefulWidget {
  const CWAddGrade({required this.controller, super.key});

  final ContractController controller;

  @override
  State<CWAddGrade> createState() => _CWAddGradeState();
}

class _CWAddGradeState extends State<CWAddGrade>
    with AutomaticKeepAliveClientMixin<CWAddGrade> {
  Grade? pickedGrade;
  ValueUomPair? pickedRate;
  late final List<Uom> _uoms;
  final collectedPriceBinding = ValueNotifier<UomValue?>(null);
  final deliveredPriceBinding = ValueNotifier<UomValue?>(null);
  final weightBinding = ValueNotifier<UomValue?>(null);

  late TextEditingController gradeTextController;
  late VoidCallback _collectedListener;
  late VoidCallback _deliveredListener;
  late VoidCallback _weightListener;
  late VoidCallback _materialDescListener;
  ValueNotifier<String> brokerReferenceBinding = ValueNotifier<String>('');
  ValueNotifier<String> materialDescriptionBinding = ValueNotifier<String>('');

  String _lastMaterialDescription = '';
  String _lastGrdae = '';

  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();

    final uomService = context.read<UomService>();
    final settingsController =
        context.read<BaseSettingsController>() as SettingsController;
    _uoms = uomService.getUoms(settingsController.territory);
    widget.controller.lastSelectedUom =
        widget.controller.lastSelectedUom ?? _uoms.first;
    gradeTextController = TextEditingController();
    _collectedListener = () => setState(() {
      _scrollToAddGrades();
      _syncWeightUom();
    });
    _deliveredListener = () => setState(() {
      _scrollToAddGrades();
      _syncWeightUom();
    });
    _weightListener = () => setState(() {});

    weightBinding.addListener(_scrollToAddGrades);

    _materialDescListener = () {
      if (widget.controller.isFixed) {
        _syncBrokerFromMaterial();
      }
    };

    collectedPriceBinding.addListener(_collectedListener);
    deliveredPriceBinding.addListener(_deliveredListener);
    materialDescriptionBinding.addListener(_materialDescListener);
    weightBinding.addListener(_weightListener);
  }

  @override
  void dispose() {
    gradeTextController.dispose();
    collectedPriceBinding.removeListener(_collectedListener);
    deliveredPriceBinding.removeListener(_deliveredListener);
    weightBinding.removeListener(_weightListener);
    materialDescriptionBinding.removeListener(_materialDescListener);

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    final hasDelivered = widget.controller.hasDeliveryMethod(
      CrmDeliveryMethod.delivered,
    );
    final hasCollected = widget.controller.hasDeliveryMethod(
      CrmDeliveryMethod.collected,
    );
    final priceTye = Enum$ContractHeaderPriceType
        .values[(widget.controller.model?.priceType!.id ?? 1 )- 1];
    final isUnfixed =
        priceTye == Enum$ContractHeaderPriceType.UNFIXED_PRICE_LME_HEDGE ||
        priceTye == Enum$ContractHeaderPriceType.UNFIXED_PRICE_NO_HEDGE;
    final requiresWeight = !widget.controller.isSpot;
    final hasWeight = weightBinding.value != null;
    final addEnabled =
        pickedGrade != null &&
        widget.controller.hasAnyDeliveryMethod() &&
        (!hasDelivered ||
            (deliveredPriceBinding.value != null &&
                deliveredPriceBinding.value!.value > 0) || isUnfixed) &&
        (!hasCollected ||
            (collectedPriceBinding.value != null &&
                collectedPriceBinding.value!.value > 0) || isUnfixed) &&
        (!requiresWeight ||
            (weightBinding.value != null && weightBinding.value!.value > 0)) &&
        (!requiresWeight || hasWeight);

    return ChangeNotifierProvider.value(
      value: widget.controller,
      builder: (context, child) {
        return FormField(
          validator: (value) {
            if (widget.controller.model!.gplGrades.isEmpty) {
              widget.controller.addInvalidKey(widget.controller.gradesKey!);
              return context.l10n.required;
            }
            if (!widget.controller.anyGradesSelected()) {
              widget.controller.addInvalidKey(widget.controller.gradesKey!);
              return context.l10n.selectAtLeastOneGrade;
            }
            return null;
          },
          builder: (field) => Column(
            children: [
              FormHeadingRow(
                isLeading: true,
                key: widget.controller.gradesKey,
                headings: [
                  if (widget.controller.appConfig.isWeb)
                    '${context.l10n.addANewGrade}:'
                  else
                    '${context.l10n.selectAGrade}:',
                ],
              ),
              DecoratedBox(
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.surface,
                  border: Border.all(color: Colors.grey),
                  borderRadius: const BorderRadius.all(Radius.circular(4)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(Insets.gutter),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        context.l10n.grade,
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      CWAddGradeSelectGrade(
                        key: ValueKey(pickedGrade?.gradeCode ?? ''),
                        controller: widget.controller,
                        textController: gradeTextController,
                        decoration: InputDecoration(
                          hintText: '${context.l10n.grade}...',
                        ),
                        filterOutSelectedGrades: !widget.controller.isFixed,
                        onGradeSelected: (Grade grade) {
                          _scrollToAddGrades();
                          setState(() {
                            pickedGrade = grade;
                            materialDescriptionBinding.value =
                                grade.description;
                            if (widget.controller.isFixed) {
                              _syncBrokerFromMaterial();
                            }
                            _lastGrdae = grade.gradeCode;
                          });
                          if (widget.controller.model!.pricingList.isNotEmpty) {
                            widget.controller.model!.regenerateGrades = true;
                          }
                          return grade;
                        },
                      ),
                      const SizedBox(height: Insets.gutter),
                      EmrTextFormField(
                        binding: materialDescriptionBinding,
                        labelText: context.l10n.materialDescription,
                      ),
                      if (widget.controller.isFixed)
                        const SizedBox(height: Insets.gutter / 2),
                      if (widget.controller.isFixed)
                        EmrTextFormField(
                          binding: brokerReferenceBinding,
                          labelText: context.l10n.brokerReference,
                        ),
                      const SizedBox(height: Insets.gutter / 2),
                      Row(
                        children: [
                          if (hasCollected) ...[
                            Flexible(
                              child: EmrUomFormField(
                                binding: collectedPriceBinding,
                                labelText: context.l10n.colPrice,
                                defaultUom: widget.controller.lastSelectedUom,
                                priceableElement:
                                    EmrUomPriceableElement.commodityRate,
                                enabled: ValueNotifier(hasCollected),
                              ),
                            ),
                            const SizedBox(width: Insets.gutter / 2),
                          ],
                          if (hasDelivered)
                            Flexible(
                              child: EmrUomFormField(
                                binding: deliveredPriceBinding,
                                labelText: context.l10n.delPrice,
                                defaultUom: widget.controller.lastSelectedUom,
                                priceableElement:
                                    EmrUomPriceableElement.commodityRate,
                                enabled: ValueNotifier(hasDelivered),
                              ),
                            ),
                        ],
                      ),
                      const SizedBox(height: Insets.gutter / 2),
                      if (!widget.controller.isSpot) ...[
                        EmrUomFormField(
                          binding: weightBinding,
                          labelText: context.l10n.targetWeight,
                          defaultUom: widget.controller.lastSelectedUom,
                          enabled: ValueNotifier(
                            requiresWeight && (hasDelivered || hasCollected),
                          ),
                        ),
                        const SizedBox(height: Insets.gutter / 2),
                      ],
                      const SizedBox(height: Insets.gutter / 2),
                      Row(
                        key: widget.controller.addGradesKey,
                        children: [
                          Expanded(
                            child: ElevatedButton(
                              onPressed: addEnabled ? _onAddGrade : null,
                              child: widget.controller.appConfig.isWeb
                                  ? Padding(
                                      padding: const EdgeInsets.all(
                                        Insets.gutter / 8,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(context.l10n.addNew),
                                          const SizedBox(width: Insets.gutter),
                                          const Icon(Icons.add),
                                        ],
                                      ),
                                    )
                                  : Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [Text(context.l10n.add)],
                                    ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              if (widget.controller.appConfig.isWeb)
                CWGradesInvalid(controller: widget.controller),
            ],
          ),
        );
      },
    );
  }

  void _scrollToAddGrades() {
    if (!widget.controller.appConfig.isWeb) {
      widget.controller.scrollToKey(widget.controller.addGradesKey!);
    }
  }

  ValueUomPair _toPair(ValueNotifier<UomValue?> b, {bool isRate = false}) =>
      ValueUomPair(
        uom: b.value?.uom ?? Uom.unknown,
        value: b.value?.value ?? 0,
        isRate: isRate,
      );

  void _onAddGrade() {
    if (pickedGrade == null) return;

    final brokerRefTrim = brokerReferenceBinding.value.trim();
    final alreadyExists = widget.controller.model!.gplGrades.any(
      (g) =>
          g.gradeCode == pickedGrade!.gradeCode &&
          (g.brokerReference ?? '') == brokerRefTrim,
    );
    if (alreadyExists) {
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(context.l10n.gradeWithBrokerRefExist),
            backgroundColor: Theme.of(context).colorScheme.error,
          ),
        );
      }
      return;
    }

    final newGrade = GplGrade(
      pickedGrade!.gradeCode,
      pickedGrade!.description,
      pickedGrade!.gradeGroup,
      pickedGrade!.gradeType,
      ValueUomPair(isRate: true),
      _toPair(deliveredPriceBinding),
      _toPair(collectedPriceBinding),
      _toPair(weightBinding),
      materialDescriptionBinding.value.trim(),
      0,
      [],
      brokerReferenceBinding.value.trim(),
    );

    widget.controller.model!.gplGrades.add(newGrade);
    widget.controller.addedGrade();

    setState(() {
      widget.controller.setGradeSelected(
        pickedGrade!.gradeCode,
        brokerReferenceBinding.value.trim(),
      );
      pickedGrade = null;
      gradeTextController.clear();
      materialDescriptionBinding.value = '';
      brokerReferenceBinding.value = '';

      collectedPriceBinding.value = null;
      deliveredPriceBinding.value = null;
      weightBinding.value = null;
    });
  }

  void _syncWeightUom() {
    final colUom = collectedPriceBinding.value?.uom;
    final delUom = deliveredPriceBinding.value?.uom;

    final newUom = colUom ?? delUom;
    final oldValue = weightBinding.value?.value ?? 0;

    if (newUom != null) {
      if (weightBinding.value?.uom != newUom) {
        weightBinding.value = UomValue.fromValue(oldValue, newUom);
        widget.controller.lastSelectedUom = newUom;
      }
    }
  }

  void _syncBrokerFromMaterial() {
    final newMat = materialDescriptionBinding.value.trim();
    final currentBroker = brokerReferenceBinding.value.trim();
    final shouldUpdate =
        currentBroker.isEmpty ||
        currentBroker == _lastMaterialDescription ||
        _lastGrdae != pickedGrade?.gradeCode;
    if (shouldUpdate && widget.controller.isFixed) {
      brokerReferenceBinding.value = newMat;
    }
    _lastMaterialDescription = newMat;
  }
}
