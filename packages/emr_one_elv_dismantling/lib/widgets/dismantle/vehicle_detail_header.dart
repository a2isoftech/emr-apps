import 'package:emr_flutter_theme/emr_flutter_theme.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';

class VehicleDetailHeader extends StatefulWidget {
  const VehicleDetailHeader({
    required this.make,
    required this.model,
    required this.trim,
    super.key,
  });
  final String make;
  final String model;
  final String trim;

  @override
  State<VehicleDetailHeader> createState() => _VehicleDetailHeaderState();
}

class _VehicleDetailHeaderState extends State<VehicleDetailHeader> {
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: '${context.l10n.dismantle}: ',
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  color: EmrColours.primaryWhite,
                  fontWeight: FontWeight.w500,
                ),
          ),
          TextSpan(
            text: '${widget.make} ${widget.model} ${widget.trim}',
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  color: EmrColours.primaryWhite,
                  fontWeight: FontWeight.bold,
                ),
          ),
        ],
      ),
    );
  }
}
