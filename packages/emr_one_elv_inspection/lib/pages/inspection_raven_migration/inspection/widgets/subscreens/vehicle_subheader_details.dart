import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_elv_core/models/enums/enums.dart';
import 'package:emr_one_elv_inspection/enums/enum.dart';
import 'package:emr_one_elv_inspection/models/raven_migration/vehicle_detail.dart';
import 'package:emr_one_elv_inspection/pages/inspection_raven_migration/inspection/controller/inspection_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class VehicleSubHeaderDetailsPrice extends StatelessWidget {
  const VehicleSubHeaderDetailsPrice({
    required this.vehicleDetail,
    required this.quoteSource,
    this.deviceType = DeviceTypeEnum.desktop,
    super.key,
  });

  final VehicleDetail vehicleDetail;
  final QuoteSourceEnum quoteSource;
  final DeviceTypeEnum deviceType;

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<InspectionController>(context);
    final vehicleIdentifierLabel = vehicleDetail.vrn.isNotEmpty
        ? context.l10n.vrn.toUpperCase()
        : context.l10n.vin.toUpperCase();

    final textTheme = deviceType == DeviceTypeEnum.mobile
        ? Theme.of(context).primaryTextTheme.bodySmall!.copyWith(
            color: Theme.of(context).colorScheme.onPrimary.withAlpha(160),
          )
        : Theme.of(context).primaryTextTheme.bodyLarge;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ValueListenableBuilder(
          valueListenable: controller.state.hideVehicleIdentifier,
          builder: (context, value, child) {
            return SizedBox(
              child: Text.rich(
                overflow: TextOverflow.clip,
                softWrap: true,
                style: textTheme,
                TextSpan(
                  children: [
                    TextSpan(
                      text: '$vehicleIdentifierLabel: ',
                      style: textTheme!.copyWith(fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                      text: value ? '*****' : vehicleDetail.vehicleIdentifier,
                    ),
                    TextSpan(
                      text: ', ${context.l10n.engineSize}: ',
                      style: textTheme.copyWith(fontWeight: FontWeight.bold),
                    ),
                    TextSpan(text: vehicleDetail.engineSize.toString()),
                    TextSpan(
                      text: ', ${context.l10n.fuelType}: ',
                      style: textTheme.copyWith(fontWeight: FontWeight.bold),
                    ),
                    TextSpan(text: vehicleDetail.fuelType),
                  ],
                ),
              ),
            );
          },
        ),
        Text.rich(
          style: textTheme,
          TextSpan(
            children: [
              TextSpan(
                text: '${context.l10n.quoteSource}: ',
                style: textTheme!.copyWith(fontWeight: FontWeight.bold),
              ),
              TextSpan(text: quoteSource.toReadableString(context)),
            ],
          ),
        ),
      ],
    );
  }
}
