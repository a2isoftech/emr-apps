import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_elv_core/models/elv_territory_enum.dart';
import 'package:emr_one_elv_dismantling/models/dismantling_vehicle.dart';
import 'package:emr_one_elv_dismantling/models/weight.dart';
import 'package:emr_one_elv_dismantling/widgets/dismantle/labeled_value.dart';
import 'package:emr_one_elv_dismantling/widgets/dismantle/vehicle_detail_header.dart';
import 'package:flutter/material.dart';

class DismantleHeaderTitle extends StatefulWidget {
  const DismantleHeaderTitle({
    required this.vehicle,
    required this.remainingVehicleWeight,
    required this.territory,
    super.key,
  });

  final DismantlingVehicle vehicle;
  final Weight remainingVehicleWeight;
  final ElvTerritory territory;

  @override
  State<DismantleHeaderTitle> createState() => _DismantleHeaderTitleState();
}

class _DismantleHeaderTitleState extends State<DismantleHeaderTitle> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        VehicleDetailHeader(
          make: widget.vehicle.manufacturer,
          model: widget.vehicle.model,
          trim: widget.vehicle.trim,
        ),
        const SizedBox(height: 8),
        Wrap(
          children: [
            if (widget.territory == ElvTerritory.uk)
              LabeledValue(label: context.l10n.vrn, value: widget.vehicle.vrn),
            LabeledValue(label: context.l10n.vin, value: widget.vehicle.vin),
            LabeledValue(
              label: context.l10n.fuelType,
              value: widget.vehicle.fuelType,
            ),
          ],
        ),
        LabeledValue(
          label: '${context.l10n.remainingVehicleWeight} (ELVAE)',
          value: _vehicleRemainingWeight(),
          addComma: false,
        ),
      ],
    );
  }

  String _vehicleRemainingWeight() {
    return '${widget.remainingVehicleWeight.value} '
        '${widget.remainingVehicleWeight.uomCode}';
  }
}
