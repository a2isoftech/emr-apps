import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';

class DismantlingSearchVehicleCount extends StatefulWidget {
  const DismantlingSearchVehicleCount({
    required this.vehicleCount,
    super.key,
  });

  final int vehicleCount;

  @override
  State<DismantlingSearchVehicleCount> createState() =>
      _DismantlingSearchVehicleCountState();
}

class _DismantlingSearchVehicleCountState
    extends State<DismantlingSearchVehicleCount> {
  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: '${context.l10n.thereAre} ',
          ),
          TextSpan(
            text: widget.vehicleCount.toString(),
          ),
          const TextSpan(
            text: ' vehicles awaiting outturn.',
          ),
        ],
      ),
      style: Theme.of(context).textTheme.titleMedium,
    );
  }
}
