import 'package:emr_one_core/config/app_config.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_yard_logistics/controllers/existing_pallet.dart';
import 'package:emr_one_yard_logistics/helpers/lot_helpers.dart';
import 'package:emr_one_yard_logistics/services/yard_logistics_service.dart';
import 'package:emr_one_yard_logistics/widgets/widgets.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:signals/signals_flutter.dart';

class PalletDetails extends StatelessWidget {
  const PalletDetails({required this.controller, super.key});

  final ExistingPalletController controller;

  @override
  Widget build(BuildContext context) {
    final service = Provider.of<YardLogisticsService>(context, listen: false);
    final appConfig = Provider.of<AppConfig>(context, listen: false);

    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.all(Insets.gutter),
          child: Column(
            children: [
              FormHeadingRow(
                headings: [
                  'Code',
                  '${controller.pallet.value.code}/${controller.pallet.value.yardId}',
                ],
              ),
              FormRow(
                padding: const EdgeInsets.only(bottom: Insets.gutter / 8),
                children: [
                  Text(
                    'Gross Weight',
                    style: EmrOneConstants.kTinyHeadingTextStyle,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          controller.totalPalletWeight
                              .watch(context)
                              .convertWeight(
                                service.uomForView,
                              )
                              .toWeightString(),
                          style: EmrOneConstants.kTinyHeadingTextStyle
                              .copyWith(overflow: TextOverflow.ellipsis),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              FormRow(
                padding: const EdgeInsets.only(bottom: Insets.gutter / 8),
                children: [
                  Text(
                    'Tare Weight',
                    style: EmrOneConstants.kTinyHeadingTextStyle,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          controller.pallet.value.tareWeightUom
                              .convertWeight(
                                service.uomForView,
                              )
                              .toWeightString(),
                          style: EmrOneConstants.kTinyHeadingTextStyle
                              .copyWith(overflow: TextOverflow.ellipsis),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              FormRow(
                padding: const EdgeInsets.only(bottom: 10),
                children: [
                  Text(
                    'Net Weight',
                    style: EmrOneConstants.kTinyHeadingTextStyle,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          LotHelpers.calculateNetWeight(
                            controller.totalPalletWeight.watch(context),
                            controller.pallet.value.tareWeightUom,
                            service.uomForView,
                          ),
                          style: EmrOneConstants.kTinyHeadingTextStyle
                              .copyWith(overflow: TextOverflow.ellipsis),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const FormHeadingRow(
                headings: [
                  'Contents',
                ],
              ),
              SizedBox(
                height: 325,
                child: SingleChildScrollView(
                  child: ListView.builder(
                    shrinkWrap: true,
                    reverse: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: controller.scannedLotCodeList.value.length,
                    itemBuilder: (context, index) {
                      return PaletteDetailsLotRow(
                        service: service,
                        lotCode: controller.scannedLotCodeList.value[index],
                        controller: controller,
                        lotInfo: controller
                                    .pallet.value.lotDetails.isNotEmpty &&
                                controller.pallet.value.lotDetails.any(
                                  (x) =>
                                      x.code ==
                                      controller
                                          .scannedLotCodeList.value[index],
                                )
                            ? controller.pallet.value.lotDetails.firstWhere(
                                (x) =>
                                    x.code ==
                                    controller.scannedLotCodeList.value[index],
                              )
                            : null,
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
        if (!appConfig.isWeb &&
            controller.showSpinnerWhenRemovingLots.watch(context)) ...[
          const Opacity(
            opacity: 0.8,
            child: ModalBarrier(
              dismissible: false,
              color: Colors.black,
            ),
          ),
          const Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircularProgressIndicator(
                  color: Colors.white,
                ),
                SizedBox(height: Insets.gutter),
                Text(
                  'Removing Lot...',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ],
      ],
    );
  }
}
