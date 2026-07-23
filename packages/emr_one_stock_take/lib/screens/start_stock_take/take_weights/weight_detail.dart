import 'dart:async';

import 'package:collection/collection.dart';
import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_core/controllers/controllers.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/models/scales/weight_taken.dart';
import 'package:emr_one_core/widgets/card/emr_card_controller.dart';
import 'package:emr_one_core/widgets/scales/emr_scale_controller.dart';
import 'package:emr_one_stock_take/constants/constants.dart';
import 'package:emr_one_stock_take/models/models.dart';
import 'package:emr_one_stock_take/screens/screens.dart';
import 'package:emr_one_theme/emr_one_theme.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:signals/signals_flutter.dart';

class WeightDetail extends StatefulWidget {
  const WeightDetail({
    required this.weight,
    required this.controller,
    required this.onSaveWeight,
    required this.location,
    required this.stockTake,
    required this.scaleController,
    required this.createdDate,
    this.onDeleteWeight,
    this.onRefresh,
    super.key,
  });

  final LocationWeightModel weight;
  final LocationWeightController controller;
  final Future<void> Function(List<LocationWeightModel> weightsToBeSaved)
  onSaveWeight;
  final void Function(LocationWeightModel weight)? onDeleteWeight;
  final StocktakeLocation location;
  final StockTake stockTake;
  final EmrScaleController scaleController;
  final DateTime createdDate;
  final void Function(List<LocationWeightModel> savedWeights)? onRefresh;

  @override
  State<WeightDetail> createState() => _WeightDetailState();
}

class _WeightDetailState extends State<WeightDetail> {
  List<Uom> uoms = List.empty();
  late ValueNotifier<Uom?> selectedUom = ValueNotifier(null);
  late EmrCardController cardController;
  late String authToken;

  @override
  void initState() {
    super.initState();

    final settingsController =
        Provider.of<BaseSettingsController>(context, listen: false)
            as SettingsController;
    final uomService = Provider.of<UomService>(context, listen: false);
    uoms = uomService.getUoms(settingsController.territory);
    uoms.remove(Enum$Uom.EA.toUomModel());
    selectedUom.value = widget.location.defaultUom;
    cardController = EmrCardController();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final brandColors = Theme.of(context).extension<EOBrandTheme>()!;

    final grossWeight = widget.weight.grossWeight?.value ?? 0;
    final grossWeightUom = widget.weight.grossWeight != null
        ? widget.weight.grossWeight?.uom
        : widget.location.defaultUom;
    final tareWeight = widget.weight.tareWeight?.value ?? 0;
    final tareWeightUom = widget.weight.tareWeight != null
        ? widget.weight.tareWeight!.uom
        : widget.location.defaultUom;
    final netWeight = widget.weight.getNetWeight(grossWeightUom!).value;

    cardController.isSelected.value =
        widget.controller.activeWeight.value!.id == widget.weight.id;

    final isSteady = widget.scaleController.isSteady.watch(context);
    final loggedInUserId = UserInfoService.instance?.userInfo.id;
    final isShowDeleteOption =
        widget.weight.weighedById?.split('/').last == loggedInUserId;

    return EmrCard(
      controller: cardController,
      onSelected: ({selected = false}) {
        widget.controller.activeWeight.value = widget.weight;
      },
      padding: const EdgeInsets.symmetric(
        horizontal: Insets.gutter,
        vertical: Insets.gutter / 2,
      ),
      title: widget.weight.title,
      subtitle:
          '${context.l10n.operator}: ${widget.weight.weighedByName ?? ''}',
      trailing: SizedBox(
        height: 25,
        child: ValueListenableBuilder<bool>(
          valueListenable: cardController.isSelected,
          builder: (context, value, child) {
            return Row(
              children: [
                IconButton(
                  icon: Icon(
                    Icons.comment_outlined,
                    color: value ? theme.colorScheme.onTertiary : null,
                  ),
                  padding: EdgeInsets.zero,
                  onPressed: () {
                    if (!widget.location.takenWeights
                        .map((x) => x.id)
                        .contains(widget.weight.id)) {
                      widget.onSaveWeight.call([widget.weight]);
                      widget.location.takenWeights.add(widget.weight);
                    }
                    HelperMethods.openCommentsDialog(
                      context,
                      widget.stockTake.id!,
                      widget.location,
                      widget.controller.stocktakeService,
                      weightId: widget.weight.id,
                    );
                  },
                ),
                if (widget.weight.captureMethod !=
                    Enum$StockTakeWeightCaptureMethod.ADJUSTED_MANUALLY)
                  PopupMenuButton(
                    menuPadding: EdgeInsets.zero,
                    padding: EdgeInsets.zero,
                    iconColor: value ? theme.colorScheme.onTertiary : null,
                    itemBuilder: (context) {
                      return [
                        PopupMenuItem<void>(
                          child: Text(context.l10n.edit),
                          onTap: () {
                            openEditDialog(context, widget.weight);
                          },
                        ),
                        if (isShowDeleteOption)
                          PopupMenuItem<void>(
                            child: Text(context.l10n.delete),
                            onTap: () {
                              widget.onDeleteWeight?.call(widget.weight);
                            },
                          ),
                        PopupMenuItem<void>(
                          child: Text(context.l10n.move),
                          onTap: () {
                            openMoveWeightLineDialog(
                              context,
                              widget.stockTake,
                              widget.location.id,
                              widget.weight,
                            );
                          },
                        ),
                        PopupMenuItem<void>(
                          child: Text(context.l10n.knownTares),
                          onTap: () {
                            openKnownTaresDialog(
                              context,
                              widget.stockTake,
                              widget.location.id,
                              widget.weight,
                            );
                          },
                        ),
                      ];
                    },
                  ),
              ],
            );
          },
        ),
      ),
      child: Column(
        children: [
          weightLine(
            context,
            Icon(
              grossWeight > 0 ? Icons.check_circle : Icons.cancel,
              color: grossWeight > 0
                  ? brandColors.ctaColour
                  : OppraBrandColors.errorColor,
              size: 18,
            ),
            '${context.l10n.grossWeight}: ',
            Text(
              HelperMethods.toFormattedWeight(
                context,
                grossWeight,
                grossWeightUom,
              ),
              style: theme.textTheme.bodyMedium!.copyWith(
                fontWeight: FontWeight.bold,
                color: grossWeight > 0 ? null : OppraBrandColors.errorColor,
              ),
            ),
          ),
          weightLine(
            context,
            Icon(
              tareWeight > 0 ? Icons.check_circle : Icons.error,
              color: tareWeight > 0
                  ? brandColors.ctaColour
                  : OppraBrandColors.warningColor,
              size: 18,
            ),
            '${context.l10n.tareWeight}: ',
            Text(
              HelperMethods.toFormattedWeight(
                context,
                tareWeight,
                tareWeightUom,
              ),
              style: theme.textTheme.bodyMedium!.copyWith(
                fontWeight: FontWeight.bold,
                color: tareWeight > 0 ? null : Colors.grey,
              ),
            ),
          ),
          weightLine(
            context,
            Icon(
              netWeight > 0
                  ? Icons.check_circle
                  : (netWeight < 0 ? Icons.cancel : Icons.error),
              color: netWeight > 0
                  ? brandColors.ctaColour
                  : (netWeight < 0
                        ? OppraBrandColors.errorColor
                        : OppraBrandColors.warningColor),
              size: 18,
            ),
            '${context.l10n.netWeight}: ',
            Text(
              HelperMethods.toFormattedWeight(
                context,
                netWeight,
                grossWeightUom,
              ),
              style: theme.textTheme.bodyMedium!.copyWith(
                fontWeight: FontWeight.bold,
                color: netWeight > 0
                    ? null
                    : (netWeight < 0
                          ? OppraBrandColors.errorColor
                          : Colors.grey),
              ),
            ),
          ),
          if (widget.controller.activeWeight.value!.id == widget.weight.id &&
              widget.weight.captureMethod !=
                  Enum$StockTakeWeightCaptureMethod.ADJUSTED_MANUALLY)
            Column(
              children: [
                const Divider(),
                Row(
                  children: [
                    Expanded(
                      child: FilledButton(
                        onPressed:
                            widget.controller.activeScale.value != null &&
                                isSteady
                            ? () {
                                final weightValue =
                                    widget.scaleController.weightTaken.value;
                                if (widget.weight.grossWeight != null &&
                                    widget.weight.grossWeight!.value > 0) {
                                  openConfirmOverrideWeight(
                                    widget.weight.grossWeight,
                                    weightValue!,
                                  );
                                } else {
                                  saveWeightFromScale(weightValue!);
                                }
                              }
                            : null,
                        child: Watch((context) {
                          return widget.controller.showLoader.value
                              ? const SizedBox(
                                  width: Insets.gutter,
                                  height: Insets.gutter,
                                  child: CircularProgressIndicator.adaptive(),
                                )
                              : Text(context.l10n.takeGross);
                        }),
                      ),
                    ),
                    const SizedBox(width: Insets.gutter),
                    Expanded(
                      child: FilledButton(
                        onPressed:
                            widget.controller.activeScale.value != null &&
                                isSteady
                            ? () {
                                final weightValue =
                                    widget.scaleController.weightTaken.value;
                                if (widget.weight.tareWeight != null &&
                                    widget.weight.tareWeight!.value > 0) {
                                  openConfirmOverrideWeight(
                                    widget.weight.tareWeight,
                                    weightValue!,
                                    isGrossWeight: false,
                                  );
                                } else {
                                  saveWeightFromScale(
                                    weightValue!,
                                    isGrossWeight: false,
                                  );
                                }
                              }
                            : null,
                        child: Watch((context) {
                          return widget.controller.showLoader.value
                              ? const SizedBox(
                                  width: Insets.gutter,
                                  height: Insets.gutter,
                                  child: CircularProgressIndicator.adaptive(),
                                )
                              : Text(context.l10n.takeTare);
                        }),
                      ),
                    ),
                  ],
                ),
              ],
            ),
        ],
      ),
    );
  }

  void saveWeightFromScale(
    WeightTaken weightTaken, {
    bool isGrossWeight = true,
  }) {
    final weightValue = weightTaken.value ?? 0;
    final scaleUomCode = weightTaken.uomCode;
    final uom = scaleUomCode != null
        ? Uom.fromCode(scaleUomCode)
        : widget.location.defaultUom;

    final weight = UomValue.fromValue(weightValue, uom);
    final serialNo = weightTaken.serialNo;

    if (isGrossWeight) {
      widget.weight.grossWeight = weight;
      widget.weight.grossWeightScaleIdentifier =
          widget.controller.activeScale.value?.key;
      widget.weight.grossWeightSerialNumber = serialNo;

      // Set tare weight uom same as gross weight uom if tare weight is 0
      if ((widget.weight.tareWeight?.value ?? 0) == 0) {
        widget.weight.tareWeight = UomValue.fromValue(
          0,
          widget.weight.grossWeight!.uom,
        );
      }
    } else {
      widget.weight.tareWeight = weight;
      widget.weight.tareWeightScaleIdentifier =
          widget.controller.activeScale.value?.key;
      widget.weight.tareWeightSerialNumber = serialNo;

      // Set gross weight uom same as tare weight uom if gross weight is 0
      if ((widget.weight.grossWeight?.value ?? 0) == 0) {
        widget.weight.grossWeight = UomValue.fromValue(
          0,
          widget.weight.tareWeight!.uom,
        );
      }
    }

    widget.weight.captureMethod =
        Enum$StockTakeWeightCaptureMethod.RETRIEVED_FROM_SCALE;
    widget.onSaveWeight.call([widget.weight]);
  }

  void openConfirmOverrideWeight(
    UomValue? oldWeight,
    WeightTaken newWeight, {
    bool isGrossWeight = true,
  }) {
    final weightName = isGrossWeight
        ? context.l10n.grossWeight
        : context.l10n.tareWeight;
    final oldWeightText = HelperMethods.toFormattedWeight(
      context,
      oldWeight!.value,
      oldWeight.uom,
    );
    // Need to check if there are better ways to assign fallback uom if null
    final newWeightText = HelperMethods.toFormattedWeight(
      context,
      newWeight.value ?? 0,
      Uom.fromCode(newWeight.uomCode ?? Uom.mt.uomCode),
    );
    if (oldWeight.mtValue !=
        UomValue.weight(newWeight.value!, Uom.mt).mtValue) {
      final contentText = context.l10n.replaceStockTakeLocationWeight(
        newWeightText,
        oldWeightText,
        weightName,
      );
      EmrDialog.noYes(
        context,
        titleText: context.l10n.warning,
        contentText: contentText,
        onYes: () =>
            saveWeightFromScale(newWeight, isGrossWeight: isGrossWeight),
      );
    } else {
      saveWeightFromScale(newWeight, isGrossWeight: isGrossWeight);
    }
  }

  Widget weightLine(
    BuildContext context,
    Icon icon,
    String title,
    Text weight,
  ) {
    final theme = Theme.of(context);
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        icon,
        const SizedBox(width: Insets.gutter / 2),
        Text(
          title,
          style: theme.textTheme.bodyMedium!.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        const Spacer(),
        weight,
      ],
    );
  }

  Future<void> openEditDialog(
    BuildContext context,
    LocationWeightModel weight,
  ) async {
    final titleInputValue = ValueNotifier<String>(weight.title);
    final grossWeightInput = ValueNotifier(weight.grossWeight);
    final tareWeightInput = ValueNotifier(weight.tareWeight);
    final dateInput = ValueNotifier<DateTime?>(
      weight.weighedDateTime?.toLocal(),
    );
    final timeInput = ValueNotifier<DateTime?>(
      weight.weighedDateTime?.toLocal(),
    );

    final isWeightTakenFromScale =
        weight.captureMethod ==
        Enum$StockTakeWeightCaptureMethod.RETRIEVED_FROM_SCALE;
    final hasManualStocktakePermission =
        UserInfoService.instance?.userInfo.hasPermission(
          StockTakePermissions.manualPerformStocktake,
        ) ??
        false;
    final isReadOnly = ValueNotifier(
      !hasManualStocktakePermission || isWeightTakenFromScale,
    );
    final hasManualTarePermission =
        UserInfoService.instance?.userInfo.hasPermission(
          StockTakePermissions.manualTare,
        ) ??
        false;

    await EmrDialog.modal<String?>(
      context,
      builder: (BuildContext dialogContext) {
        return Material(
          child: Form(
            key: widget.controller.formKey,
            child: SizedBox(
              width: MediaQuery.of(context).size.width - 150,
              child: Column(
                children: [
                  EmrTextFormField(
                    binding: titleInputValue,
                    labelText: context.l10n.title,
                    validator: Validators.required,
                  ),
                  EmrUomFormField(
                    binding: grossWeightInput,
                    defaultUom: selectedUom.value,
                    uomList: uoms,
                    labelText: context.l10n.grossWeight,
                    enabled: ValueNotifier(
                      hasManualStocktakePermission && !isWeightTakenFromScale,
                    ),
                    validator: (value) {
                      if ((tareWeightInput.value?.value ?? 0) >
                          AppConstants.maxWeightValue) {
                        return context.l10n.mustBeLessOrMax(
                          AppConstants.maxWeightValue,
                        );
                      }
                      return null;
                    },
                  ),
                  EmrUomFormField(
                    binding: tareWeightInput,
                    defaultUom: selectedUom.value,
                    uomList: uoms,
                    labelText: context.l10n.tareWeight,
                    enabled: ValueNotifier(hasManualTarePermission),
                    validator: (value) {
                      if ((tareWeightInput.value?.value ?? 0) >
                          AppConstants.maxWeightValue) {
                        return context.l10n.mustBeLessOrMax(
                          AppConstants.maxWeightValue,
                        );
                      }
                      return null;
                    },
                  ),
                  EmrDateFormField(
                    binding: dateInput,
                    firstDate:
                        widget.location.snapshot?.snapshotDate.dateOnly ??
                        widget.createdDate.dateOnly,
                    lastDate: DateTime.now(),
                    readOnly: isReadOnly,
                    labelText: context.l10n.weighedDate,
                  ),
                  EmrTimeFormField(
                    binding: timeInput,
                    labelText: context.l10n.weighedTime,
                    readOnly: isReadOnly,
                    validator: (value) => getTimeValidator(
                      value,
                      dateInput.value,
                      widget.location.snapshot!.snapshotDate!,
                    ),
                  ),
                  const SizedBox(height: 100),
                ],
              ),
            ),
          ),
        );
      },
      titleText: context.l10n.editWeight,
      onAccept: () async {
        final isValid =
            widget.controller.formKey.currentState?.validate() ?? false;
        if (!isValid) return;
        weight.title = titleInputValue.value;
        weight.captureMethod =
            Enum$StockTakeWeightCaptureMethod.ENTERED_MANUALLY;
        if (grossWeightInput.value != null) {
          weight.grossWeight ??= UomValue.fromValue(
            0,
            widget.location.defaultUom,
          );
          weight.grossWeight = grossWeightInput.value;
        }
        if (tareWeightInput.value != null) {
          weight.tareWeight ??= UomValue.fromValue(
            0,
            widget.location.defaultUom,
          );
          weight.tareWeight = tareWeightInput.value;
        }
        // Set tare weight uom same as gross weight uom if tare weight is 0
        if ((weight.grossWeight?.value ?? 0) > 0 &&
            (weight.tareWeight?.value ?? 0) == 0) {
          weight.tareWeight = UomValue.fromValue(0, weight.grossWeight!.uom);
        }
        // Set gross weight uom same as tare weight uom if gross weight is 0
        if ((weight.tareWeight?.value ?? 0) > 0 &&
            (weight.grossWeight?.value ?? 0) == 0) {
          weight.grossWeight = UomValue.fromValue(0, weight.tareWeight!.uom);
        }

        if (grossWeightInput.value != null || tareWeightInput.value != null) {
          final date = dateInput.value ?? DateTime.now();
          final time = timeInput.value ?? DateTime.now();
          weight.weighedDateTime = DateTime(
            date.year,
            date.month,
            date.day,
            time.hour,
            time.minute,
          ).toUtc();
        }
        await widget.onSaveWeight([weight]);
        if (!context.mounted) return;
        Navigator.of(context, rootNavigator: true).pop();
      },
    );
  }

  String? getTimeValidator(
    String? selectedTime,
    DateTime? selectedDate,
    DateTime snapshotDate,
  ) {
    if (selectedTime != null && selectedTime.isNotEmpty) {
      final currentDateTime = DateTime.now();
      final locale = Localizations.localeOf(context).toString();
      final parsedTime = DateFormat.jm(locale).parseLoose(selectedTime.trim());

      final selectedDateTime = DateTime(
        selectedDate?.year ?? currentDateTime.year,
        selectedDate?.month ?? currentDateTime.month,
        selectedDate?.day ?? currentDateTime.day,
        parsedTime.hour,
        parsedTime.minute,
      );

      if (selectedDateTime.isAfter(currentDateTime)) {
        return context.l10n.validateTimeMessage;
      } else if (selectedDateTime.isBefore(snapshotDate.toLocal())) {
        final locale = Localizations.localeOf(context);
        return context.l10n.stockTakeWeighedTimeValidation(
          snapshotDate.asTime(locale),
        );
      }
      return null;
    }
    return null;
  }

  Future<void> openMoveWeightLineDialog(
    BuildContext context,
    StockTake stockTake,
    String locationId,
    LocationWeightModel weight,
  ) async {
    final locations = stockTake.locations.whereNot((x) => x.id == locationId);
    final destinationLocation = ValueNotifier<StocktakeLocation?>(null);
    final formKey = GlobalKey<FormState>();

    await EmrDialog.modal<String>(
      context,
      titleText: context.l10n.moveWeightLine,
      dialogMode: DialogMode.compact,
      builder: (BuildContext dialogContext) {
        return Form(
          key: formKey,
          child: SizedBox(
            width: MediaQuery.of(context).size.width - 150,
            child: EmrPickerFormField<StocktakeLocation>(
              items: (_) => Future.value(locations.toList()),
              labelText: context.l10n.location,
              itemTitleText: (item) => item.code,
              itemSubtitleText: (item) => item.description,
              binding: destinationLocation,
              validator: Validators.required,
            ),
          ),
        );
      },
      onAccept: () async {
        final isValid = formKey.currentState?.validate() ?? false;
        if (!isValid) return;

        final input = Input$MoveWeightLineInput(
          stockTakeId: stockTake.id!,
          sourceLocationId: locationId,
          destinationLocationId: destinationLocation.value!.id,
          weightLineId: weight.id,
        );

        final result = await widget.controller.stocktakeService
            .moveWeightLineToAnotherLocation(input);

        if (!result.success) {
          if (!context.mounted) return;
          unawaited(
            EmrModal.showMessageBar(
              context,
              HelperMethods.getErrorMessage(context, result),
              messageType: MessageBarTypes.error,
            ),
          );
          return;
        }

        weight.isMoved = true;
        widget.onRefresh?.call(result.data ?? []);
        if (!context.mounted) return;
        Navigator.of(context, rootNavigator: true).pop();
      },
    );
  }

  Future<void> openKnownTaresDialog(
    BuildContext context,
    StockTake stockTake,
    String locationId,
    LocationWeightModel weight,
  ) async {
    final colorScheme = Theme.of(context).colorScheme;
    final formKey = GlobalKey<FormState>();
    final knownTares =
        widget.controller.activeScale.value?.knownTares.toList() ?? [];
    int? selectedIndex;
    final selectedTareWeight = ValueNotifier<WeightDeduction?>(null);

    await EmrDialog.modal<String>(
      context,
      titleText: context.l10n.selectKnownTare,
      builder: (BuildContext dialogContext) {
        return Material(
          child: Form(
            key: formKey,
            child: SizedBox(
              height: MediaQuery.of(context).size.height - 200,
              child: Container(
                decoration: BoxDecoration(
                  border: BoxBorder.all(color: colorScheme.outline),
                ),
                child: ListView.builder(
                  itemCount: knownTares.length,
                  itemBuilder: (context, index) {
                    final currentTare = knownTares[index];
                    final tareWeight = HelperMethods.toFormattedDecimal(
                      context,
                      currentTare.value.value,
                      currentTare.value.uom,
                    );
                    return ValueListenableBuilder(
                      valueListenable: selectedTareWeight,
                      builder: (context, value, child) {
                        final textColor = selectedIndex == index
                            ? colorScheme.onTertiary
                            : colorScheme.onSurface;
                        return ListTile(
                          dense: true,
                          title: Text(
                            currentTare.comments ?? context.l10n.tare,
                            style: TextStyle(color: textColor),
                          ),
                          subtitle: Text(
                            '$tareWeight ${currentTare.value.uom.uomCode}',
                            style: TextStyle(color: textColor),
                          ),
                          selected: selectedIndex == index,
                          selectedColor: colorScheme.onSurface,
                          selectedTileColor: colorScheme.tertiary,
                          onTap: () async {
                            selectedIndex = index;
                            selectedTareWeight.value = currentTare;
                          },
                        );
                      },
                    );
                  },
                ),
              ),
            ),
          ),
        );
      },
      onAccept: () async {
        if (selectedTareWeight.value != null) {
          weight.tareWeight = selectedTareWeight.value!.value;
          await widget.onSaveWeight.call([weight]);

          if (!context.mounted) return;
          Navigator.of(context, rootNavigator: true).pop();
        } else {
          await EmrModal.showMessageBar(
            context,
            context.l10n.pleaseSelectTareWeight,
            messageType: MessageBarTypes.error,
          );
        }
      },
    );
  }
}
