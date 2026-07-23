import 'package:emr_core_api/graphql/schema.graphql.dart';
import 'package:emr_one_elv_dismantling/controllers/dismantle_controller.dart';
import 'package:emr_one_elv_dismantling/models/vehicle_part.dart';
import 'package:emr_one_elv_dismantling/widgets/dismantle/dismantle_widgets.dart';
import 'package:flutter/material.dart';

class PartInputSelector extends StatefulWidget {
  const PartInputSelector({
    required this.sealNumberController,
    required this.serialNumberController,
    required this.dismantleController,
    required this.vehiclePart,
    this.dismantledWheelCount,
    super.key,
  });

  final TextEditingController sealNumberController;
  final TextEditingController serialNumberController;
  final DismantleController dismantleController;
  final VehiclePart vehiclePart;
  final int? dismantledWheelCount;

  @override
  State<PartInputSelector> createState() => _PartInputSelectorState();
}

class _PartInputSelectorState extends State<PartInputSelector> {
  @override
  Widget build(BuildContext context) {
    switch (widget.vehiclePart.type) {
      case Enum$PartType.CAR_BODY:
        return CarBodyWeightInput(
          enabled: widget.vehiclePart.partStatus != Enum$PartStatus.DISMANTLED,
          carBodyNetWeight: widget.dismantleController.remainingVehicleWeight(),
          onCarNetWeightChange: widget.dismantleController.setCarBodyNetWeight,
        );
      case Enum$PartType.CATALYTIC_CONVERTER:
        return CatSealAndSerialInput(
          enabled: widget.vehiclePart.partStatus != Enum$PartStatus.DISMANTLED,
          sealNumberController: widget.sealNumberController,
          serialNumberController: widget.serialNumberController,
        );
      case Enum$PartType.ALLOY_WHEEL:
      case Enum$PartType.STEEL_WHEEL:
        return WheelCountSelector(
          selectedWheelCount: widget
              .dismantleController.partCountToMove[widget.vehiclePart.type]!,
          onWheelCountChanged: (count) => widget.dismantleController
              .setPartCountToDismantle(widget.vehiclePart.type, count),
          dismantledWheelCount: widget.dismantledWheelCount,
          wheelAvailableToDismantle:
              5 - widget.dismantleController.totalWheelsDismantled(),
        );
      case Enum$PartType.AIRBAG:
      case Enum$PartType.AIR_CON_GAS:
      case Enum$PartType.BATTERY:
      case Enum$PartType.BRAKE_FLUID:
      case Enum$PartType.COOLANT_ANTIFREEZE:
      case Enum$PartType.ENGINE_OIL:
      case Enum$PartType.FUEL:
      case Enum$PartType.OIL_FILTER:
      case Enum$PartType.OTHER:
      case Enum$PartType.SUSPENSION_OIL:
      case Enum$PartType.UNKNOWN:
      case Enum$PartType.$unknown:
      case Enum$PartType.CHROME_WHEEL:
        return const SizedBox.shrink();
    }
  }
}
