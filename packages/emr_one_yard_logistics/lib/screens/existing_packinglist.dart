import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_yard_logistics/controllers/existing_packinglist_controller.dart';
import 'package:emr_one_yard_logistics/models/models.dart';
import 'package:emr_one_yard_logistics/services/yard_logistics_helpers.dart';
import 'package:emr_one_yard_logistics/services/yard_logistics_service.dart';
import 'package:emr_one_yard_logistics/widgets/packinglist_details.dart';
import 'package:emr_one_yard_logistics/widgets/widgets.dart';
import 'package:emr_one_yard_logistics/widgets/wrapper_error.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:signals/signals_flutter.dart';

class ExistingPackingList extends StatelessWidget {
  const ExistingPackingList({required this.controller, super.key});

  final ExistingPackingListController controller;

  @override
  Widget build(BuildContext context) {
    final service = Provider.of<YardLogisticsService>(context, listen: false);

    return FutureBuilder(
      future: service.fetchLotCompositionAcronymsFromCache(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  width: 64,
                  height: 64,
                  child: CircularProgressIndicator(),
                ),
                const SizedBox(height: Insets.gutter),
                Text(context.l10n.loading),
              ],
            ),
          );
        }

        if (snapshot.hasError) {
          return WrapperError(message: snapshot.error.toString());
        }

        if (snapshot.data == null || snapshot.data!.isEmpty) {
          return const WrapperError(
            message: 'No Lot Acronyms found',
          );
        }

        return _showExistingPackingList(
          context,
          service,
          controller,
          snapshot.data!,
        );
      },
    );
  }

  Widget _showExistingPackingList(
    BuildContext context,
    YardLogisticsService service,
    ExistingPackingListController controller,
    List<LotCompositionAcronym> compositionAcronyms,
  ) {
    var messagePrompt = '';

    return Stack(
      children: [
        Column(
          children: [
            Expanded(
              child: ColoredBox(
                color: Colors.black,
                child: Column(
                  children: [
                    Expanded(
                      flex: 2,
                      child: ClipRRect(
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(Insets.gutter),
                          bottomRight: Radius.circular(Insets.gutter),
                        ),
                        child: ColoredBox(
                          color: Theme.of(context).colorScheme.surface,
                          child: ValueListenableBuilder(
                            valueListenable: controller.scannedItemCodeList,
                            builder: (context, scannedLotCodeList, _) =>
                                Provider<List<LotCompositionAcronym>>.value(
                              value: compositionAcronyms,
                              builder: (context, child) => PackingListDetails(
                                controller: controller,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: Insets.gutter / 2,
                      child: Container(color: Colors.black),
                    ),
                    Expanded(
                      child: ClipRRect(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(Insets.gutter),
                          topRight: Radius.circular(Insets.gutter),
                        ),
                        child: ColoredBox(
                          color: Theme.of(context).colorScheme.surface,
                          child: Column(
                            children: [
                              SizedBox(
                                height: 150,
                                child: YlActionPanel(
                                  actions: [
                                    if (controller.isPackingListInProgress() ||
                                        controller.isPackingListEmpty())
                                      (
                                        'Add Lot/Pallet',
                                        Icons.add,
                                        () async {
                                          await ScanHelper.startInlineCodeScan(
                                            context,
                                            title: context.l10n.scanAnItem,
                                            blurFilter: false,
                                            barrierColor: false,
                                            scannerHeight: 5,
                                            onNewBarCode:
                                                (String? barcode) async {
                                              if (barcode != null) {
                                                if (context.mounted &&
                                                    YardLogisticsHelpers
                                                            .codeType(
                                                          barcode,
                                                        ) !=
                                                        YardLogisticsCodeType
                                                            .lot &&
                                                    YardLogisticsHelpers
                                                            .codeType(
                                                          barcode,
                                                        ) !=
                                                        YardLogisticsCodeType
                                                            .pallet) {
                                                  await EmrDialog.ok(
                                                    context,
                                                    titleText: context
                                                        .l10n.invalidQrCode,
                                                  );

                                                  return;
                                                }

                                                if (controller
                                                    .scannedItemCodeList.value
                                                    .contains(barcode)) {
                                                  await EmrDialog.ok(
                                                    context,
                                                    titleText:
                                                        'Item already added',
                                                  );
                                                } else {
                                                  controller
                                                      // ignore: lines_longer_than_80_chars
                                                      .addItemsToScannedPackingList(
                                                    barcode,
                                                  );
                                                }
                                              }
                                            },
                                          );
                                        },
                                        null,
                                        null
                                      ),
                                    if (controller.currentPackingListState
                                            .watch(context) ==
                                        PackingListState.inProgress)
                                      (
                                        'Mark as Packed',
                                        Icons.check_circle_rounded,
                                        () async {
                                          controller
                                                  .spinnerForPackingList.value =
                                              SpinnerForPackingListOperations
                                                  .savingPackingListState;
                                          final response =
                                              await service.confirmPackingList(
                                            ConfirmPackingList(
                                              id: controller
                                                  .packinglist.value.id,
                                              packingListState:
                                                  PackingListState.packed,
                                            ),
                                          );

                                          if (response.success) {
                                            messagePrompt =
                                                'Packing List has been Packed';
                                            controller.currentPackingListState
                                                .value = response.data!.state;

                                            controller.packinglist.value =
                                                response.data!;
                                          } else {
                                            messagePrompt = response.message;
                                          }

                                          if (context.mounted) {
                                            await EmrDialog.ok(
                                              context,
                                              titleText: messagePrompt,
                                            );

                                            controller.spinnerForPackingList
                                                    .value =
                                                SpinnerForPackingListOperations
                                                    .stopSpinner;
                                          }
                                        },
                                        null,
                                        null
                                      ),
                                    if (controller.isPackingListPacked())
                                      (
                                        'Un-Pack Packing List',
                                        Icons.open_in_browser_sharp,
                                        () async {
                                          controller
                                                  .spinnerForPackingList.value =
                                              SpinnerForPackingListOperations
                                                  .savingPackingListState;
                                          final response =
                                              await service.confirmPackingList(
                                            ConfirmPackingList(
                                              id: controller
                                                  .packinglist.value.id,
                                              packingListState:
                                                  PackingListState.inProgress,
                                            ),
                                          );

                                          if (response.success) {
                                            messagePrompt =
                                                // ignore: lines_longer_than_80_chars
                                                'Packing List has been Un-Packed';
                                            controller.currentPackingListState
                                                .value = response.data!.state;
                                          } else {
                                            messagePrompt = response.message;
                                          }

                                          if (context.mounted) {
                                            await EmrDialog.ok(
                                              context,
                                              titleText: messagePrompt,
                                            );

                                            controller.spinnerForPackingList
                                                    .value =
                                                SpinnerForPackingListOperations
                                                    .stopSpinner;
                                          }
                                        },
                                        null,
                                        null
                                      ),
                                  ],
                                ),
                              ),
                              if (controller.isPackingListPacked())
                                Text(
                                  'This Packing List has been Packed.',
                                  style: EmrOneConstants
                                      .kSmallestHeadingTextStyle
                                      .copyWith(
                                    color:
                                        Theme.of(context).colorScheme.onSurface,
                                  ),
                                ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        if (controller.spinnerForPackingList.watch(context) ==
            SpinnerForPackingListOperations.savingPackingListState) ...[
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
                  'Completing ...',
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
