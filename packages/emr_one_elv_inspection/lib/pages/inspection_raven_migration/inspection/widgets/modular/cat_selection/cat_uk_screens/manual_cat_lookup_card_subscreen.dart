import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_elv_core/models/enums/enums.dart';
import 'package:emr_one_elv_inspection/enums/catalytic_converter_classification_enum.dart';
import 'package:emr_one_elv_inspection/functions/currency_symbol.dart';
import 'package:emr_one_elv_inspection/models/raven_migration/techemat_manual_cat.dart';
import 'package:emr_one_elv_inspection/pages/inspection/widgets/custom_widgets/inspection_border_widget.dart';
import 'package:emr_one_elv_inspection/pages/inspection/widgets/custom_widgets/inspection_dropdown_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:signals/signals_flutter.dart';

class ManualCatLookupCardSubScreen extends StatefulWidget {
  const ManualCatLookupCardSubScreen({
    required this.catalyticConverter,
    required this.isSealNumberUsed,
    required this.currencyCode,
    super.key,
  });

  final TechemetManualCat catalyticConverter;
  final Signal<bool> isSealNumberUsed;
  final String currencyCode;

  @override
  State<ManualCatLookupCardSubScreen> createState() =>
      _ManualCatLookupCardSubScreenState();
}

class _ManualCatLookupCardSubScreenState
    extends State<ManualCatLookupCardSubScreen> {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: widget.catalyticConverter.isSelected,
      builder: (context, isSelected, child) {
        return MouseRegion(
          cursor: isSelected ? MouseCursor.defer : SystemMouseCursors.click,
          child: GestureDetector(
            onTap: () {
              widget.catalyticConverter.isSelected.value = !isSelected;
            },
            child: InspectionBorderWidget(
              isSelected: isSelected,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CheckboxListTile(
                    value: isSelected,
                    onChanged: (value) {
                      widget.catalyticConverter.isSelected.value =
                          value ?? false;
                      widget.isSealNumberUsed.value = false;
                    },
                    controlAffinity: ListTileControlAffinity.leading,
                    title: Text(
                      '''${context.l10n.serialNumber}: ${widget.catalyticConverter.serial}''',
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(Insets.gutter / 2),
                    child: Column(
                      children: [
                        catLookupInfo(
                          title: context.l10n.make,
                          info: widget.catalyticConverter.make,
                        ),
                        catLookupInfo(
                          title: context.l10n.model,
                          info: widget.catalyticConverter.model,
                        ),
                        catLookupInfo(
                          title: context.l10n.fill,
                          info: widget.catalyticConverter.fill.toString(),
                        ),
                        catLookupInfo(
                          title: context.l10n.unitCost,
                          info: formatCurrency(
                            context,
                            widget.currencyCode,
                            widget.catalyticConverter.unitCost,
                          ),
                        ),
                        catLookupInfo(
                          title: context.l10n.unitCostPaid,
                          info: formatCurrency(
                            context,
                            widget.currencyCode,
                            widget.catalyticConverter.unitCostPaid,
                          ),
                        ),
                        catLookupInfo(
                          title: context.l10n.sealNumber,
                          info: widget.catalyticConverter.sealNo,
                          errorText: widget.isSealNumberUsed.value
                              ? context.l10n.sealNumberIsUsed
                              : null,
                        ),
                        if (isSelected) ...[
                          Form(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                const SizedBox(height: Insets.gutter / 2),
                                InspectionDropDownButton<PartLocationEnum>(
                                  onChanged: (partLocation) {
                                    widget.catalyticConverter.partLocation =
                                        partLocation!;
                                  },
                                  placeholder: context.l10n.enterCatLocation,
                                  selectedItem:
                                      widget.catalyticConverter.partLocation,
                                  items: PartLocationEnum.values
                                      .where(
                                        (p) =>
                                            p != PartLocationEnum.unspecified,
                                      )
                                      .map(
                                        (partLocationEnum) => DropdownMenuItem(
                                          value: partLocationEnum,
                                          child: Text(
                                            partLocationEnum.label,
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
                                InspectionDropDownButton<
                                  CatalyticConverterClassificationEnum
                                >(
                                  onChanged: (classification) {
                                    widget.catalyticConverter.classification =
                                        classification!;
                                  },
                                  placeholder:
                                      context.l10n.enterCatClassification,
                                  selectedItem:
                                      widget.catalyticConverter.classification,
                                  items: CatalyticConverterClassificationEnum
                                      .values
                                      .where(
                                        (p) =>
                                            p !=
                                            CatalyticConverterClassificationEnum
                                                .unknown,
                                      )
                                      .map(
                                        (classification) => DropdownMenuItem(
                                          value: classification,
                                          child: Text(
                                            classification.label,
                                            style: Theme.of(
                                              context,
                                            ).textTheme.bodyLarge,
                                          ),
                                        ),
                                      )
                                      .toList(),
                                  header: context.l10n.catClassification,
                                ),
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
    String? errorText,
  }) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: hasTrailingSpace ? Insets.gutter / 2 : 0,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  title,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ),
              Expanded(
                flex: 3,
                child: Tooltip(
                  message: info,
                  child: Text(
                    info,
                    textAlign: TextAlign.right,
                    overflow: TextOverflow.clip,
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
          if (errorText != null) ...[
            Row(
              children: [
                Text(
                  errorText,
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: Theme.of(context).colorScheme.error,
                  ),
                ),
              ],
            ),
          ],
        ],
      ),
    );
  }
}
