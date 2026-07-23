import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/widgets/card/emr_card_controller.dart';
import 'package:emr_one_elv_core/models/enums/enums.dart';
import 'package:emr_one_elv_inspection/enums/enum.dart';
import 'package:emr_one_elv_inspection/functions/currency_symbol.dart';
import 'package:emr_one_elv_inspection/models/raven_migration/techemat_manual_cat.dart';
import 'package:emr_one_elv_inspection/pages/inspection/widgets/custom_widgets/inspection_dropdown_button_widget.dart';
import 'package:emr_one_elv_inspection/pages/inspection/widgets/custom_widgets/popover_tile_widget.dart';
import 'package:emr_one_elv_inspection/pages/inspection_raven_migration/inspection/controller/inspection_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:signals/signals_flutter.dart';

class ManualCatLookupCardMobileSubScreen extends StatefulWidget {
  const ManualCatLookupCardMobileSubScreen({
    required this.catalyticConverter,
    required this.currencyCode,
    required this.onCatSelectionChanged,
    super.key,
  });

  final TechemetManualCat catalyticConverter;
  final String currencyCode;
  final void Function() onCatSelectionChanged;

  @override
  State<ManualCatLookupCardMobileSubScreen> createState() =>
      _ManualCatLookupCardMobileSubScreenState();
}

class _ManualCatLookupCardMobileSubScreenState
    extends State<ManualCatLookupCardMobileSubScreen> {
  late final EmrCardController emrCardController;

  @override
  void initState() {
    super.initState();
    emrCardController = EmrCardController();
    widget.catalyticConverter.isSelected.addListener(() {
      emrCardController.isSelected.value =
          widget.catalyticConverter.isSelected.value;
    });
  }

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<InspectionController>(
      context,
      listen: false,
    );

    return ValueListenableBuilder<bool>(
      valueListenable: widget.catalyticConverter.isSelected,
      builder: (context, isSelected, child) {
        return EmrCard(
          padding: EdgeInsets.zero,
          title:
              '${context.l10n.serialNumber}: '
              '${widget.catalyticConverter.serial}',
          controller: emrCardController,
          onSelected: ({bool? selected}) {
            widget.onCatSelectionChanged();
            controller.state.isSealNumberUsed.value = false;
            widget.catalyticConverter.isSelected.value = !isSelected;
          },
          child: isSelected ? _editCatInfo(controller) : _cardInfo(),
        );
      },
    );
  }

  Widget _cardInfo() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(Insets.gutter),
          child: _catInfoDetail(),
        ),
      ],
    );
  }

  Widget _catInfoDetail({bool isSelected = false}) {
    final textTheme = Theme.of(context).textTheme;
    final fontStyle = isSelected ? textTheme.bodySmall! : textTheme.bodyMedium!;
    return Column(
      spacing: Insets.gutter / 2,
      children: [
        _itemInfo(
          isSelected: isSelected,
          title: context.l10n.make,
          child: Text(
            widget.catalyticConverter.make,
            overflow: TextOverflow.clip,
            textAlign: TextAlign.right,
            style: fontStyle.copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        _itemInfo(
          isSelected: isSelected,
          title: context.l10n.model,
          child: Text(
            widget.catalyticConverter.model,
            overflow: TextOverflow.clip,
            textAlign: TextAlign.right,
            style: fontStyle.copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        _itemInfo(
          isSelected: isSelected,
          title: context.l10n.fill,
          child: Text(
            widget.catalyticConverter.fill.toString(),
            overflow: TextOverflow.clip,
            textAlign: TextAlign.right,
            style: fontStyle.copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        _itemInfo(
          isSelected: isSelected,
          title: context.l10n.unitCost,
          child: Text(
            formatCurrency(
              context,
              widget.currencyCode,
              widget.catalyticConverter.unitCost,
            ),
            overflow: TextOverflow.clip,
            textAlign: TextAlign.right,
            style: fontStyle.copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        _itemInfo(
          isSelected: isSelected,
          title: context.l10n.sealNumber,
          child: Text(
            widget.catalyticConverter.sealNo,
            overflow: TextOverflow.clip,
            textAlign: TextAlign.right,
            style: fontStyle.copyWith(fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }

  Widget _itemInfo({
    required String title,
    required Widget child,
    bool isSelected = false,
  }) {
    final textTheme = Theme.of(context).textTheme;
    final fontStyle = isSelected ? textTheme.bodySmall : textTheme.bodyMedium;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: fontStyle),
        Expanded(child: child),
      ],
    );
  }

  Widget _editCatInfo(InspectionController controller) {
    return ColoredBox(
      color: Theme.of(context).canvasColor,
      child: Padding(
        padding: const EdgeInsets.all(Insets.gutter),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: [
            PopoverTile(
              leading: Icon(
                Icons.info_outline,
                color: Theme.of(context).colorScheme.tertiary,
              ),
              title: Text(context.l10n.catalyticConverterDetail),
              child: Container(
                color: Theme.of(context).colorScheme.surfaceContainerHighest,
                padding: const EdgeInsets.all(Insets.gutter),
                child: _catInfoDetail(isSelected: true),
              ),
            ),
            const SizedBox(height: Insets.gutter / 2),
            Text(
              context.l10n.catalyticFill,
              style: Theme.of(
                context,
              ).textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: Insets.gutter / 4),
            InspectionDropDownButton<PartLocationEnum>(
              onChanged: (partLocation) {
                widget.catalyticConverter.partLocation = partLocation!;
              },
              placeholder: context.l10n.enterCatLocation,
              selectedItem: widget.catalyticConverter.partLocation,
              items: PartLocationEnum.values
                  .where((p) => p != PartLocationEnum.unspecified)
                  .map(
                    (partLocationEnum) => DropdownMenuItem(
                      value: partLocationEnum,
                      child: Text(
                        partLocationEnum.label,
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  )
                  .toList(),
              header: context.l10n.catLocation,
            ),
            const SizedBox(height: Insets.gutter),
            Text(
              context.l10n.catClassification,
              style: Theme.of(
                context,
              ).textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: Insets.gutter / 2),
            InspectionDropDownButton<CatalyticConverterClassificationEnum>(
              onChanged: (classification) {
                widget.catalyticConverter.classification = classification!;
              },
              placeholder: context.l10n.enterCatLocation,
              selectedItem: widget.catalyticConverter.classification,
              items: CatalyticConverterClassificationEnum.values
                  .where(
                    (p) => p != CatalyticConverterClassificationEnum.unknown,
                  )
                  .map(
                    (classification) => DropdownMenuItem(
                      value: classification,
                      child: Text(
                        classification.label,
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  )
                  .toList(),
              header: context.l10n.catLocation,
            ),
            Watch((_) {
              if (controller.state.isSealNumberUsed.value) {
                return Padding(
                  padding: const EdgeInsets.only(top: Insets.gutter / 2),
                  child: Text(
                    context.l10n.sealNumberIsUsed,
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: Theme.of(context).colorScheme.error,
                    ),
                  ),
                );
              }
              return const SizedBox.shrink();
            }),
          ],
        ),
      ),
    );
  }
}
