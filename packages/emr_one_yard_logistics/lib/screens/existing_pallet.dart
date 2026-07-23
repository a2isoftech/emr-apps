import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_yard_logistics/controllers/existing_pallet.dart';
import 'package:emr_one_yard_logistics/models/lot_composition_acronym.dart';
import 'package:emr_one_yard_logistics/services/yard_logistics_helpers.dart';
import 'package:emr_one_yard_logistics/services/yard_logistics_service.dart';
import 'package:emr_one_yard_logistics/widgets/widgets.dart';
import 'package:emr_one_yard_logistics/widgets/wrapper_error.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ExistingPallet extends StatelessWidget {
  const ExistingPallet({required this.controller, super.key});

  final ExistingPalletController controller;

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

        return _showExistingPallet(
          context,
          snapshot.data!,
        );
      },
    );
  }

  Widget _showExistingPallet(
    BuildContext context,
    List<LotCompositionAcronym> compositionAcronyms,
  ) {
    return Column(
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
                        valueListenable: controller.scannedLotCodeList,
                        builder: (context, scannedLotCodeList, _) =>
                            Provider<List<LotCompositionAcronym>>.value(
                          value: compositionAcronyms,
                          builder: (context, child) => PalletDetails(
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
                SizedBox(
                  height: 177,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(Insets.gutter),
                      topRight: Radius.circular(Insets.gutter),
                    ),
                    child: ColoredBox(
                      color: Theme.of(context).colorScheme.surface,
                      child: YlActionPanel(
                        actions: [
                          (
                            context.l10n.addLot,
                            Icons.add,
                            () async {
                              await ScanHelper.startInlineCodeScan(
                                context,
                                title: context.l10n.scanAnItem,
                                blurFilter: false,
                                barrierColor: false,
                                scannerHeight: 5,
                                onNewBarCode: (String? barcode) async {
                                  if (barcode != null) {
                                    if (context.mounted &&
                                        YardLogisticsHelpers.codeType(
                                              barcode,
                                            ) !=
                                            YardLogisticsCodeType.lot) {
                                      await EmrDialog.ok(
                                        context,
                                        titleText: context.l10n.invalidQrCode,
                                      );

                                      return;
                                    }

                                    if (controller.scannedLotCodeList.value
                                        .contains(barcode)) {
                                      await EmrDialog.ok(
                                        context,
                                        titleText: 'Lot already added',
                                      );
                                    } else {
                                      controller
                                          .addLotToScannedLotList(barcode);
                                    }
                                  }
                                },
                              );
                            },
                            null,
                            null
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
    );
  }
}
