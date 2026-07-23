import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_yard_logistics/constants.dart';
import 'package:emr_one_yard_logistics/controllers/existing_packinglist_controller.dart';
import 'package:emr_one_yard_logistics/models/models.dart';
import 'package:emr_one_yard_logistics/services/yard_logistics_helpers.dart';
import 'package:emr_one_yard_logistics/services/yard_logistics_service.dart';
import 'package:emr_one_yard_logistics/widgets/lot_card_status_icons.dart';
import 'package:emr_one_yard_logistics/widgets/minitag.dart';
import 'package:emr_one_yard_logistics/yl_api_response.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PackingListDetailsLotPalletRow extends StatefulWidget {
  const PackingListDetailsLotPalletRow({
    required this.service,
    required this.itemCode,
    required this.controller,
    required this.lotInfo,
    required this.palletInfo,
    required this.itemType,
    super.key,
  });

  final YardLogisticsService service;
  final String itemCode;
  final ExistingPackingListController controller;
  final Lot? lotInfo;
  final Pallet? palletInfo;
  final YardLogisticsCodeType itemType;

  @override
  State<PackingListDetailsLotPalletRow> createState() =>
      _PackingListDetailsLotPalletRowState();
}

class _PackingListDetailsLotPalletRowState
    extends State<PackingListDetailsLotPalletRow> {
  Future<YlApiResponse<Lot?>>? fetchLot;
  Future<YlApiResponse<Pallet?>>? fetchPallet;
  late bool rebuildList;

  final deleteIcon = Icon(
    Icons.delete_outlined,
    color: Colors.red[700],
  );

  @override
  void initState() {
    super.initState();
    rebuildList = false;

    switch (widget.itemType) {
      case YardLogisticsCodeType.lot:
        {
          if (widget.lotInfo == null) {
            fetchLot = validateLotCodeAndUpdatePackingList();
          }
        }
      case YardLogisticsCodeType.pallet:
        {
          if (widget.palletInfo == null) {
            fetchPallet = validatePalletCodeAndUpdatePackingList();
          }
        }
      case YardLogisticsCodeType.unknown:
        {}
    }
  }

  @override
  Widget build(BuildContext context) {
    final compositionAcronyms =
        Provider.of<List<LotCompositionAcronym>>(context);

    switch (widget.itemType) {
      case YardLogisticsCodeType.lot:
        {
          if (widget.lotInfo != null) {
            return buildLotDetailsRow(widget.lotInfo!, compositionAcronyms);
          } else {
            return FutureBuilder<YlApiResponse<Lot?>>(
              future: rebuildList
                  ? validateLotCodeAndUpdatePackingList()
                  : fetchLot,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  if (snapshot.hasData && snapshot.data!.data != null) {
                    final lot = snapshot.data!.data;
                    if (lot == null) {
                      return Text(context.l10n.lotNotFound);
                    }

                    return buildLotDetailsRow(lot, compositionAcronyms);
                  } else if (snapshot.hasError || !snapshot.data!.success) {
                    return buildErrorDetailsRow(snapshot.data!.message);
                  }
                }

                return showWaitingSpinner();
              },
            );
          }
        }
      case YardLogisticsCodeType.pallet:
        {
          if (widget.palletInfo != null) {
            return buildPalletDetailsRow(widget.palletInfo!);
          } else {
            return FutureBuilder<YlApiResponse<Pallet?>>(
              future: rebuildList
                  ? validatePalletCodeAndUpdatePackingList()
                  : fetchPallet,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  if (snapshot.hasData && snapshot.data!.data != null) {
                    final pallet = snapshot.data!.data;
                    if (pallet == null) {
                      return Text(context.l10n.lotNotFound);
                    }

                    return buildPalletDetailsRow(pallet);
                  } else if (snapshot.hasError || !snapshot.data!.success) {
                    return buildErrorDetailsRow(snapshot.data!.message);
                  }
                }

                return showWaitingSpinner();
              },
            );
          }
        }
      case YardLogisticsCodeType.unknown:
        return const Text('Cannot add this item as its unknown');
    }
  }

  Widget buildLotDetailsRow(
    Lot lot,
    List<LotCompositionAcronym> compositionAcronyms,
  ) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          flex: 3,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '${lot.code}/${lot.yardId}',
                overflow: TextOverflow.ellipsis,
              ),
              if (lot.grossWeightUom != null)
                MiniTag(
                  label: lot.grossWeightUom!
                      .convertWeight(widget.service.uomForView)
                      .toWeightString(),
                ),
            ],
          ),
        ),
        Expanded(
          flex: 2,
          child: LotCardStatusIcons(
            lot: lot,
            direction: Axis.horizontal,
            mainAxisAlignment: MainAxisAlignment.end,
            compositionAcronyms: compositionAcronyms,
          ),
        ),
        buildDeleteIconDetails(lot.code, lot.id),
      ],
    );
  }

  Widget buildPalletDetailsRow(Pallet pallet) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          flex: 3,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '${pallet.code}/${pallet.yardId}',
                overflow: TextOverflow.ellipsis,
              ),
              MiniTag(
                label: pallet.grossWeightUom
                    .convertWeight(widget.service.uomForView)
                    .toWeightString(),
              ),
            ],
          ),
        ),
        MiniTag(
          label: 'Lots: ${pallet.lotIds.length}',
          colour: Colors.lightGreen,
        ),
        buildDeleteIconDetails(pallet.code, pallet.id),
      ],
    );
  }

  Widget buildErrorDetailsRow(String message) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          flex: 3,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(widget.itemCode),
              Text(
                message,
                style: EmrOneConstants.kTinyHeadingTextStyle
                    .copyWith(overflow: TextOverflow.ellipsis),
              ),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(8),
          child: YlConstants.warningIcon,
        ),
      ],
    );
  }

  Widget showWaitingSpinner() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(widget.itemCode),
            Text(
              '${context.l10n.loading}...',
              style: const TextStyle(fontSize: 12),
            ),
          ],
        ),
        ConstrainedBox(
          constraints: BoxConstraints.tight(const Size(100, 16)),
          child: const Center(child: LinearProgressIndicator()),
        ),
      ],
    );
  }

  Widget buildDeleteIconDetails(String code, String id) {
    return widget.controller.currentPackingListState.value ==
            PackingListState.inProgress
        ? Tooltip(
            message: 'Click to Delete',
            child: IconButton(
              alignment: Alignment.topRight,
              padding: EdgeInsets.zero,
              iconSize: 36,
              onPressed: () async {
                await EmrDialog.noYes(
                  context,
                  titleText:
                      'Are you sure you want to remove item: $code/${widget.controller.packinglist.value.yardId}',
                  onYes: () async {
                    await removeItemsFromPackingList(code, id);
                  },
                );
              },
              icon: deleteIcon,
            ),
          )
        : const SizedBox(height: 48);
  }

  Future<YlApiResponse<Lot?>> validateLotCodeAndUpdatePackingList() async {
    final lotDetailsResponse =
        await widget.service.validateLotAvailabilityByCode(widget.itemCode);

    if (lotDetailsResponse.success && lotDetailsResponse.data != null) {
      rebuildList = false;

      widget.controller.packinglist.value.lotIds
          .add(lotDetailsResponse.data!.id);

      final packingListResponse =
          await updatePackingList(lotDetailsResponse.data!.grossWeightUom);

      if (!packingListResponse.success) {
        return YlApiResponse(
          success: false,
          message: packingListResponse.message,
        );
      }

      widget.controller.packinglist.value.lotDetails
          .add(lotDetailsResponse.data!);

      if (packingListResponse.data != null &&
          packingListResponse.data!.grossWeightUom != null) {
        widget.controller.totalPackinglistWeight.value =
            packingListResponse.data!.grossWeightUom!;
      }
    } else {
      // This is at a point where lot either doesn't exist or already a part of
      //a pallet.
      // So for the first time, user will see the lot with an error sign.
      //Next time when user loads, it will be removed.
      widget.controller.scannedItemCodeList.value.remove(widget.itemCode);

      // Added this so as to rebuild the list at an index where error came and
      //not to rely on the response already received
      rebuildList = true;
    }

    return lotDetailsResponse;
  }

  Future<YlApiResponse<PackingList?>> updatePackingList(
    UomValue? itemWeight,
  ) async {
    final packingListResponse = await widget.service
        .updatePackingList(widget.controller.packinglist.value);

    if (packingListResponse.success && packingListResponse.data != null) {
      widget.controller.currentPackingListState.value =
          packingListResponse.data!.state;
    }

    return packingListResponse;
  }

  Future<YlApiResponse<Pallet?>>
      validatePalletCodeAndUpdatePackingList() async {
    final palletDetailsResponse =
        await widget.service.validatePalletAvailabilityByCode(widget.itemCode);

    if (palletDetailsResponse.success && palletDetailsResponse.data != null) {
      rebuildList = false;

      widget.controller.packinglist.value.palletIds
          .add(palletDetailsResponse.data!.id);

      final packingListResponse =
          await updatePackingList(palletDetailsResponse.data!.grossWeightUom);

      if (!packingListResponse.success) {
        return YlApiResponse(
          success: false,
          message: packingListResponse.message,
        );
      }

      widget.controller.packinglist.value.palletDetails
          .add(palletDetailsResponse.data!);

      if (packingListResponse.data != null &&
          packingListResponse.data!.grossWeightUom != null) {
        widget.controller.totalPackinglistWeight.value =
            packingListResponse.data!.grossWeightUom!;
      }
    } else {
      // This is at a point where lot either doesn't exist or already a part of
      //a pallet.
      // So for the first time, user will see the lot with an error sign.
      //Next time when user loads, it will be removed.
      widget.controller.scannedItemCodeList.value.remove(widget.itemCode);

      // Added this so as to rebuild the list at an index where error came and
      //not to rely on the response already received
      rebuildList = true;
    }

    return palletDetailsResponse;
  }

  Future<void> removeItemsFromPackingList(String code, String id) async {
    var doesIdExist = false;
    final removeItemPayload = RemoveItemsFromPackingList(
      packingListId: widget.controller.packinglist.value.id,
    );

    switch (widget.itemType) {
      case YardLogisticsCodeType.lot:
        {
          doesIdExist = widget.controller.packinglist.value.lotIds.contains(id);
          removeItemPayload.lotId = id;
          break;
        }
      case YardLogisticsCodeType.pallet:
        {
          doesIdExist =
              widget.controller.packinglist.value.palletIds.contains(id);
          removeItemPayload.palletId = id;

          break;
        }
      case YardLogisticsCodeType.unknown:
        {}
    }
    if (doesIdExist &&
        widget.controller.scannedItemCodeList.value.contains(code)) {
      widget.controller.spinnerForPackingList.value =
          SpinnerForPackingListOperations.removingItemsFromPackingList;

      final packingListResponse =
          await widget.service.removeItemsFromPackingList(
        removeItemPayload,
      );

      if (packingListResponse.success) {
        widget.controller.scannedItemCodeList.value.remove(code);
        widget.controller.packinglist.value = packingListResponse.data!;
        widget.controller.currentPackingListState.value =
            packingListResponse.data!.state;

        if (packingListResponse.data!.grossWeightUom != null) {
          widget.controller.totalPackinglistWeight.value =
              packingListResponse.data!.grossWeightUom!;
        }
      }
      widget.controller.spinnerForPackingList.value =
          SpinnerForPackingListOperations.stopSpinner;
    }
  }
}
