import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_elv_inspection/extensions/mod10_validator_extension.dart';
import 'package:emr_one_elv_inspection/models/model.dart';
import 'package:emr_one_elv_inspection/pages/inspection/widgets/custom_widgets/inspection_custom_widgets.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:signals/signals_flutter.dart';

class ManualCatLookupCardSubScreen extends StatefulWidget {
  const ManualCatLookupCardSubScreen({
    required this.currencyShort,
    required this.selectedCat,
    required this.make,
    required this.model,
    required this.catLocationList,
    required this.catClassificationList,
    required this.onSelectionChanged,
    required this.isSealNumberValid,
    required this.isSealNumberUsed,
    super.key,
  });

  final TechCatSearchModel selectedCat;
  final String make;
  final String model;
  final Map<int, String> catLocationList;
  final Map<int, String> catClassificationList;
  final void Function()? onSelectionChanged;
  final Signal<bool> isSealNumberValid;
  final Signal<bool> isSealNumberUsed;
  final String currencyShort;

  @override
  State<ManualCatLookupCardSubScreen> createState() =>
      _ManualCatLookupCardSubScreenState();
}

class _ManualCatLookupCardSubScreenState
    extends State<ManualCatLookupCardSubScreen> {
  late TextEditingController txtSealNumberController;
  late TextEditingController txtSerialNumberController;

  @override
  void initState() {
    super.initState();
    txtSealNumberController = TextEditingController(
      text: widget.selectedCat.sealNo,
    );
    txtSerialNumberController = TextEditingController(
      text: widget.selectedCat.serialNumber,
    );
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
              widget.onSelectionChanged?.call();
              widget.selectedCat.isSelected.value = !isSelected;
              widget.selectedCat.catClassification ??=
                  widget.catClassificationList.entries.first.value;
              widget.selectedCat.catLocation ??=
                  widget.catLocationList.entries.first.value;
            },
            child: InspectionBorderWidget(
              isSelected: isSelected,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CheckboxListTile(
                    value: isSelected,
                    onChanged: (value) {
                      widget.onSelectionChanged?.call();
                      widget.selectedCat.isSelected.value = value ?? false;
                      widget.selectedCat.catClassification ??=
                          widget.catClassificationList.entries.first.value;
                      widget.selectedCat.catLocation ??=
                          widget.catLocationList.entries.first.value;
                      widget.isSealNumberValid.value =
                          (widget.selectedCat.sealNo ?? '').isValidMod10Value();
                      widget.isSealNumberUsed.value = false;
                    },
                    controlAffinity: ListTileControlAffinity.leading,
                    title: Text(
                      '''${context.l10n.serialNumber}: ${widget.selectedCat.serialNumber}''',
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(Insets.gutter / 2),
                    child: Column(
                      children: [
                        catLookupInfo(
                          title: context.l10n.make,
                          info: widget.make,
                        ),
                        catLookupInfo(
                          title: context.l10n.model,
                          info: widget.model,
                        ),
                        catLookupInfo(
                          title: context.l10n.fill,
                          info: widget.selectedCat.catalyticFill.toString(),
                        ),

                        catLookupInfo(
                          title: context.l10n.unitCost,
                          info:
                              '''${widget.currencyShort} ${NumberFormat.decimalPattern(Localizations.localeOf(context).toString()).format(widget.selectedCat.unitCost)}''',
                        ),
                        catLookupInfo(
                          title: context.l10n.unitCostPaid,
                          info:
                              '''${widget.currencyShort} ${NumberFormat.decimalPattern(Localizations.localeOf(context).toString()).format(widget.selectedCat.unitCostPaid)}''',
                        ),
                        if (isSelected) ...[
                          Form(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Text(
                                  '${context.l10n.catalyticFill}:',
                                  style: Theme.of(context).textTheme.bodyLarge,
                                ),
                                const SizedBox(height: Insets.gutter / 2),
                                InspectionDropDownButton(
                                  onChanged: (p0) {
                                    widget.selectedCat.catLocation = p0;
                                  },
                                  placeholder: context.l10n.enterCatLocation,
                                  selectedItem: widget.selectedCat.catLocation,
                                  items: widget.catLocationList.entries
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
                                const SizedBox(height: Insets.gutter / 2),
                                Text(
                                  context.l10n.catClassification,
                                  style: Theme.of(context).textTheme.bodyLarge,
                                ),
                                const SizedBox(height: Insets.gutter / 2),
                                InspectionDropDownButton(
                                  onChanged: (p0) {
                                    widget.selectedCat.catClassification = p0;
                                  },
                                  placeholder:
                                      context.l10n.enterCatClassification,
                                  selectedItem:
                                      widget.selectedCat.catClassification,
                                  items: widget.catClassificationList.entries
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
                                  header: context.l10n.catClassification,
                                ),
                                const SizedBox(height: Insets.gutter / 2),
                                Text(
                                  context.l10n.sealNumber,
                                  style: Theme.of(context).textTheme.bodyLarge,
                                ),
                                const SizedBox(height: Insets.gutter / 2),
                                Watch((context) {
                                  return Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                        child: InspectionTextForm(
                                          txtController:
                                              txtSealNumberController,
                                          header: context.l10n.sealNumber,
                                          placeholder: context.l10n.sealNumber,
                                          isDisabled: true,
                                          validator: (p0) {
                                            return null;
                                          },
                                          onChanged: (p0) {
                                            widget.selectedCat.sealNo = p0;
                                            widget.isSealNumberValid.value = p0
                                                .isValidMod10Value();
                                            widget.isSealNumberUsed.value =
                                                false;
                                          },
                                          errorText:
                                              widget.isSealNumberUsed.value
                                              ? context.l10n.sealNumberIsUsed
                                              : widget.isSealNumberValid.value
                                              ? null
                                              : context.l10n.invalidSealNumber,
                                        ),
                                      ),
                                    ],
                                  );
                                }),
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

  Widget catLookupInfo({
    required String title,
    required String info,
    bool hasTrailingSpace = true,
  }) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: hasTrailingSpace ? Insets.gutter / 2 : 0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(title, style: Theme.of(context).textTheme.bodyLarge),
          ),
          Expanded(
            flex: 3,
            child: Tooltip(
              message: info,
              child: Text(
                info,
                textAlign: TextAlign.right,
                overflow: TextOverflow.clip,
                style: Theme.of(
                  context,
                ).textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    txtSealNumberController.dispose();
    txtSerialNumberController.dispose();
    super.dispose();
  }

  String getSerialId(String fullId) {
    final serialPart = fullId.split('/').where((e) => e.isNotEmpty).last;
    return serialPart.split('-').first;
  }
}
