import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_elv_quotes/elv_quotes.dart';
import 'package:flutter/material.dart';

class ElvSearchVehicleWidget extends StatefulWidget {
  const ElvSearchVehicleWidget({super.key});

  @override
  State<ElvSearchVehicleWidget> createState() => _ElvSearchVehicleWidgetState();
}

class _ElvSearchVehicleWidgetState extends State<ElvSearchVehicleWidget> {
  late final ValueNotifier<String> searchVehicleNotifier;

  @override
  void initState() {
    super.initState();
    searchVehicleNotifier = ValueNotifier('');
  }

  @override
  Widget build(BuildContext context) {
    //TODO: Values are static here. Will change in next PR
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        EmrTextFormField(
          binding: searchVehicleNotifier,
          hintText: context.l10n.search,
          labelText: '${context.l10n.search} ${context.l10n.vrn}',
        ),
        Expanded(
          child: ListView(
            children: [
              ElvVehicleTileWidget(
                vehicleType: 'Fuel Type Warning: PETROL/ELECTRIC',
                vehicleIdentifier: 'ajasdjansjd',
                vehicleInfo: '2016 MG',
                setBackgroundColor: true,
                validVehicle: false,
                onTap: () {},
              ),
              ElvVehicleTileWidget(
                vehicleType: 'Fuel Type Warning:DIESEL/ELECTRIC',
                vehicleIdentifier: 'ajasdjansjd',
                vehicleInfo: '2016 MG',
                validVehicle: false,
                onTap: () {},
              ),
              ElvVehicleTileWidget(
                vehicleType: 'CAMPER',
                vehicleIdentifier: 'ajasdjansjd',
                vehicleInfo: '2016 MG',
                setBackgroundColor: true,
                onTap: () {},
              ),
              ElvVehicleTileWidget(
                vehicleType: 'CAMPER',
                vehicleIdentifier: 'ajasdjansjd',
                vehicleInfo: '2016 MG',
                onTap: () {},
              ),
            ],
          ),
        ),
      ],
    );
  }
}
