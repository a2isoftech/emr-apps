import 'dart:convert';

import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_elv_inspection/extensions/mod10_validator_extension.dart';
import 'package:emr_one_elv_inspection/models/model.dart';
import 'package:emr_one_elv_inspection/pages/inspection/controller/controller.dart';
import 'package:emr_one_elv_inspection/pages/inspection/widgets/custom_widgets/inspection_custom_widgets.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:signals/signals_flutter.dart';

class CatLookupCardSubScreen extends StatefulWidget {
  const CatLookupCardSubScreen({
    required this.currencyShort,
    required this.image,
    required this.selectedCat,
    super.key,
  });

  final String currencyShort;
  final String? image;
  final TechCatSearchModel selectedCat;

  @override
  State<CatLookupCardSubScreen> createState() => _CatLookupCardSubScreenState();
}

class _CatLookupCardSubScreenState extends State<CatLookupCardSubScreen> {
  late ValueNotifier<double?> catalyticFillNotifier;
  late ValueNotifier<int> catClassificationNotifier;
  late TextEditingController catSealNumberController;
  late final InspectionScreenController controller;
  late final VehicleDescriptionModel? vehicleDescription;

  late final InspectionState state;

  @override
  void initState() {
    super.initState();

    controller = Provider.of<InspectionScreenController>(
      context,
      listen: false,
    );
    vehicleDescription = controller.state.quoteToInspect?.vehicleDescription;

    catalyticFillNotifier = ValueNotifier<double?>(null);
    state = controller.state;

    catClassificationNotifier = ValueNotifier<int>(
      state.catClassificationList.entries
              .where((x) => x.value == widget.selectedCat.catClassification)
              .firstOrNull
              ?.key ??
          0,
    );
    catSealNumberController = TextEditingController(
      text: widget.selectedCat.sealNo,
    );
  }

  @override
  void dispose() {
    catalyticFillNotifier.dispose();
    catClassificationNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: widget.selectedCat.isSelected,
      builder: (context, isSelected, child) {
        return MouseRegion(
          cursor: isSelected ? MouseCursor.defer : SystemMouseCursors.click,
          child: GestureDetector(
            onTap: () {
              for (final x in state.cats.value) {
                x.isSelected.value = false;
              }
              controller.isSealNumberUsed.value = false;
              controller.isSealNumberValid.value = true;
              widget.selectedCat.isSelected.value = !isSelected;
              widget.selectedCat.catClassification ??=
                  state.catClassificationList.entries.first.value;
              widget.selectedCat.catLocation ??=
                  state.catLocationList.entries.first.value;
              widget.selectedCat.image = widget.image;
            },
            child: InspectionBorderWidget(
              isSelected: isSelected,
              child: Column(
                children: [
                  CheckboxListTile(
                    value: isSelected,
                    onChanged: (value) {
                      for (final x in state.cats.value) {
                        x.isSelected.value = false;
                      }
                      widget.selectedCat.isSelected.value = value ?? false;
                      widget.selectedCat.catClassification ??=
                          state.catClassificationList.entries.first.value;
                      widget.selectedCat.catLocation ??=
                          state.catLocationList.entries.first.value;
                      widget.selectedCat.image = widget.image;
                      controller.isSealNumberValid.value =
                          (widget.selectedCat.sealNo ?? '').isValidMod10Value();
                    },
                    controlAffinity: ListTileControlAffinity.leading,
                    title: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(text: '${context.l10n.serialNumber}: '),
                          TextSpan(text: widget.selectedCat.serialNumber),
                        ],
                      ),
                    ),
                  ),
                  if (!isSelected) ...[
                    if (widget.image != null)
                      Image.memory(
                        base64Decode(widget.image!),
                        fit: BoxFit.fill,
                        height: 200,
                        width: double.maxFinite,
                      )
                    else
                      SizedBox(
                        width: double.maxFinite,
                        height: 200,
                        child: ColoredBox(
                          color: Theme.of(context).colorScheme.onSurfaceVariant,
                        ),
                      ),
                    const SizedBox(height: Insets.gutter),
                  ],
                  Padding(
                    padding: const EdgeInsets.all(Insets.gutter / 2),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Text(
                                context.l10n.make,
                                style: Theme.of(context).textTheme.bodyLarge,
                              ),
                            ),
                            Expanded(
                              flex: 3,
                              child: Tooltip(
                                message: vehicleDescription?.make ?? '',
                                child: Text(
                                  textAlign: TextAlign.right,
                                  overflow: TextOverflow.clip,
                                  vehicleDescription?.make ?? '',
                                  style: Theme.of(context).textTheme.bodyLarge!
                                      .copyWith(fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: Insets.gutter / 2),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Text(
                                context.l10n.model,
                                style: Theme.of(context).textTheme.bodyLarge,
                              ),
                            ),
                            Expanded(
                              flex: 3,
                              child: Tooltip(
                                message: vehicleDescription?.model ?? '',
                                child: Text(
                                  vehicleDescription?.model ?? '',
                                  textAlign: TextAlign.right,
                                  overflow: TextOverflow.clip,
                                  style: Theme.of(context).textTheme.bodyLarge!
                                      .copyWith(fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: Insets.gutter / 2),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Text(
                                context.l10n.unitCost,
                                style: Theme.of(context).textTheme.bodyLarge,
                              ),
                            ),
                            Expanded(
                              flex: 3,
                              child: Text(
                                '${widget.currencyShort} '
                                '''${NumberFormat.decimalPattern(Localizations.localeOf(context).toString()).format(widget.selectedCat.converterValue)}''',
                                textAlign: TextAlign.right,
                                overflow: TextOverflow.clip,
                                style: Theme.of(context).textTheme.bodyLarge!
                                    .copyWith(fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: Insets.gutter / 2),
                        if (!isSelected) ...[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                context.l10n.catLocation,
                                style: Theme.of(context).textTheme.bodyLarge,
                              ),
                              Text(
                                widget.selectedCat.catLocation ?? '',
                                style: Theme.of(context).textTheme.bodyLarge!
                                    .copyWith(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          const SizedBox(height: Insets.gutter / 2),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                context.l10n.catClassification,
                                style: Theme.of(context).textTheme.bodyLarge,
                              ),
                              Text(
                                widget.selectedCat.catClassification ?? '',
                                style: Theme.of(context).textTheme.bodyLarge!
                                    .copyWith(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          const SizedBox(height: Insets.gutter / 2),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                context.l10n.value,
                                style: Theme.of(context).textTheme.bodyLarge,
                              ),
                              Text(
                                '${widget.currencyShort} '
                                '''${NumberFormat.decimalPattern(Localizations.localeOf(context).toString()).format(widget.selectedCat.converterValue)}''',
                                style: Theme.of(context).textTheme.bodyLarge!
                                    .copyWith(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          const SizedBox(height: Insets.gutter / 2),
                        ],
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              context.l10n.matchProbability,
                              style: Theme.of(context).textTheme.bodyLarge,
                            ),
                            InspectionProbabilityWidget(
                              value: widget.selectedCat.matchingProbability,
                            ),
                          ],
                        ),
                        const SizedBox(height: Insets.gutter / 2),
                        if (isSelected) ...[
                          Form(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Text(
                                  '${context.l10n.catalyticFill}:',
                                  style: Theme.of(context).textTheme.bodyLarge,
                                ),
                                const SizedBox(height: Insets.gutter / 4),
                                ValueListenableBuilder(
                                  valueListenable: catalyticFillNotifier,
                                  builder:
                                      (context, catalyticFillValue, child) {
                                        return InspectionMultiSelectorButton(
                                          buttons: state
                                              .catalyticFillList
                                              .entries
                                              .map((x) => x.value)
                                              .toList(),
                                          enabledFunction: (i) => true,
                                          selected: {
                                            if (catalyticFillValue == null)
                                              null
                                            else
                                              (catalyticFillValue * 4).toInt(),
                                          },
                                          onSelected:
                                              (Set<int?> newSelection) async {
                                                if (newSelection.first !=
                                                    null) {
                                                  catalyticFillNotifier.value =
                                                      newSelection.first == 0
                                                      ? 0
                                                      : newSelection.first! *
                                                            .25;
                                                  widget
                                                          .selectedCat
                                                          .catalyticFill =
                                                      catalyticFillNotifier
                                                          .value;
                                                }
                                              },
                                        );
                                      },
                                ),
                                const SizedBox(height: Insets.gutter),
                                Watch((context) {
                                  return Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                        child: InspectionTextForm(
                                          txtController:
                                              catSealNumberController,
                                          header: context.l10n.sealNumber,
                                          placeholder: context.l10n.sealNumber,
                                          onChanged: (p0) {
                                            widget.selectedCat.sealNo = p0;
                                            controller.isSealNumberValid.value =
                                                p0.isValidMod10Value();
                                            controller.isSealNumberUsed.value =
                                                false;
                                          },
                                          errorText:
                                              controller.isSealNumberUsed.value
                                              ? context.l10n.sealNumberIsUsed
                                              : controller
                                                    .isSealNumberValid
                                                    .value
                                              ? null
                                              : context.l10n.invalidSealNumber,
                                        ),
                                      ),
                                      IconButton(
                                        onPressed: () async {
                                          await ScanHelper.startInlineCodeScan(
                                            context,
                                            title: context.l10n.scan,
                                          ).then((scannedCode) {
                                            if (scannedCode != null &&
                                                scannedCode != '') {
                                              catSealNumberController.text =
                                                  scannedCode;
                                              widget.selectedCat.sealNo =
                                                  scannedCode;
                                              controller
                                                  .isSealNumberValid
                                                  .value = scannedCode
                                                  .isValidMod10Value();
                                              controller
                                                      .isSealNumberUsed
                                                      .value =
                                                  false;
                                            }
                                          });
                                        },
                                        icon: const Icon(Icons.qr_code),
                                      ),
                                    ],
                                  );
                                }),
                                const SizedBox(height: Insets.gutter),
                                InspectionDropDownButton(
                                  onChanged: (p0) {
                                    widget.selectedCat.catLocation = p0;
                                  },
                                  placeholder: context.l10n.enterCatLocation,
                                  selectedItem: widget.selectedCat.catLocation,
                                  items: state.catLocationList.entries
                                      .map(
                                        (x) => DropdownMenuItem(
                                          value: x.value,
                                          child: Text(
                                            x.value,
                                            style: Theme.of(
                                              context,
                                            ).textTheme.bodyLarge,
                                          ),
                                        ),
                                      )
                                      .toList(),
                                  header: context.l10n.catLocation,
                                ),
                                const SizedBox(height: Insets.gutter),
                                Text(
                                  context.l10n.catClassification,
                                  style: Theme.of(context).textTheme.bodyLarge,
                                ),
                                const SizedBox(height: Insets.gutter / 2),
                                _multiSelectorButton(),
                              ],
                            ),
                          ),
                          const SizedBox(height: Insets.gutter / 2),
                        ],
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  ValueListenableBuilder<int> _multiSelectorButton() {
    return ValueListenableBuilder(
      valueListenable: catClassificationNotifier,
      builder: (context, catClassificationValue, child) {
        return InspectionMultiSelectorButton(
          buttons: state.catClassificationList.entries
              .map((x) => x.value)
              .toList(),
          enabledFunction: (i) => true,
          selected: {catClassificationValue},
          onSelected: (Set<int?> newSelection) async {
            if (newSelection.first != null) {
              catClassificationNotifier.value = newSelection.first!;
              widget.selectedCat.catClassification =
                  state.catClassificationList[newSelection.first];
            }
          },
        );
      },
    );
  }
}
