import 'package:emr_core_api/graphql/schema.graphql.dart';
import 'package:emr_flutter_theme/emr_flutter_theme.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_elv_core/models/elv_territory_enum.dart';
import 'package:emr_one_elv_dismantling/models/dismantle_constants.dart';
import 'package:emr_one_elv_dismantling/models/dismantling_vehicle.dart';
import 'package:flutter/material.dart';

class DismantlingSilverListChild extends StatefulWidget {
  const DismantlingSilverListChild({
    required this.vehicle,
    required this.territory,
    super.key,
  });

  final DismantlingVehicle vehicle;
  final ElvTerritory territory;

  @override
  State<DismantlingSilverListChild> createState() =>
      _DismantlingSilverListChildState();
}

class _DismantlingSilverListChildState
    extends State<DismantlingSilverListChild> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: Insets.gutter / 2),
      child: InkWell(
        onTap: () {
          context.pushNamed(
            DismantleConstants.kElvDismantleRouteName,
            extra: widget.vehicle,
          );
        },
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: Theme.of(context).listTileTheme.tileColor,
            borderRadius: const BorderRadius.all(Radius.circular(5)),
            border: Border.all(
              color: const Color(0xFFC6C6C6),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(Insets.gutter),
            child: SizedBox(
              width: double.infinity,
              child: Row(
                children: [
                  Expanded(
                    child: Stack(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              widget.territory == ElvTerritory.usa
                                  ? widget.vehicle.vin
                                  : widget.vehicle.vrn,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                            Text(
                              '${widget.vehicle.year} '
                              '${widget.vehicle.manufacturer} '
                              '${widget.vehicle.model} '
                              '${widget.vehicle.trim}',
                              style: Theme.of(context).textTheme.bodyMedium,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  if (widget.vehicle.vehicleStatus ==
                      Enum$VehicleStatus.DISMANTLING)
                    Chip(
                      label: Text(
                        context.l10n.inProgress.toUpperCase(),
                        style: Theme.of(context).chipTheme.labelStyle?.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: EmrColours.primaryBlue,
                                ) ??
                            const TextStyle(
                              fontWeight: FontWeight.bold,
                              color: EmrColours.primaryBlue,
                            ),
                      ),
                      backgroundColor: EmrColours.secondaryYellow,
                      side: BorderSide(
                        color: Theme.of(context).chipTheme.side?.color ??
                            EmrColours.secondaryYellow,
                      ),
                    ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
