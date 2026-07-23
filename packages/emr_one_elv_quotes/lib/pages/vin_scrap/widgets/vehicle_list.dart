import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_elv_core/constants.dart';
import 'package:emr_one_elv_core/models/quote_models/quote_models.dart';
import 'package:emr_one_elv_quotes/extensions/extensions.dart';
import 'package:emr_one_elv_quotes/pages/quick_quotes/widgets/dialogs/vehicle_lookup/widgets/vehicle_type_tag.dart';
import 'package:emr_one_elv_quotes/pages/vin_scrap/vin_scrap_quote_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class VehicleList extends StatelessWidget {
  const VehicleList({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<VINScrapController>(context);

    if (controller.state.vehicleDescriptions.isEmpty) return const SizedBox();

    return Padding(
      padding: const EdgeInsets.only(bottom: Insets.gutter),
      child: SizedBox(
        width: 700,
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: controller.state.vehicleDescriptions.length,
          itemBuilder: (context, index) => VehicleInfoTile(
            controller: controller,
            vehicle: controller.state.vehicleDescriptions[index],
          ),
        ),
      ),
    );
  }
}

class VehicleInfoTile extends StatefulWidget {
  const VehicleInfoTile({
    required this.controller,
    required this.vehicle,
    super.key,
  });

  final VehicleDetail vehicle;
  final VINScrapController controller;

  @override
  State<VehicleInfoTile> createState() => _VehicleInfoTileState();
}

class _VehicleInfoTileState extends State<VehicleInfoTile> {
  @override
  Widget build(BuildContext context) {
    final controller = widget.controller;
    final vehicle = widget.vehicle;
    final isUK = controller.activeTerritory == ElvTerritory.uk;
    final isUSA = controller.activeTerritory == ElvTerritory.usa;
    final vinInput = widget.controller.vinController.text;
    final isShortVIN =
        (vinInput.length != ElvConstants.standardVinLength) &&
        (vinInput.isNotEmpty);
    final allowNonQuotableUK = controller.appConfig.ffExperiments.contains(
      ElvConstants.elvUkAllowNonQuotable,
    );

    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: Insets.gutter / 2,
        vertical: Insets.gutter / 4,
      ),
      child: 
          DecoratedBox(
            decoration: BoxDecoration(
              border: Border.all(color: Theme.of(context).colorScheme.primary),
              borderRadius: BorderRadius.circular(Insets.gutter / 4),
            ),
            child: SizedBox(
              width: 225,
              child: Padding(
                padding: const EdgeInsets.all(Insets.gutter),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        if (vehicle.vehicleType ==
                            VehicleType.hasFlaggedBodyType)
                          VehicleTypeTag(
                            labelColor: Theme.of(context).colorScheme.error,
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
                            labelColor: Theme.of(context).colorScheme.secondary,
                            labelIcon: Icons.warning,
                            labelText: _getFlaggedFuelTypeLabel(
                              context,
                              vehicle,
                            ),
                          )
                        else
                          VehicleTypeTag(
                            labelColor: Theme.of(context).colorScheme.primary,
                            labelText: context.l10n.acceptedVehicle,
                          ),
                        Text(
                          '''${controller.activeTerritory.vinVrnText(context)}: ${controller.activeTerritory.vehicleIdentification(vehicle)}''',
                        ),
                        _make(vehicle, isUSA, isShortVIN),
                        _modelAndFuelType(
                          vehicle,
                          controller,
                          isUSA,
                          isShortVIN,
                        ),
                        if ((isUSA && !isShortVIN) || (!isUSA))
                          Text('${vehicle.year ?? ''}')                      
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(Insets.gutter),
                          child: IconButton(
                            onPressed: () {
                              controller.removeVehicle(vehicle);
                            },
                            icon: const Icon(Icons.delete, color: Colors.red),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),       
    );
  }

  Widget _make(VehicleDetail vehicle, bool isUSA, bool isShortVIN) {
    // Return the make for full-length VINs.
    if ((isUSA && !isShortVIN) || !isUSA) {
      return Text(vehicle.make!);
    }
    return const SizedBox.shrink();
  }

  Widget _modelAndFuelType(
    VehicleDetail vehicle,
    VINScrapController controller,
    bool isUSA,
    bool isShortVIN,
  ) {
    // Return the model for full-length VINs.
    if ((isUSA && !isShortVIN) || !isUSA) {
      return Text(
        '${vehicle.model ?? '-'} (${vehicle.fuelType ?? context.l10n.unknown})',
      );
    }
    // Return the short VIN text when a short VIN is provided.
    if (isUSA && isShortVIN) {
      return Text(context.l10n.shortVin);
    }
    return const SizedBox.shrink();
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
}
