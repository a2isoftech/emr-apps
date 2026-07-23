import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_elv_quotes/elv_quotes.dart';
import 'package:flutter/material.dart';

class ElvSearchedVehicleDetailWidget extends StatelessWidget {
  const ElvSearchedVehicleDetailWidget({super.key});

  @override
  Widget build(BuildContext context) {
    //TODO: Values are static here. Will change in next PR
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          context.l10n.vehiclesSelected,
          style: Theme.of(
            context,
          ).textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.bold),
        ),
        Text(
          context.l10n.noRecordsHaveBeenSelectedMessage,
          style: Theme.of(context).textTheme.labelMedium!.copyWith(
            color: Theme.of(context).hintColor,
            fontStyle: FontStyle.italic,
          ),
        ),
        const SizedBox(height: Insets.gutter / 2),
        Expanded(
          child: ListView(
            children: [
              ElvVehicleTileWidget(
                vehicleType: 'Validate Vehicle Details: MOTORCYCLE',
                vehicleIdentifier: 'ajasdjansjd',
                vehicleInfo: '2016 MG',
                validVehicle: false,
                leadingIndex: 1,
                onDelete: () {},
              ),
              const Divider(),
              ElvVehicleTileWidget(
                vehicleType: 'CAMPER',
                vehicleIdentifier: 'ajasdjansjd',
                vehicleInfo: '2016 MG',
                leadingIndex: 2,
                onDelete: () {},
              ),
              const Divider(),
              ElvVehicleTileWidget(
                vehicleType: 'CAMPER',
                vehicleIdentifier: 'ajasdjansjd',
                vehicleInfo: '2016 MG',
                leadingIndex: 3,
                onDelete: () {},
              ),
              const Divider(),
              ElvVehicleTileWidget(
                vehicleType: 'CAMPER',
                vehicleIdentifier: 'ajasdjansjd',
                vehicleInfo: '2016 MG',
                leadingIndex: 4,
                onDelete: () {},
              ),
            ],
          ),
        ),
      ],
    );
  }
}
