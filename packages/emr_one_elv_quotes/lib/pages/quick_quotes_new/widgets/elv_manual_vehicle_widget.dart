import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_elv_quotes/elv_quotes.dart';
import 'package:flutter/material.dart';

class ElvManualVehicleWidget extends StatefulWidget {
  const ElvManualVehicleWidget({super.key});

  @override
  State<ElvManualVehicleWidget> createState() => _ElvManualVehicleWidgetState();
}

class _ElvManualVehicleWidgetState extends State<ElvManualVehicleWidget> {
  late final ValueNotifier<String> vehicleNotifier;

  @override
  void initState() {
    super.initState();
    vehicleNotifier = ValueNotifier('');
  }

  @override
  Widget build(BuildContext context) {
    //TODO: Values are static here. Will change in next PR
    return Row(
      spacing: Insets.gutter / 2,
      children: [
        Expanded(
          child: Column(
            spacing: Insets.gutter / 2,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              EmrTextFormField(
                binding: vehicleNotifier,
                labelText: context.l10n.vrn,
                hintText: context.l10n.vrn,
              ),
              Row(
                spacing: Insets.gutter / 2,
                children: [
                  Expanded(
                    child: EmrPickerFormField<String>(
                      binding: vehicleNotifier,
                      itemTitleText: (make) => make,
                      labelText: context.l10n.make,
                      items: (search) =>
                          Future.value(['AUDI', 'MG', 'TATA', 'BMW']),
                    ),
                  ),
                  Expanded(
                    child: EmrPickerFormField<String>(
                      binding: vehicleNotifier,
                      labelText: context.l10n.model,
                      itemTitleText: (model) => model,
                      items: (search) =>
                          Future.value(['AUDI', 'MG', 'TATA', 'BMW']),
                    ),
                  ),
                ],
              ),
              Row(
                spacing: Insets.gutter / 2,
                children: [
                  Expanded(
                    child: EmrTextFormField(
                      binding: vehicleNotifier,
                      labelText: context.l10n.year,
                      hintText: context.l10n.year,
                    ),
                  ),
                  Expanded(
                    child: EmrPickerFormField<String>(
                      binding: vehicleNotifier,
                      labelText: context.l10n.fuelType,
                      itemTitleText: (model) => model,
                      items: (search) =>
                          Future.value(['AUDI', 'MG', 'TATA', 'BMW']),
                    ),
                  ),
                ],
              ),
              Row(
                spacing: Insets.gutter / 2,
                children: [
                  Expanded(
                    child: EmrPickerFormField<String>(
                      binding: vehicleNotifier,
                      labelText: context.l10n.bodyType,
                      itemTitleText: (model) => model,
                      items: (search) =>
                          Future.value(['AUDI', 'MG', 'TATA', 'BMW']),
                    ),
                  ),
                  Expanded(
                    child: EmrPickerFormField<String>(
                      binding: vehicleNotifier,
                      labelText: context.l10n.transmission,
                      itemTitleText: (model) => model,
                      items: (search) =>
                          Future.value(['AUDI', 'MG', 'TATA', 'BMW']),
                    ),
                  ),
                ],
              ),
              Row(
                spacing: Insets.gutter / 2,
                children: [
                  Expanded(
                    child: EmrPickerFormField<String>(
                      binding: vehicleNotifier,
                      labelText: context.l10n.doors,
                      itemTitleText: (model) => model,
                      items: (search) =>
                          Future.value(['AUDI', 'MG', 'TATA', 'BMW']),
                    ),
                  ),
                  Expanded(
                    child: EmrPickerFormField<String>(
                      binding: vehicleNotifier,
                      labelText: context.l10n.variant,
                      itemTitleText: (model) => model,
                      items: (search) =>
                          Future.value(['AUDI', 'MG', 'TATA', 'BMW']),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: Insets.gutter * 3,
                child: FilledButton(
                  onPressed: () {},
                  child: Text(context.l10n.search),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                '${context.l10n.manualLookUp} ${context.l10n.results}',
                style: Theme.of(
                  context,
                ).textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.bold),
              ),
              Expanded(
                child: EmrCard(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        '${context.l10n.vinsFound} :',
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Expanded(
                        child: ListView(
                          children: [
                            ElvVehicleTileWidget(
                              vehicleType: 'Validate Vehicle Details: MINIBUS',
                              vehicleIdentifier: 'ajasdjansjd',
                              vehicleInfo: '2016 MG',
                              setBackgroundColor: true,
                              validVehicle: false,
                              onTap: () {},
                            ),
                            ElvVehicleTileWidget(
                              vehicleType: 'CAMPER',
                              vehicleIdentifier: 'ajasdjansjd',
                              vehicleInfo: '2016 MG',
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
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  //TODO: This code is usefull.
  // Widget get _emptyPage => Container(
  //   color: Theme.of(context).dividerColor,
  //   alignment: Alignment.center,
  //   child: Text(
  //     context.l10n.manualSearchEmptyPageMessage,
  //     textAlign: TextAlign.center,
  //     style: Theme.of(
  //       context,
  //     ).textTheme.labelLarge!.copyWith(fontStyle: FontStyle.italic),
  //   ),
  // );
}
