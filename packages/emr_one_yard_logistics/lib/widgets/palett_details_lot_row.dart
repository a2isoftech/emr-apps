import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_yard_logistics/constants.dart';
import 'package:emr_one_yard_logistics/controllers/existing_pallet.dart';
import 'package:emr_one_yard_logistics/models/models.dart';
import 'package:emr_one_yard_logistics/services/yard_logistics_service.dart';
import 'package:emr_one_yard_logistics/widgets/lot_card_status_icons.dart';
import 'package:emr_one_yard_logistics/widgets/minitag.dart';
import 'package:emr_one_yard_logistics/yl_api_response.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PaletteDetailsLotRow extends StatefulWidget {
  const PaletteDetailsLotRow({
    required this.service,
    required this.lotCode,
    required this.controller,
    required this.lotInfo,
    super.key,
  });

  final YardLogisticsService service;
  final String lotCode;
  final ExistingPalletController controller;
  final Lot? lotInfo;

  @override
  State<PaletteDetailsLotRow> createState() => _PaletteDetailsLotRowState();
}

class _PaletteDetailsLotRowState extends State<PaletteDetailsLotRow> {
  late Future<YlApiResponse<Lot?>> fetchLot;
  late bool rebuildList;

  final deleteIcon = Icon(
    Icons.delete_outlined,
    color: Colors.red[700],
  );

  @override
  void initState() {
    super.initState();
    rebuildList = false;
    if (widget.lotInfo == null) {
      fetchLot = validateLotCodeAndUpdatePallet();
    }
  }

  @override
  Widget build(BuildContext context) {
    final compositionAcronyms =
        Provider.of<List<LotCompositionAcronym>>(context);

    if (widget.lotInfo != null) {
      return buildLotDetailsRow(widget.lotInfo!, compositionAcronyms);
    } else {
      return FutureBuilder<YlApiResponse<Lot?>>(
        future: rebuildList ? validateLotCodeAndUpdatePallet() : fetchLot,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasData && snapshot.data!.data != null) {
              final lot = snapshot.data!.data;
              if (lot == null) {
                return Text(context.l10n.lotNotFound);
              }

              return buildLotDetailsRow(lot, compositionAcronyms);
            } else if (snapshot.hasError || !snapshot.data!.success) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(widget.lotCode),
                        Text(
                          snapshot.data!.message,
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
          }

          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(widget.lotCode),
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
        },
      );
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
        Tooltip(
          message: 'Click to Delete',
          child: IconButton(
            alignment: Alignment.topRight,
            padding: EdgeInsets.zero,
            iconSize: 36,
            onPressed: () async {
              await EmrDialog.noYes(
                context,
                titleText:
                    'Are you sure you want to remove the lot: ${lot.code}/${lot.yardId}',
                onYes: () async {
                  await removeLotFromPallet(lot);
                },
              );
            },
            icon: deleteIcon,
          ),
        ),
      ],
    );
  }

  Future<YlApiResponse<Lot?>> validateLotCodeAndUpdatePallet() async {
    final lotDetailsResponse =
        await widget.service.validateLotAvailabilityByCode(widget.lotCode);

    if (lotDetailsResponse.success && lotDetailsResponse.data != null) {
      rebuildList = false;

      widget.controller.pallet.value.lotIds.add(lotDetailsResponse.data!.id);

      final palletResponse =
          await widget.service.updatePallet(widget.controller.pallet.value);

      if (!palletResponse.success ||
          palletResponse.data == null ||
          palletResponse.data!.$2 == null) {
        return YlApiResponse(
          success: false,
          message: palletResponse.message,
        );
      }

      widget.controller.pallet.value.lotDetails.add(lotDetailsResponse.data!);

      widget.controller.totalPalletWeight.value =
          palletResponse.data!.$2!.grossWeightUom;
    } else {
      // This is at a point where lot either doesn't exist or already
      // a part of a pallet.
      // So for the first time, user will see the lot with an error sign.
      //Next time when user loads, it will be removed.
      widget.controller.scannedLotCodeList.value.remove(widget.lotCode);

      // Added this so as to rebuild the list at an index where error came and
      //not to rely on the response already received
      rebuildList = true;
    }

    return lotDetailsResponse;
  }

  Future<void> removeLotFromPallet(Lot lot) async {
    if (widget.controller.pallet.value.lotIds.contains(lot.id) &&
        widget.controller.scannedLotCodeList.value.contains(lot.code)) {
      widget.controller.pallet.value.lotIds.remove(lot.id);
      widget.controller.showSpinnerWhenRemovingLots.value = true;

      final palletResponse = await widget.service.removeLotFromPallet(
        RemoveLotFromPallet(
          palletCode: widget.controller.pallet.value.code,
          lotId: lot.id,
        ),
      );
      if (palletResponse.success && palletResponse.data != null) {
        widget.controller.scannedLotCodeList.value.remove(lot.code);
        widget.controller.pallet.value = palletResponse.data!;
        widget.controller.totalPalletWeight.value =
            palletResponse.data!.grossWeightUom;
      }
      widget.controller.showSpinnerWhenRemovingLots.value = false;
    }
  }
}
