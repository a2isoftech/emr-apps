import 'package:emr_one_core/extensions/build_context_extensions.dart';
import 'package:emr_one_elv_core/models/elv_territory_enum.dart';
import 'package:emr_one_elv_inspection/enums/enum.dart';
import 'package:emr_one_elv_inspection/models/model.dart';
import 'package:emr_one_elv_inspection/pages/inspection/controller/controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class VehicleSubHeaderDetailsPrice extends StatelessWidget {
  const VehicleSubHeaderDetailsPrice({
    this.vehicle,
    this.quoteStatus,
    this.isCustomerInformationVisible = false,
    this.deviceType = DeviceTypeEnum.desktop,
    super.key,
  });

  final ActiveQuoteModel? vehicle;
  final String? quoteStatus;
  final bool isCustomerInformationVisible;
  final DeviceTypeEnum deviceType;

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<InspectionScreenController>(context);
    final vehicleIdentifier = controller.activeTerritory == ElvTerritory.uk
        ? vehicle?.vehicleDescription.vehicleReg
        : vehicle?.vehicleDescription.vin;
    final vehicleIdentifierText = controller.activeTerritory == ElvTerritory.uk
        ? context.l10n.vrn.toUpperCase()
        : context.l10n.vin.toUpperCase();

    final themeContext = Theme.of(context);
    final textTheme = deviceType == DeviceTypeEnum.mobile
        ? themeContext.primaryTextTheme.bodySmall!.copyWith(
            color: Theme.of(context).colorScheme.onPrimary.withAlpha(160),
          )
        : themeContext.primaryTextTheme.bodyLarge;

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
                      text: '$vehicleIdentifierText: ',
                      style: textTheme!.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: value ? '*****' : vehicleIdentifier,
                    ),
                    TextSpan(
                      text: ', ${context.l10n.engineSize}: ',
                      style: textTheme.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: '${vehicle?.vehicleDescription.engineSize ?? 0}',
                    ),
                    TextSpan(
                      text: ', ${context.l10n.fuelType}: ',
                      style: textTheme.copyWith(fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                      text: vehicle?.vehicleDescription.fuelType,
                    ),
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
              if ((quoteStatus ?? '').isNotEmpty) ...[
                TextSpan(
                  text: '${context.l10n.quoteSource}: ',
                  style: textTheme!.copyWith(fontWeight: FontWeight.bold),
                ),
                TextSpan(
                  text: quoteStatus ?? '',
                ),
              ],
            ],
          ),
        ),
        if (isCustomerInformationVisible) ...[
          Text.rich(
            style: textTheme,
            TextSpan(
              children: [
                TextSpan(
                  text: context.l10n.customerInformationProvided,
                  style: textTheme!.copyWith(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Text.rich(
            style: textTheme,
            TextSpan(
              children: [
                TextSpan(
                  text: context.l10n.customerInformationProvidedMessage,
                ),
              ],
            ),
          ),
        ],
      ],
    );
  }
}
