import 'package:emr_one_core/config/app_config.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_yard_logistics/controllers/existing_packinglist_controller.dart';
import 'package:emr_one_yard_logistics/models/models.dart';
import 'package:emr_one_yard_logistics/services/yard_logistics_helpers.dart';
import 'package:emr_one_yard_logistics/services/yard_logistics_service.dart';
import 'package:emr_one_yard_logistics/widgets/packinglist_details_lot_pallet_row.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:signals/signals_flutter.dart';

class PackingListDetails extends StatelessWidget {
  const PackingListDetails({required this.controller, super.key});

  final ExistingPackingListController controller;

  @override
  Widget build(BuildContext context) {
    final service = Provider.of<YardLogisticsService>(context, listen: false);
    final appConfig = Provider.of<AppConfig>(context, listen: false);

    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.all(Insets.gutter),
          child: SingleChildScrollView(
            child: Column(
              children: [
                FormHeadingRow(
                  headings: [
                    'Packing List Ref',
                    '${controller.packinglist.value.packingListRef}/${controller.packinglist.value.yardId}',
                  ],
                ),
                FormRow(
                  padding: const EdgeInsets.only(bottom: 2),
                  children: [
                    Text(
                      'Trade 2 ID',
                      style: EmrOneConstants.kTinyHeadingTextStyle,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            '${controller.packinglist.value.trade2Id ?? '-'}',
                            style: EmrOneConstants.kTinyHeadingTextStyle
                                .copyWith(overflow: TextOverflow.ellipsis),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                FormRow(
                  padding: const EdgeInsets.only(bottom: 2),
                  children: [
                    Text(
                      'Party Account',
                      style: EmrOneConstants.kTinyHeadingTextStyle,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            controller.packinglist.value.accountCode,
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
                      'Gross Weight',
                      style: EmrOneConstants.kTinyHeadingTextStyle,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            controller.totalPackinglistWeight
                                .watch(context)
                                .convertWeight(service.uomForView)
                                .toWeightString(),
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
                ListView.builder(
                  shrinkWrap: true,
                  reverse: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: controller.scannedItemCodeList.value.length,
                  itemBuilder: (context, index) {
                    return PackingListDetailsLotPalletRow(
                      service: service,
                      itemCode: controller.scannedItemCodeList.value[index],
                      controller: controller,
                      lotInfo: controller
                                  .packinglist.value.lotDetails.isNotEmpty &&
                              controller.packinglist.value.lotDetails.any(
                                (x) =>
                                    x.code ==
                                    controller.scannedItemCodeList.value[index],
                              )
                          ? controller.packinglist.value.lotDetails.firstWhere(
                              (x) =>
                                  x.code ==
                                  controller.scannedItemCodeList.value[index],
                            )
                          : null,
                      palletInfo: controller
                                  .packinglist.value.palletDetails.isNotEmpty &&
                              controller.packinglist.value.palletDetails.any(
                                (x) =>
                                    x.code ==
                                    controller.scannedItemCodeList.value[index],
                              )
                          ? controller.packinglist.value.palletDetails
                              .firstWhere(
                              (x) =>
                                  x.code ==
                                  controller.scannedItemCodeList.value[index],
                            )
                          : null,
                      itemType: YardLogisticsHelpers.codeType(
                        controller.scannedItemCodeList.value[index],
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
        if (!appConfig.isWeb &&
            controller.spinnerForPackingList.watch(context) ==
                SpinnerForPackingListOperations
                    .removingItemsFromPackingList) ...[
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
                  'Removing Item...',
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
