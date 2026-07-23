import 'dart:convert';

import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/widgets/card/emr_card_controller.dart';
import 'package:emr_one_elv_inspection/extensions/mod10_validator_extension.dart';
import 'package:emr_one_elv_inspection/models/model.dart';
import 'package:emr_one_elv_inspection/pages/inspection/controller/controller.dart';
import 'package:emr_one_elv_inspection/pages/inspection/widgets/custom_widgets/inspection_custom_widgets.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:signals/signals_flutter.dart';

class CatLookupCardMobileSubScreen extends StatefulWidget {
  const CatLookupCardMobileSubScreen({
    required this.currencyShort,
    required this.image,
    required this.cats,
    required this.selectedCat,
    required this.title,
    required this.disableSealNumber,
    this.isManual = false,
    super.key,
  });

  final String currencyShort;
  final String? image;
  final ValueNotifier<List<TechCatSearchModel>> cats;
  final TechCatSearchModel selectedCat;
  final String title;
  final bool isManual;
  final bool disableSealNumber;

  @override
  State<CatLookupCardMobileSubScreen> createState() =>
      _CatLookupCardMobileSubScreenState();
}

class _CatLookupCardMobileSubScreenState
    extends State<CatLookupCardMobileSubScreen> {
  late ValueNotifier<double?> catalyticFillNotifier;
  late ValueNotifier<int> catClassificationNotifier;
  late TextEditingController catSealNumberController;
  late final InspectionScreenController controller;
  late final VehicleDescriptionModel? vehicleDescription;

  late final InspectionState state;

  late final EmrCardController emrCardController;

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

    emrCardController = EmrCardController();

    widget.selectedCat.isSelected.addListener(() {
      emrCardController.isSelected.value = widget.selectedCat.isSelected.value;
    });
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
        return EmrCard(
          padding: EdgeInsets.zero,
          title: widget.title,
          controller: emrCardController,
          onSelected: ({bool? selected}) {
            for (final x in widget.cats.value) {
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
          child: isSelected ? _editCatInfo() : _cardInfo(),
        );
      },
    );
  }

  Widget _cardInfo() {
    return Column(
      children: [
        if (widget.image != null) ...{
          Image.memory(
            base64Decode(widget.image!),
            fit: BoxFit.fill,
            height: 200,
            width: double.maxFinite,
          ),
        },
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
    final converterValue = widget.isManual
        ? widget.selectedCat.unitCost
        : widget.selectedCat.converterValue;
    return Column(
      spacing: Insets.gutter / 2,
      children: [
        _itemInfo(
          isSelected: isSelected,
          title: context.l10n.make,
          child: Text(
            vehicleDescription?.make ?? '',
            overflow: TextOverflow.clip,
            textAlign: TextAlign.right,
            style: fontStyle.copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        _itemInfo(
          isSelected: isSelected,
          title: context.l10n.model,
          child: Text(
            vehicleDescription?.model ?? '',
            overflow: TextOverflow.clip,
            textAlign: TextAlign.right,
            style: fontStyle.copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        if (widget.isManual) ...[
          _itemInfo(
            isSelected: isSelected,
            title: context.l10n.fill,
            child: Text(
              widget.selectedCat.catalyticFill.toString(),
              overflow: TextOverflow.clip,
              textAlign: TextAlign.right,
              style: fontStyle.copyWith(fontWeight: FontWeight.bold),
            ),
          ),
        ],
        _itemInfo(
          isSelected: isSelected,
          title: context.l10n.unitCost,
          child: Text(
            '${widget.currencyShort} '
            '''${NumberFormat.decimalPattern(Localizations.localeOf(context).toString()).format(converterValue)}''',
            overflow: TextOverflow.clip,
            textAlign: TextAlign.right,
            style: fontStyle.copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        if (!widget.isManual) ...[
          _itemInfo(
            isSelected: isSelected,
            title: context.l10n.catLocation,
            child: Text(
              widget.selectedCat.catLocation ?? '-',
              overflow: TextOverflow.clip,
              textAlign: TextAlign.right,
              style: fontStyle.copyWith(fontWeight: FontWeight.bold),
            ),
          ),
          _itemInfo(
            isSelected: isSelected,
            title: context.l10n.catClassification,
            child: Text(
              widget.selectedCat.catClassification ?? '-',
              overflow: TextOverflow.clip,
              textAlign: TextAlign.right,
              style: fontStyle.copyWith(fontWeight: FontWeight.bold),
            ),
          ),
        ],
        _itemInfo(
          isSelected: isSelected,
          title: context.l10n.value,
          child: Text(
            '${widget.currencyShort} '
            '''${NumberFormat.decimalPattern(Localizations.localeOf(context).toString()).format(converterValue)}''',
            overflow: TextOverflow.clip,
            textAlign: TextAlign.right,
            style: fontStyle.copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        if (!widget.isManual) ...[
          _itemInfo(
            isSelected: isSelected,
            title: context.l10n.matchProbability,
            child: Align(
              alignment: Alignment.centerRight,
              child: InspectionProbabilityWidget(
                value: widget.selectedCat.matchingProbability,
              ),
            ),
          ),
        ],
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

  Widget _editCatInfo() {
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
            ValueListenableBuilder(
              valueListenable: catalyticFillNotifier,
              builder: (context, catalyticFillValue, child) {
                return InspectionMultiSelectorButton(
                  buttons: state.catalyticFillList.entries
                      .map((x) => x.value)
                      .toList(),
                  enabledFunction: (i) => true,
                  selected: {
                    if (catalyticFillValue == null)
                      null
                    else
                      (catalyticFillValue * 4).toInt(),
                  },
                  onSelected: (Set<int?> newSelection) async {
                    if (newSelection.first != null) {
                      catalyticFillNotifier.value = newSelection.first == 0
                          ? 0
                          : newSelection.first! * .25;
                      widget.selectedCat.catalyticFill =
                          catalyticFillNotifier.value;
                    }
                  },
                );
              },
            ),
            const SizedBox(height: Insets.gutter),
            Watch((context) {
              return Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: InspectionTextForm(
                      txtController: catSealNumberController,
                      isDisabled: widget.disableSealNumber,
                      header: context.l10n.sealNumber,
                      placeholder: context.l10n.sealNumber,
                      onChanged: widget.disableSealNumber
                          ? null
                          : (selectedCat) {
                              widget.selectedCat.sealNo = selectedCat;
                              controller.isSealNumberValid.value = selectedCat
                                  .isValidMod10Value();
                              controller.isSealNumberUsed.value = false;
                            },
                      errorText: controller.isSealNumberUsed.value
                          ? context.l10n.sealNumberIsUsed
                          : controller.isSealNumberValid.value
                          ? null
                          : context.l10n.invalidSealNumber,
                    ),
                  ),
                  if (!widget.isManual) ...{
                    IconButton(
                      onPressed: () async {
                        await ScanHelper.startInlineCodeScan(
                          context,
                          title: context.l10n.scan,
                        ).then((scannedCode) {
                          if (scannedCode != null && scannedCode != '') {
                            catSealNumberController.text = scannedCode;
                            widget.selectedCat.sealNo = scannedCode;
                            controller.isSealNumberValid.value = scannedCode
                                .isValidMod10Value();
                            controller.isSealNumberUsed.value = false;
                          }
                        });
                      },
                      icon: const Icon(Icons.qr_code),
                    ),
                  },
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
            ValueListenableBuilder(
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
            ),
          ],
        ),
      ),
    );
  }
}
