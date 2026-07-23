import 'dart:async';

import 'package:emr_flutter_theme/emr_flutter_theme.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_elv_core/constants.dart';
import 'package:emr_one_elv_core/models/models.dart';
import 'package:emr_one_elv_core/widgets/flyout/elv_flyout_builder.dart';
import 'package:emr_one_elv_quotes/common/manual_vehicle_lookup_dialog.dart';
import 'package:emr_one_elv_quotes/pages/quick_quotes/controller/quick_quotes_controller.dart';
import 'package:emr_one_elv_quotes/pages/quick_quotes/widgets/dialogs/vehicle_lookup/widgets/vehicle_type_tag.dart';
import 'package:emr_one_elv_quotes/pages/quick_quotes/widgets/dialogs/vehicle_lookup/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class VehicleLookUpFlyOut extends StatefulWidget {
  const VehicleLookUpFlyOut({
    required this.controller,
    super.key,
  });

  final QuickQuoteController controller;

  @override
  State<VehicleLookUpFlyOut> createState() => _VehicleLookUpFlyOutState();
}

class _VehicleLookUpFlyOutState extends State<VehicleLookUpFlyOut> {
  late TextEditingController searchController;
  bool loading = false;
  bool hasQuoteHistory = false;
  late List<String>? existingQuotedVehicles;

  @override
  void initState() {
    super.initState();
    searchController = TextEditingController();
    existingQuotedVehicles = _getExistingQuotedVehicles();
  }

  @override
  Widget build(BuildContext context) {
    final controller = widget.controller;
    final searchedVehicles = controller.model.vehicleDescriptions
        .map(
          (x) => (x.vehicleReg ?? '').isEmpty ? x.vin! : x.vehicleReg!,
        )
        .toSet();
    final vehicleList = existingQuotedVehicles!.toSet();

    // Find items not present in both
    final result = searchedVehicles
        .difference(vehicleList)
        .union(vehicleList.difference(searchedVehicles));

    final vinCountText = result.isNotEmpty ? '${result.length} ' : '';
    final largeScreen = MediaQuery.of(context).size.width > 1200;
    final smallLaptoporTablet = MediaQuery.of(context).size.width < 1200 &&
        MediaQuery.of(context).size.width > 600;
    final textBoxWidth =
        largeScreen ? 680.0 : MediaQuery.of(context).size.width * 0.9;

    final allowNonQuotableUK = controller.model.elvUkAllowNonQuotable;
    final treatHybridAsNonQuotableUSA =
        controller.model.elvUsaTreatHybridAsNonQuotable;

    final isUK = controller.activeTerritory == ElvTerritory.uk;
    final isUSA = controller.activeTerritory == ElvTerritory.usa;

    if (largeScreen) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: Insets.gutter),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                searchBox(textBoxWidth, context),
                SizedBox(
                  height: 54,
                  width: 140,
                  child: OutlinedButton(
                    onPressed: () {
                      submit(
                        searchController.text,
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(Insets.gutter / 2),
                      child: Text(
                        context.l10n.search,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 2,
            width: 900,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                if (controller.model.failedLookUps.isNotEmpty)
                  SizedBox(
                    height: 135,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(Insets.gutter),
                          child: Text(
                            context.l10n.failedLookups,
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 80,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: controller.model.failedLookUps.length,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.only(
                                  right: Insets.gutter / 2,
                                ),
                                child: GestureDetector(
                                  onTap: () {
                                    controller
                                        .baseState.manualVehicleLookupState
                                        .manualVehicleLookupReset();
                                    controller
                                        .baseState.manualVehicleLookupState
                                        .manualVehicleInit(
                                      vehicleService: controller.vehicleService,
                                    );
                                    elvStandardFlyout(
                                      context: context,
                                      body: ManualVehicleLookupDialog(
                                        onAdd: onAddManual,
                                        controller: controller,
                                        identifier: controller
                                            .model.failedLookUps[index],
                                      ),
                                      heading: context.l10n.manualLookUp,
                                    );
                                  },
                                  child: ColoredBox(
                                    color: Colors.red.withAlpha(51),
                                    child: SizedBox(
                                      height: 60,
                                      width: 275,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                              left: Insets.gutter,
                                            ),
                                            child: SelectableText(
                                              controller
                                                  .model.failedLookUps[index],
                                            ),
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              setState(() {
                                                controller.model.failedLookUps
                                                    .removeAt(index);
                                              });
                                            },
                                            child: Padding(
                                              padding: const EdgeInsets.all(
                                                Insets.gutter,
                                              ),
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                  right: Insets.gutter / 2,
                                                ),
                                                child: Container(
                                                  width: 45,
                                                  height: 45,
                                                  decoration: BoxDecoration(
                                                    color: Colors.redAccent,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                      8,
                                                    ),
                                                  ),
                                                  child: const Icon(
                                                    Icons.delete_outline,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                Padding(
                  padding: const EdgeInsets.all(Insets.gutter),
                  child: Text(
                    //ignore: lines_longer_than_80_chars
                    "$vinCountText${controller.activeTerritory.vehicleIdentifierTitle(context)}'s Found",
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                if (controller.model.vehicleDescriptions.isNotEmpty)
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 2 -
                        (controller.model.failedLookUps.isEmpty ? 76 : 200),
                    width: 900,
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: controller.model.vehicleDescriptions.length,
                      itemBuilder: (context, index) {
                        final vehicle =
                            controller.model.vehicleDescriptions[index];

                        final vehicleAlreadyAdded =
                            existingQuotedVehicles?.any((x) {
                                  final vehicleId =
                                      isUK ? vehicle.vehicleReg : vehicle.vin;
                                  return x == vehicleId;
                                }) ??
                                false;

                        final hideDeleteButton =
                            _getExistingQuotedVehicles().any((x) {
                          final vehicleId =
                              isUK ? vehicle.vehicleReg : vehicle.vin;
                          return x == vehicleId;
                        });

                        if (vehicleAlreadyAdded) {
                          return const SizedBox.shrink();
                        }

                        return Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: Insets.gutter / 2,
                          ),
                          child: Container(
                            decoration: BoxDecoration(
                              color: ElvConstants.elvBlueHighlight,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(Insets.gutter / 2),
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 50,
                                    child: !hideDeleteButton
                                        ? Checkbox(
                                            activeColor: Theme.of(context)
                                                .colorScheme
                                                .primary,
                                            checkColor: Theme.of(context)
                                                .colorScheme
                                                .onPrimary,
                                            value: vehicle.selected,
                                            onChanged: _shouldDisableCheckbox(
                                              vehicle: vehicle,
                                              isUSA: isUSA,
                                              treatHybridAsNonQuotableUSA:
                                                  treatHybridAsNonQuotableUSA,
                                              allowNonQuotableUK:
                                                  allowNonQuotableUK,
                                            )
                                                ? null
                                                : ((v) => setState(
                                                      () => vehicle.selected =
                                                          v ?? false,
                                                    )),
                                          )
                                        : const SizedBox.shrink(),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: Insets.gutter,
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        if (vehicle.vehicleType ==
                                            VehicleType.hasFlaggedBodyType)
                                          VehicleTypeTag(
                                            labelColor: Theme.of(context)
                                                .colorScheme
                                                .error,
                                            labelIcon: Icons.warning,
                                            labelText: _getFlaggedBodyTypeLabel(
                                              context,
                                              vehicle,
                                              isUK,
                                              allowNonQuotableUK,
                                            ),
                                          )
                                        else if (vehicle.vehicleType ==
                                            VehicleType.hasFlaggedFuelType)
                                          VehicleTypeTag(
                                            labelColor: Theme.of(context)
                                                .colorScheme
                                                .secondary,
                                            labelIcon: Icons.warning,
                                            labelText: _getFlaggedFuelTypeLabel(
                                              context,
                                              vehicle,
                                            ),
                                          )
                                        else
                                          VehicleTypeTag(
                                            labelColor: Theme.of(context)
                                                .colorScheme
                                                .primary,
                                            labelText:
                                                context.l10n.acceptedVehicle,
                                          ),
                                        _infoText(
                                          controller.activeTerritory
                                              .vehicleIdentifierTitle(
                                            context,
                                          ),
                                          vehicle.identifier(
                                            controller.activeTerritory,
                                          ),
                                          selectableBody: true,
                                        ),
                                        _infoText(
                                          context.l10n.vehicle,
                                          '${vehicle.year ?? ''} '
                                          '${vehicle.make ?? ''} '
                                          '${vehicle.model ?? ''} '
                                          '${vehicle.fuelType ?? ''} '
                                          '${vehicle.trim ?? ''}',
                                        ),
                                      ],
                                    ),
                                  ),
                                  const Spacer(),
                                  if (!hideDeleteButton) ...{
                                    GestureDetector(
                                      onTap: () {
                                        controller.removeVehicle(
                                          index,
                                        );
                                        setState(() {});
                                      },
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.all(Insets.gutter),
                                        child: Padding(
                                          padding: const EdgeInsets.all(
                                            Insets.gutter / 2,
                                          ),
                                          child: Container(
                                            width: 45,
                                            height: 45,
                                            decoration: BoxDecoration(
                                              color: Colors.redAccent,
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                            ),
                                            child: const Icon(
                                              Icons.delete_outline,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  },
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(Insets.gutter),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ManualLookUpButton(
                  controller: widget.controller,
                  onAddManual: onAddManual,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: context.pop,
                      child: Text(context.l10n.cancel),
                    ),
                    TextButton(
                      onPressed: widget
                              .controller.model.vehicleDescriptions.isEmpty
                          ? null
                          : () {
                              EmrDialog.busy(
                                context,
                                titleText: context.l10n.loading.toUpperCase(),
                              );
                              widget.controller
                                  .batchQuoteBundleOperations()
                                  .then((value) {
                                if (context.mounted) {
                                  context.pop();
                                  context.pop();
                                }
                                controller.scrollToBottom();
                              });
                            },
                      child: Text(
                        context.l10n.add,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      );
    }
    return Column(
      children: [
        searchBox(textBoxWidth, context),
        if (controller.model.failedLookUps.isNotEmpty)
          SizedBox(
            height: 100,
            child: Padding(
              padding: const EdgeInsets.only(
                top: Insets.gutter / 2,
                left: Insets.gutter / 2,
                right: Insets.gutter / 2,
              ),
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: controller.model.failedLookUps.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(
                      right: Insets.gutter / 2,
                    ),
                    child: GestureDetector(
                      onTap: () {
                        controller.baseState.manualVehicleLookupState
                            .manualVehicleLookupReset();
                        controller.baseState.manualVehicleLookupState
                            .manualVehicleInit(
                          vehicleService: controller.vehicleService,
                        );
                        elvStandardFlyout(
                          context: context,
                          body: ManualVehicleLookupDialog(
                            onAdd: onAddManual,
                            controller: controller,
                            identifier: controller.model.failedLookUps[index],
                          ),
                          heading: context.l10n.manualLookUp,
                        );
                      },
                      child: ColoredBox(
                        color: Colors.red.withAlpha(51),
                        child: SizedBox(
                          height: 60,
                          width: 275,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: Insets.gutter,
                                ),
                                child: SelectableText(
                                  controller.model.failedLookUps[index],
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    controller.model.failedLookUps
                                        .removeAt(index);
                                  });
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(
                                    Insets.gutter,
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                      right: Insets.gutter / 2,
                                    ),
                                    child: Container(
                                      width: 45,
                                      height: 45,
                                      decoration: BoxDecoration(
                                        color: Colors.redAccent,
                                        borderRadius: BorderRadius.circular(
                                          8,
                                        ),
                                      ),
                                      child: const Icon(
                                        Icons.delete_outline,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        Expanded(
          flex: 7,
          child: Padding(
            padding: const EdgeInsets.all(Insets.gutter / 2),
            child: controller.model.vehicleDescriptions.isEmpty
                ? const SizedBox()
                : ListView.builder(
                    shrinkWrap: true,
                    itemCount: controller.model.vehicleDescriptions.length,
                    itemBuilder: (context, index) {
                      final vehicle =
                          controller.model.vehicleDescriptions[index];

                      return Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: Insets.gutter / 2,
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            color: ElvConstants.elvBlueHighlight,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(Insets.gutter / 2),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    if (smallLaptoporTablet) ...[
                                      Padding(
                                        padding:
                                            const EdgeInsets.all(Insets.gutter),
                                        child: Checkbox(
                                          activeColor: Theme.of(context)
                                              .colorScheme
                                              .primary,
                                          checkColor: Theme.of(context)
                                              .colorScheme
                                              .onPrimary,
                                          value: vehicle.selected,
                                          onChanged: _shouldDisableCheckbox(
                                            vehicle: vehicle,
                                            isUSA: isUSA,
                                            treatHybridAsNonQuotableUSA:
                                                treatHybridAsNonQuotableUSA,
                                            allowNonQuotableUK:
                                                allowNonQuotableUK,
                                          )
                                              ? null
                                              : ((v) => setState(
                                                    () => vehicle.selected =
                                                        v ?? false,
                                                  )),
                                        ),
                                      ),
                                    ],
                                    Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                            horizontal: Insets.gutter,
                                          ),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              if (vehicle.vehicleType ==
                                                  VehicleType
                                                      .hasFlaggedBodyType)
                                                VehicleTypeTag(
                                                  labelColor: Theme.of(context)
                                                      .colorScheme
                                                      .error,
                                                  labelIcon: Icons.warning,
                                                  labelText:
                                                      _getFlaggedBodyTypeLabel(
                                                    context,
                                                    vehicle,
                                                    isUK,
                                                    allowNonQuotableUK,
                                                  ),
                                                )
                                              else if (vehicle.vehicleType ==
                                                  VehicleType
                                                      .hasFlaggedFuelType)
                                                VehicleTypeTag(
                                                  labelColor: Theme.of(context)
                                                      .colorScheme
                                                      .secondary,
                                                  labelIcon: Icons.warning,
                                                  labelText:
                                                      _getFlaggedFuelTypeLabel(
                                                    context,
                                                    vehicle,
                                                  ),
                                                )
                                              else
                                                VehicleTypeTag(
                                                  labelColor: Theme.of(context)
                                                      .colorScheme
                                                      .primary,
                                                  labelText: context
                                                      .l10n.acceptedVehicle,
                                                ),
                                              _infoTextColumn(
                                                controller.activeTerritory
                                                    .vehicleIdentifierTitle(
                                                  context,
                                                ),
                                                vehicle.identifier(
                                                  controller.activeTerritory,
                                                ),
                                              ),
                                              _infoTextColumn(
                                                context.l10n.vehicle,
                                                '${vehicle.year ?? ''} '
                                                '${vehicle.make ?? ''} '
                                                '${vehicle.model ?? ''} '
                                                '${vehicle.fuelType ?? ''} '
                                                '${vehicle.trim ?? ''}',
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                GestureDetector(
                                  onTap: () {
                                    controller.removeVehicle(
                                      index,
                                    );
                                    setState(() {});
                                  },
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.all(Insets.gutter),
                                    child: Padding(
                                      padding: const EdgeInsets.all(
                                        Insets.gutter / 2,
                                      ),
                                      child: Container(
                                        width: 45,
                                        height: 45,
                                        decoration: BoxDecoration(
                                          color: Colors.redAccent,
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                        child: const Icon(
                                          Icons.delete_outline,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(Insets.gutter),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ManualLookUpButton(
                  controller: controller,
                  onAddManual: onAddManual,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: context.pop,
                      child: Text(context.l10n.cancel),
                    ),
                    TextButton(
                      onPressed: widget
                              .controller.model.vehicleDescriptions.isEmpty
                          ? null
                          : () {
                              EmrDialog.busy(
                                context,
                                titleText: context.l10n.loading.toUpperCase(),
                              );
                              widget.controller
                                  .batchQuoteBundleOperations()
                                  .then((value) {
                                controller.scrollToBottom();
                                if (context.mounted) {
                                  context.pop();
                                  context.pop();
                                }
                              });
                            },
                      child: Text(
                        context.l10n.save,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  SizedBox searchBox(double textBoxWidth, BuildContext context) {
    return SizedBox(
      width: textBoxWidth,
      height: 55,
      child: TextFormField(
        controller: searchController,
        autofocus: true,
        onFieldSubmitted: submit,
        decoration: InputDecoration(
          label: Text(
            widget.controller.activeTerritory.vehicleIdentifierTitle(context),
          ),
          suffixIcon: loading
              ? const Padding(
                  padding: EdgeInsets.all(Insets.gutter / 2),
                  child: SizedBox(
                    width: 20,
                    height: 20,
                    child: CircularProgressIndicator(),
                  ),
                )
              : null,
        ),
      ),
    );
  }

  void submit(String value) {
    //Check minimum search conditions are met, if not, return
    if (!(widget.controller.activeTerritory.enforceIdentifierMinLength()
        ? value.length >= ElvConstants.minimumUSVinLength
        : (value.length >= 4 || value.contains(' ')))) {
      return;
    }

    setState(() {
      loading = true;
    });
    onSubmitted(
      value,
    ).then((value) async {
      setState(() {
        loading = !widget.controller.vehicleSearchComplete;
        hasQuoteHistory = value;
      });
      if (hasQuoteHistory) {
        //Sort quote history by newest/oldest
        final quoteInfo = widget.controller.model.vehicleDescriptions
            .firstWhere(
              (element) => element.vehicleBatchQuotes != null,
            )
            .vehicleBatchQuotes!
          ..sort(
            (a, b) => DateTime.parse(b.quoteLastModifiedDate).compareTo(
              DateTime.parse(a.quoteLastModifiedDate),
            ),
          );
        //Check the quote isnt Invalid/Expired.
        final bundleID = quoteInfo.first.batchQuoteBundleId;

        if (mounted) {
          await EmrDialog.noYes(
            context,
            titleText: context.l10n.vehicleQuotedFor(
              quoteInfo.first.accountCode,
              quoteInfo.first.batchQuoteId,
            ),
            onYes: () {
              EmrDialog.busy(
                context,
                titleText: context.l10n.loading.toUpperCase(),
              );
              widget.controller.loadBatchQuoteBundle(bundleID).then(
                (value) {
                  if (mounted) {
                    context.pop();
                    context.pop();
                  }
                },
              );
            },
          );
        }
      }
    });
  }

  Future<bool> onSubmitted(
    String value,
  ) async {
    widget.controller.model.vinSearchText = value;
    await widget.controller
        .getVehiclesAsync(
      value,
      territoryCode: widget.controller.activeTerritory.territoryCode(),
    )
        .then((value) {
      widget.controller.filterFailed();
    });
    final vehicleItemIndex =
        existingQuotedVehicles?.indexOf(searchController.text.toUpperCase());
    if (vehicleItemIndex != null && vehicleItemIndex > -1) {
      existingQuotedVehicles?.removeAt(vehicleItemIndex);
    }
    if (widget.controller.model.vehicleDescriptions.length > 1) return false;

    return widget.controller.model.vehicleDescriptions.any(
      (element) =>
          element.vehicleBatchQuotes != null &&
          element.vehicleBatchQuotes!.isNotEmpty,
    );
  }

  void onAddManual(
    VehicleDetail vehicleDescription,
  ) {
    final vehicle = vehicleDescription;
    //Always set override curb weight for manual vehicles
    //Multi pricing will try to decode the vehicle if not passed in
    vehicle.overrideCurbWeight = vehicle.curbWeight?.toInt() ??
        (widget.controller.activeTerritory == ElvTerritory.uk
            ? ElvConstants.defaultVehicleCurbWeightKG
            : ElvConstants.defaultVehicleCurbWeightLB);
    widget.controller.addVehicle([vehicle]);
    Navigator.of(context).pop();
    setState(widget.controller.filterFailed);
  }

  SizedBox _infoText(
    String header,
    String body, {
    bool selectableBody = false,
  }) {
    return SizedBox(
      width: 700,
      child: Row(
        children: [
          Text(
            '$header: ',
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          if (selectableBody)
            SelectableText(
              body,
              style: Theme.of(context)
                  .textTheme
                  .titleLarge
                  ?.copyWith(color: EmrColours.secondaryCyan, fontSize: 18),
              onTap: () {
                Clipboard.setData(
                  ClipboardData(
                    text: body,
                  ),
                );
                EmrModal.showMessageBar(
                  context,
                  context.l10n.copiedToClipboard,
                );
              },
            ),
          if (!selectableBody)
            SizedBox(
              width: 610,
              child: Text(
                body,
                style: const TextStyle(
                  fontSize: 18,
                  overflow: TextOverflow.ellipsis,
                ),
                maxLines: 1,
              ),
            ),
        ],
      ),
    );
  }

  Widget _infoTextColumn(String header, String body) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '$header: ',
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.5,
          child: Text(
            body,
            style: const TextStyle(
              fontSize: 18,
              overflow: TextOverflow.ellipsis,
            ),
            maxLines: 5,
          ),
        ),
      ],
    );
  }

  String _getLabelPrefix(
    BuildContext context,
    bool isUK,
    bool allowNonQuotableUK,
  ) {
    return isUK && allowNonQuotableUK
        ? context.l10n.validateVehicleDetails
        : context.l10n.unsupportedVehicle;
  }

  String _getFlaggedBodyTypeLabel(
    BuildContext context,
    VehicleDetail vehicle,
    bool isUK,
    bool allowNonQuotableUK,
  ) {
    final labelPrefix = _getLabelPrefix(context, isUK, allowNonQuotableUK);
    return vehicle.bodyType != null
        ? '$labelPrefix: ${vehicle.bodyType}'
        : labelPrefix;
  }

  String _getFlaggedFuelTypeLabel(
    BuildContext context,
    VehicleDetail vehicle,
  ) {
    return vehicle.fuelType?.isNotEmpty ?? false
        ? '${context.l10n.fuelType} ${context.l10n.warning}'
            ': ${vehicle.fuelType}'
        : '${context.l10n.fuelType} ${context.l10n.warning}';
  }

  bool _shouldDisableCheckbox({
    required VehicleDetail vehicle,
    required bool isUSA,
    required bool treatHybridAsNonQuotableUSA,
    required bool allowNonQuotableUK,
  }) {
    return (vehicle.vehicleType == VehicleType.hasFlaggedFuelType &&
            isUSA &&
            treatHybridAsNonQuotableUSA) ||
        (vehicle.vehicleType == VehicleType.hasFlaggedBodyType &&
            !allowNonQuotableUK);
  }

  List<String> _getExistingQuotedVehicles() {
    final isUK = widget.controller.activeTerritory == ElvTerritory.uk;
    return widget.controller.baseState.batchQuote?.quotes.map((x) {
          final quoteId =
              isUK ? x.vehicleDescription.vehicleReg : x.vehicleDescription.vin;
          return quoteId ?? '';
        }).toList() ??
        [];
  }
}
