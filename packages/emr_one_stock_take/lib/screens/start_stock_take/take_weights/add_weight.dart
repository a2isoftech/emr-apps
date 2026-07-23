import 'dart:async';

import 'package:collection/collection.dart';
import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/widgets/scales/emr_scale_controller.dart';
import 'package:emr_one_stock_take/constants/constants.dart';
import 'package:emr_one_stock_take/extensions/location_weight_extensions.dart';
import 'package:emr_one_stock_take/models/models.dart';
import 'package:emr_one_stock_take/screens/screens.dart';
import 'package:emr_one_theme/emr_one_theme.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/material.dart';
import 'package:signals/signals_flutter.dart';

class AddWeight extends StatefulWidget {
  const AddWeight({
    required this.controller,
    required this.stockTake,
    required this.currentLocation,
    super.key,
  });

  final LocationWeightController controller;
  final StockTake? stockTake;
  final StocktakeLocation currentLocation;

  @override
  State<AddWeight> createState() => _AddWeightState();
}

class _AddWeightState extends State<AddWeight> {
  late EmrScaleController _scaleController;
  late ValueNotifier<List<LocationWeightModel>> weights = ValueNotifier([]);
  late String authToken;
  late int currentWeightLineId;

  @override
  void initState() {
    super.initState();

    weights.value = widget.currentLocation.takenWeights;
    currentWeightLineId = widget.currentLocation.currentWeightLineId;

    _scaleController = widget.controller.newScaleController();
    _scaleController.initialise();

    widget.controller.activeScale.addListener(changeScale);

    FirebaseLogin.getToken().then((value) {
      authToken = value;
      widget.controller.getLastSelectedScale(widget.stockTake!.id!);
    });
  }

  void changeScale() {
    if (widget.controller.activeScale.value != null) {
      final scaleUri = Uri.tryParse(widget.controller.activeScale.value!.url);
      if (scaleUri != null) {
        _scaleController.dispose();
        _scaleController = EmrScaleController(
          scale: Scale(
            name: widget.controller.activeScale.value!.name,
            url: widget.controller.getApimScaleUrl(
              widget.controller.activeScale.value!.url,
              authToken,
            ),
            scaleNumber: widget.controller.activeScale.value!.scaleNumber,
            cameras: widget.controller.activeScale.value!.cameras,
            assetCode: widget.controller.activeScale.value!.assetCode,
          ),
          enabled: true,
        );
        _scaleController.initialise();
        widget.controller.setLastSelectedScale(
          widget.stockTake!.id!,
          widget.controller.activeScale.value?.key,
        );
      }
    }
  }

  @override
  void dispose() {
    widget.controller.activeScale.value = null;
    widget.controller.activeScale.removeListener(changeScale);
    _scaleController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final currentLocation = widget.currentLocation;
    final theme = Theme.of(context);
    final brandColors = Theme.of(context).extension<EOBrandTheme>()!;
    final loggedInUserId = UserInfoService.instance?.userInfo.id;
    final isEnableFinishButton =
        widget.stockTake?.conductedBy.split('/').last == loggedInUserId ||
        widget.stockTake?.originatorId.split('/').last == loggedInUserId;
    if (weights.value.isEmpty) {
      addNewWeight();
    }
    return Column(
      children: [
        Container(
          width: double.infinity,
          color: theme.primaryColor,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: Insets.gutter,
              vertical: Insets.gutter / 2,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '${widget.stockTake!.yardCode}'
                        ' - ${widget.stockTake!.name}',
                        style: theme.textTheme.titleMedium!.copyWith(
                          fontWeight: FontWeight.w700,
                          color: theme.colorScheme.onPrimary,
                        ),
                      ),
                      Text(
                        currentLocation.code,
                        style: theme.textTheme.bodyMedium!.copyWith(
                          fontWeight: FontWeight.bold,
                          color: theme.colorScheme.onPrimary,
                        ),
                      ),
                      Text(
                        currentLocation.description,
                        style: theme.textTheme.bodySmall!.copyWith(
                          color: theme.colorScheme.onPrimary,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
                IconButton(
                  icon: Badge(
                    label: Text(
                      widget.currentLocation.mediaAssets.length.toString(),
                    ),
                    child: Icon(
                      Icons.image,
                      color: theme.colorScheme.onPrimary,
                    ),
                  ),
                  padding: EdgeInsets.zero,
                  onPressed: () => context.goNamed(
                    StockTakeNamedRoutes.stockTakeLocationGallery,
                    params: {
                      'id': HelperMethods.encodedStocktakeId(
                        widget.stockTake!.id!,
                      ),
                      'locationid': widget.currentLocation.id,
                    },
                    extra: widget.stockTake,
                  ),
                ),
                IconButton(
                  icon: Icon(
                    Icons.comment_outlined,
                    color: theme.colorScheme.onPrimary,
                  ),
                  padding: EdgeInsets.zero,
                  onPressed: () => HelperMethods.openCommentsDialog(
                    context,
                    widget.stockTake!.id!,
                    widget.currentLocation,
                    widget.controller.stocktakeService,
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: Insets.gutter,
            right: Insets.gutter,
            top: Insets.gutter / 2,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        context.l10n.scale,
                        style: theme.textTheme.bodyLarge!.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      IconButton(
                        onPressed: () async {
                          final selection = await showSearch<StocktakeScale?>(
                            context: context,
                            delegate: EmrModalSearchDelegate(
                              (query) => Future.value(
                                widget.controller.searchScales(query),
                              ),
                              (item) => ListTile(
                                title: Text(item.name),
                                subtitle: Text(item.profile),
                              ),
                            ),
                          );
                          if (selection != null) {
                            widget.controller.activeScale.value = selection;
                          }
                        },
                        icon: const Icon(Icons.edit, size: 20),
                        padding: EdgeInsets.zero,
                        visualDensity: VisualDensity.compact,
                      ),
                    ],
                  ),
                  ValueListenableBuilder(
                    valueListenable: widget.controller.activeScale,
                    builder: (context, value, child) =>
                        Text(value?.name ?? context.l10n.pleaseSelectScale),
                  ),
                ],
              ),
              Container(
                width: 180,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Insets.gutter / 2),
                  border: Border.all(),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(Insets.gutter / 2),
                  child: ValueListenableBuilder(
                    valueListenable: widget.controller.activeScale,
                    builder: (context, value, child) {
                      final weightTaken = _scaleController.weightTaken.watch(
                        context,
                      );
                      final weight = _scaleController.weightTaken.value;
                      final isSteady = _scaleController.isSteady.watch(context);
                      final hasAssetCode =
                          _scaleController.scale.assetCode == '';

                      return Text(
                        hasAssetCode
                            ? '---'
                            : weightTaken == null
                            ? '---'
                            : UomValue.fromValue(
                                weight?.value ?? 0,
                                Uom.fromCode(
                                  weight?.uomCode ??
                                      currentLocation.defaultUom.uomCode,
                                ),
                              ).toWeightString(),
                        style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          fontWeight: FontWeight.bold,
                          color: hasAssetCode
                              ? null
                              : (isSteady
                                    ? brandColors.ctaColour
                                    : OppraBrandColors.errorColor),
                        ),
                        textAlign: TextAlign.center,
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: Insets.gutter),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(bottom: Insets.gutter / 4),
                  child: Divider(),
                ),
                ValueListenableBuilder(
                  valueListenable: weights,
                  builder: (context, value, child) {
                    final uom = currentLocation.defaultUom;
                    final activeWeights = value.activeWeights();
                    final formattedTotalWeight =
                        HelperMethods.toFormattedWeight(
                          context,
                          HelperMethods.calculateTotalWeight(
                            activeWeights,
                            uom,
                          ),
                          uom,
                        );
                    return Text(
                      '${context.l10n.totalWeight}: $formattedTotalWeight',
                      style: theme.textTheme.titleMedium!.copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                    );
                  },
                ),
                Expanded(
                  child: ValueListenableBuilder(
                    valueListenable: weights,
                    builder: (context, value, child) {
                      return ValueListenableBuilder(
                        valueListenable: widget.controller.activeScale,
                        builder: (context, _, child) {
                          return WeightCard(
                            takenWeights: value.reversed.toList(),
                            controller: widget.controller,
                            onSaveWeight: saveWeights,
                            location: currentLocation,
                            stockTake: widget.stockTake!,
                            scaleController: _scaleController,
                            createdDate: widget.stockTake!.createdDate,
                            onDeleteWeight: (weight) =>
                                openConfirmDeleteWeight(context, weight),
                            onRefresh: refreshWeights,
                          );
                        },
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: Insets.gutter,
            right: Insets.gutter,
          ),
          child: Row(
            children: [
              Expanded(
                child: FilledButton(
                  onPressed: addNewWeight,
                  child: Text(context.l10n.addWeight),
                ),
              ),
              const SizedBox(width: Insets.gutter),
              Expanded(
                child: FilledButton(
                  onPressed: isEnableFinishButton
                      ? () {
                          _onFinish(
                            context,
                            currentLocation,
                            weights.value
                                .where((x) => !(x.isDeleted ?? false))
                                .toList(),
                          );
                        }
                      : null,
                  style: EmrButtonStyles.cta(),
                  child: Text(context.l10n.finish),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Future<void> updateStockTakeLocationStatus(
    BuildContext context,
    StocktakeLocation currentLocation,
  ) async {
    final result = await widget.controller.stocktakeService
        .updateStockTakeLocationStatus(
          stockTakeId: widget.stockTake!.id!,
          locationId: widget.currentLocation.id,
          status: weights.value.activeWeights().isEmpty
              ? Enum$StockTakeLocationStatus.PENDING
              : Enum$StockTakeLocationStatus.COMPLETED,
        );
    if (!context.mounted) return;

    if (result.success) {
      Navigator.of(context).pop();
    } else {
      unawaited(
        EmrModal.showMessageBar(
          context,
          HelperMethods.getErrorMessage(context, result),
          messageType: MessageBarTypes.error,
        ),
      );
    }
  }

  Future<void> _onFinish(
    BuildContext context,
    StocktakeLocation currentLocation,
    List<LocationWeightModel> locationWeights,
  ) async {
    if (locationWeights.isEmpty) {
      unawaited(
        EmrModal.showMessageBar(
          context,
          context.l10n.noWeightLinesAdded,
          messageType: MessageBarTypes.error,
        ),
      );
      return;
    }

    if (locationWeights.isNotEmpty &&
        locationWeights
                .map((s) => s.getNetWeight(Uom.mt).value)
                .reduce((a, b) => a + b) ==
            0) {
      await EmrDialog.noYes(
        context,
        titleText: context.l10n.warning,
        contentText:
            'Do you want to mark this location as completed with zero weight?',
        onYes: () async {
          await saveWeights(locationWeights);
          if (!context.mounted) {
            return;
          }
          await updateStockTakeLocationStatus(context, currentLocation);
          return;
        },
      );
      return;
    }

    final weights = locationWeights
        .where(
          (x) =>
              x.captureMethod !=
              Enum$StockTakeWeightCaptureMethod.ADJUSTED_MANUALLY,
        )
        .toList();

    if (weights.isEmpty) {
      await updateStockTakeLocationStatus(context, currentLocation);
      return;
    }

    final uom =
        weights.last.grossWeight?.uom ?? weights.last.tareWeight?.uom ?? Uom.mt;
    final negativeNetWeightCount = weights
        .where((x) => x.getNetWeight(uom).value < 0)
        .length;

    if (negativeNetWeightCount > 0) {
      unawaited(
        EmrModal.showMessageBar(
          context,
          context.l10n.negativeNetWeight(negativeNetWeightCount),
          messageType: MessageBarTypes.error,
        ),
      );

      return;
    }

    final emptyTareWeights = weights
        .where((x) => (x.tareWeight?.value ?? 0) <= 0)
        .map((x) => x.title);

    if (emptyTareWeights.isNotEmpty) {
      await EmrDialog.noYes(
        context,
        titleText: context.l10n.warning,
        contentText:
            '${context.l10n.noTareWeight(emptyTareWeights.length)}:\n'
            '${emptyTareWeights.join(', ')}.\n\n'
            '${context.l10n.sureToProceed}',
        onYes: () async {
          await updateStockTakeLocationStatus(context, currentLocation);
        },
        //onNo: () => Navigator.of(context).pop(false),
      );
    } else {
      await updateStockTakeLocationStatus(context, currentLocation);
    }
  }

  void addNewWeight() {
    currentWeightLineId += 1;
    final newWeight = LocationWeightModel(
      id: currentWeightLineId,
      title: '${context.l10n.weightLine} $currentWeightLineId',
      weighedDateTime: DateTime.now(),
      weighedById: UserInfoService.instance?.userInfo.id,
      weighedByName: UserInfoService.instance?.userInfo.name,
      captureMethod: Enum$StockTakeWeightCaptureMethod.ENTERED_MANUALLY,
    );
    setState(() {
      weights.value = [...weights.value, newWeight];
    });
    widget.controller.activeWeight.value = newWeight;
  }

  Future<void> saveWeights(List<LocationWeightModel> weightsToBeSaved) async {
    widget.controller.showLoader.value = true;
    final result = await widget.controller.addStocktakeWeight(
      widget.currentLocation.id,
      widget.stockTake!.id ?? '',
      weightsToBeSaved,
    );

    if (!result.success) {
      widget.controller.showLoader.value = false;
      if (!mounted) return;
      unawaited(
        EmrModal.showMessageBar(
          context,
          HelperMethods.getErrorMessage(context, result),
          messageType: MessageBarTypes.error,
        ),
      );
      return;
    }

    final savedWeights = result.data!;
    refreshWeights(savedWeights);
    widget.controller.showLoader.value = false;
  }

  void refreshWeights(List<LocationWeightModel> savedWeights) {
    final activeWeights = savedWeights.activeWeights();
    final savedIds = activeWeights.map((w) => w.id).toSet();
    final tempWeights = weights.value
        .where((x) => !savedIds.contains(x.id) && x.isMoved != true)
        .toList();

    final currentWeights = [...savedWeights, ...tempWeights];
    currentWeightLineId = currentWeights.isNotEmpty
        ? currentWeights.map((x) => x.id).max
        : currentWeightLineId;
    weights.value = [...activeWeights, ...tempWeights]
      ..sort((a, b) => a.id.compareTo(b.id));
    // modifying the widget's object list as the comments tab
    // doesn't reflect when adding new weight line or deleting the existing one
    for (final weight in savedWeights) {
      if (!widget.currentLocation.takenWeights.any((x) => x.id == weight.id)) {
        widget.currentLocation.takenWeights.add(weight);
      } else {
        widget.currentLocation.takenWeights
                .firstWhere((x) => x.id == weight.id)
                .isDeleted =
            weight.isDeleted;
      }
    }
  }

  Future<void> openConfirmDeleteWeight(
    BuildContext context,
    LocationWeightModel weight,
  ) async {
    await EmrDialog.modal<String>(
      context,
      titleText: context.l10n.deleteWeight,
      dialogMode: DialogMode.compact,
      builder: (BuildContext dialogContext) {
        return SizedBox(
          width: MediaQuery.of(context).size.width * 0.7,
          child: Text(
            context.l10n.confirmDeleteLocationWeight(weight.title),
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        );
      },
      isDanger: true,
      acceptLabel: context.l10n.delete,
      onAccept: () async {
        weight.isDeleted = true;
        await saveWeights([weight]);
        if (!context.mounted) return;
        Navigator.of(context).pop();
      },
    );
  }
}
