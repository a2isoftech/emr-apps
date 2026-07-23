import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_elv_core/models/quote_models/quote_models.dart';
import 'package:emr_one_elv_quotes/common/common.dart';
import 'package:emr_one_elv_quotes/common/custom_selection_box.dart';
import 'package:emr_one_elv_quotes/controller/manual_vehicle_lookup/manual_vehicle_lookup_model.dart';
import 'package:emr_one_elv_quotes/controller/manual_vehicle_lookup/manual_vehicle_lookup_state.dart';
import 'package:emr_one_elv_quotes/extensions/extensions.dart';
import 'package:emr_one_elv_quotes/pages/quick_quotes/controller/quick_quotes_controller.dart';
import 'package:flutter/material.dart';

class ManualVehicleLookupDialog extends StatefulWidget {
  const ManualVehicleLookupDialog({
    required this.onAdd,
    required this.controller,
    this.identifier,
    super.key,
  });
  final void Function(
    VehicleDetail description,
  ) onAdd;
  final QuickQuoteController controller;
  final String? identifier;

  @override
  State<StatefulWidget> createState() => ManualVehicleLookupDialogState();
}

class ManualVehicleLookupDialogState extends State<ManualVehicleLookupDialog> {
  bool loading = false;
  final focusNode = FocusNode();
  late final TextEditingController vinController;
  late final ElvTerritory activeTerritory;
  late final int maxIdentifierLength;

  @override
  void initState() {
    super.initState();
    widget.controller.baseState.manualVehicleLookupState
        .manualVehicleLookupReset();
    activeTerritory = widget.controller.activeTerritory;
    maxIdentifierLength = activeTerritory.vehicleIdentifierMaxLength();
    vinController = TextEditingController()
      ..text = setIdentifier(maxIdentifierLength);
  }

  @override
  Widget build(BuildContext context) {
    final controller = widget.controller.baseState.manualVehicleLookupState;
    final manualVehicleLookUpState =
        widget.controller.baseState.manualVehicleLookupState.model;

    if (manualVehicleLookUpState.makes.isEmpty) {
      Future<void>.delayed(const Duration(seconds: 1))
          .then((value) => setState(() {}));
    }

    final filterControls = _filterControls(controller);

    return Material(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: Insets.gutter / 2,
              top: Insets.gutter / 2,
              bottom: Insets.gutter / 2,
            ),
            child: SizedBox(
              width: 500,
              child: TextFormField(
                autofocus: true,
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  label: Text(activeTerritory.vehicleIdentifierTitle(context)),
                ),
                controller: vinController,
                onChanged: (v) => setState(() {
                  controller.model.identifier = v;
                }),
                maxLength: maxIdentifierLength,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: Insets.gutter,
            ),
            child: Text(
              vinController.text.isEmpty
                  ? '${activeTerritory.vehicleIdentifierTitle(context)} '
                      '${context.l10n.required}'
                  : '',
              style: const TextStyle(color: Colors.red),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height - 300,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                FocusTraversalGroup(
                  child: Flexible(
                    child: ListView.builder(
                      shrinkWrap: true,
                      controller: ScrollController(),
                      itemBuilder: (_, i) {
                        final bottomPadding =
                            filterControls[i] == filterControls.last
                                ? 5.0
                                : 0.0;

                        return Padding(
                          padding: EdgeInsets.only(
                            right: Insets.gutter / 2,
                            left: Insets.gutter / 2,
                            bottom: bottomPadding,
                          ),
                          child: filterControls[i],
                        );
                      },
                      itemCount: filterControls.length,
                    ),
                  ),
                ),
                FocusTraversalGroup(
                  child: Flexible(
                    child: loading
                        ? const Center(
                            child: CircularProgressIndicator(),
                          )
                        : ListView.builder(
                            controller: ScrollController(),
                            itemBuilder: (_, i) => _buildSummary(
                              context,
                              i,
                              manualVehicleLookUpState,
                              manualVehicleLookUpState.results.length,
                              widget.controller.activeTerritory,
                            ),
                            itemCount: vinController.text.isEmpty
                                ? 0
                                : manualVehicleLookUpState.resultsFound == 0
                                    ? 0
                                    : manualVehicleLookUpState.results.length +
                                        1,
                          ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSummary(
    BuildContext context,
    int position,
    ManualVehicleLookupModel state,
    int total,
    ElvTerritory activeTerritory,
  ) {
    if (position == 0) {
      var text = '${context.l10n.results} ${state.resultsFound}';
      if (total == 0 && state.resultsFound > 0) {
        text += ' - ${context.l10n.tooManyResultsPlease}';
      }
      return Padding(
        padding: const EdgeInsets.only(
          top: Insets.gutter / 2,
          bottom: Insets.gutter / 4,
          right: Insets.gutter / 2,
          left: Insets.gutter / 2,
        ),
        child: FormLabel(
          text,
        ),
      );
    }

    return ClickableListTile(
      child: Row(
        children: [
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Text(
                      state.results[position - 1]
                          .getSummary(activeTerritory, context),
                      style: Theme.of(context).textTheme.bodyMedium,
                      overflow: TextOverflow.clip,
                    ),
                  ],
                ),
                SizedBox(
                  width: 220,
                  child: Text(
                    state.results[position - 1].getSubSummary(),
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall!
                        .copyWith(overflow: TextOverflow.clip),
                    overflow: TextOverflow.clip,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      onTap: () => widget.onAdd(state.results[position - 1]),
    );
  }

  Widget _buildDropDown<T>({
    required BuildContext context,
    required String label,
    required T? value,
    required CustomControlItems<T> items,
    required ChangeFunc<T> onChanged,
    required void Function() onClear,
  }) =>
      Row(
        children: [
          Expanded(
            child: CustomSelectBox<T>(
              label: label,
              value: value,
              items: items,
              sorted: false,
              onChanged: loading ? null : onChanged,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: Insets.gutter * 2,
              left: Insets.gutter / 2,
            ),
            child: SizedBox(
              width: 34,
              height: 34,
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  padding: EdgeInsets.zero,
                  foregroundColor: value == null
                      ? Theme.of(context).disabledColor
                      : Theme.of(context).colorScheme.surface,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(3)),
                  ),
                  side: BorderSide(
                    color: value == null
                        ? Theme.of(context).disabledColor
                        : Theme.of(context).splashColor,
                  ),
                  backgroundColor: value == null
                      ? Theme.of(context).disabledColor
                      : Theme.of(context).splashColor,
                ),
                onPressed: value == null ? null : onClear,
                child: const Icon(Icons.clear_rounded),
              ),
            ),
          ),
        ],
      );

  List<Widget> _filterControls(
    ManualVehicleLookUpState state,
  ) {
    final manualVehicleLookUpState = state.model;
    final controller = state;

    return [
      CustomSelectBox<String>(
        label: context.l10n.make,
        value: manualVehicleLookUpState.selectedMake,
        items: CustomControlItems.fromIterable<String>(
          vinController.text.isNotEmpty ? manualVehicleLookUpState.makes : [],
          (item) => item,
        ),
        sorted: false,
        onChanged: (e) {
          setState(() {});
          controller
              .manualVehicleUpdateMake(
                make: e!,
                vehicleService: widget.controller.vehicleService,
                identifier: vinController.text,
              )
              .then(
                (value) => setState(() {
                  loading = false;
                }),
              );
        },
      ),
      CustomSelectBox<String>(
        label: context.l10n.model,
        value: manualVehicleLookUpState.selectedModel,
        items: CustomControlItems.fromIterable<String>(
          vinController.text.isNotEmpty ? manualVehicleLookUpState.models : [],
          (item) => item,
        ),
        sorted: false,
        onChanged: (e) {
          setState(() {
            loading = true;
          });
          controller
              .manualVehicleUpdateModel(
                vehicleModel: e!,
                vehicleService: widget.controller.vehicleService,
              )
              .then(
                (value) => setState(() {
                  loading = false;
                  if (controller.model.results.isNotEmpty) {
                    focusNode.requestFocus();
                  }
                }),
              );
        },
      ),
      CustomSelectBox<String>(
        sorted: true,
        label: context.l10n.year,
        value: manualVehicleLookUpState.selectedYear,
        items: CustomControlItems.fromIterable<String>(
          vinController.text.isNotEmpty ? manualVehicleLookUpState.years : [],
          (item) => item,
        ),
        onChanged: (e) {
          setState(() {
            loading = true;
            if (controller.model.results.isNotEmpty) {
              focusNode.requestFocus();
            }
          });
          controller
              .manualVehicleUpdateOptions(
                year: e,
                vehicleService: widget.controller.vehicleService,
              )
              .then(
                (value) => setState(() {
                  loading = false;
                }),
              );
        },
      ),
      _buildDropDown<String>(
        context: context,
        items: CustomControlItems.fromIterable<String>(
          vinController.text.isNotEmpty ? manualVehicleLookUpState.fuel : [],
          (item) => item,
        ),
        label: context.l10n.fuel,
        onChanged: (e) {
          setState(() {
            loading = true;
          });
          controller
              .manualVehicleUpdateOptions(
                fuel: e,
                vehicleService: widget.controller.vehicleService,
              )
              .then(
                (value) => setState(() {
                  loading = false;
                }),
              );
        },
        onClear: () => controller
            .manualVehicleClearOptions(
              fuel: true,
              vehicleService: widget.controller.vehicleService,
            )
            .then(
              (value) => setState(() {
                loading = false;
              }),
            ),
        value: manualVehicleLookUpState.selectedFuel,
      ),
      _buildDropDown<String>(
        context: context,
        items: CustomControlItems.fromIterable<String>(
          vinController.text.isNotEmpty
              ? manualVehicleLookUpState.transmissions
              : [],
          (item) => item,
        ),
        label: context.l10n.transmission,
        onChanged: (e) {
          setState(
            () {
              loading = true;
            },
          );
          controller
              .manualVehicleUpdateOptions(
                transmission: e,
                vehicleService: widget.controller.vehicleService,
              )
              .then(
                (value) => setState(
                  () {
                    loading = false;
                  },
                ),
              );
        },
        onClear: () => controller
            .manualVehicleClearOptions(
              transmission: true,
              vehicleService: widget.controller.vehicleService,
            )
            .then(
              (value) => setState(() {
                loading = false;
              }),
            ),
        value: manualVehicleLookUpState.selectedTransmission,
      ),
      _buildDropDown<String>(
        context: context,
        items: CustomControlItems.fromIterable<String>(
          vinController.text.isNotEmpty
              ? manualVehicleLookUpState.bodyTypes
              : [],
          (item) => item,
        ),
        label: context.l10n.bodyType,
        onChanged: (e) {
          setState(() {
            loading = true;
          });
          controller
              .manualVehicleUpdateOptions(
                bodyType: e,
                vehicleService: widget.controller.vehicleService,
              )
              .then(
                (value) => setState(() {
                  loading = false;
                }),
              );
        },
        onClear: () => controller
            .manualVehicleClearOptions(
              bodyType: true,
              vehicleService: widget.controller.vehicleService,
            )
            .then(
              (value) => setState(() {
                loading = false;
              }),
            ),
        value: manualVehicleLookUpState.selectedBodyType,
      ),
      _buildDropDown<String>(
        context: context,
        items: CustomControlItems.fromIterable<String>(
          vinController.text.isNotEmpty ? manualVehicleLookUpState.doors : [],
          (item) => item,
        ),
        label: context.l10n.doors,
        onChanged: (e) {
          setState(() {
            loading = true;
          });
          controller
              .manualVehicleUpdateOptions(
                doors: e,
                vehicleService: widget.controller.vehicleService,
              )
              .then(
                (value) => setState(() {
                  loading = false;
                }),
              );
        },
        onClear: () => controller
            .manualVehicleClearOptions(
              doors: true,
              vehicleService: widget.controller.vehicleService,
            )
            .then(
              (value) => setState(() {
                loading = false;
              }),
            ),
        value: manualVehicleLookUpState.selectedDoors,
      ),
      _buildDropDown<String>(
        context: context,
        items: CustomControlItems.fromIterable<String>(
          vinController.text.isNotEmpty
              ? manualVehicleLookUpState.variants
              : [],
          (item) => item,
        ),
        label: context.l10n.variant,
        onChanged: (e) {
          setState(() {
            loading = true;
          });
          controller
              .manualVehicleUpdateOptions(
                variant: e,
                vehicleService: widget.controller.vehicleService,
              )
              .then(
                (value) => setState(() {
                  loading = false;
                }),
              );
        },
        onClear: () => controller
            .manualVehicleClearOptions(
              variant: true,
              vehicleService: widget.controller.vehicleService,
            )
            .then(
              (value) => setState(() {
                loading = false;
              }),
            ),
        value: manualVehicleLookUpState.selectedVariant,
      ),
    ];
  }

  String setIdentifier(int maxIdentifierLength) {
    if (widget.identifier != null) {
      if (widget.identifier!.length > maxIdentifierLength) {
        return widget.identifier!.substring(0, maxIdentifierLength);
      }
      return widget.identifier!;
    }
    return widget.controller.model.failedLookUps.isNotEmpty
        ? widget.controller.model.failedLookUps.first.length >
                maxIdentifierLength
            ? widget.controller.model.failedLookUps.first
                .substring(0, maxIdentifierLength)
            : widget.controller.model.failedLookUps.first
        : '';
  }
}
