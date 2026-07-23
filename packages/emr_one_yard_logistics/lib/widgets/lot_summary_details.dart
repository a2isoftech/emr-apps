import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_yard_logistics/constants.dart';
import 'package:emr_one_yard_logistics/models/lot.dart';
import 'package:emr_one_yard_logistics/models/lot_composition_acronym.dart';
import 'package:emr_one_yard_logistics/widgets/lot_card_status_icons.dart';
import 'package:emr_one_yard_logistics/widgets/minitag.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LotSummaryDetails extends StatelessWidget {
  const LotSummaryDetails({
    required this.lot,
    this.navigateToLot = true,
    super.key,
  });

  final Lot lot;
  final bool navigateToLot;

  @override
  Widget build(BuildContext context) {
    final compositionAcronyms =
        Provider.of<List<LotCompositionAcronym>>(context);

    final lotTitle = lot.sourceInventoryLocationInfo != null
        ? '${lot.code}/${lot.sourceInventoryLocationInfo!.productId.split('/').last}'
        : lot.code;

    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: () async {
          if (navigateToLot) {
            await context.pushNamed(
              NamedRoutes.ylExistingLot,
              extra: lot,
            );
          }
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              flex: 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Flexible(
                        child: Text(
                          lotTitle,
                          softWrap: true,
                        ),
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      if (lot.t2LotNumber == null) YlConstants.warningIcon,
                    ],
                  ),
                  MiniTag(
                    label: navigateToLot
                        ? lot.netWeightUom
                            .convertWeight(
                              Uom.mt,
                            )
                            .toWeightString()
                        : lot.grossWeightUom != null
                            ? lot.grossWeightUom!
                                .convertWeight(
                                  Uom.mt,
                                )
                                .toWeightString()
                            : '0 ${Uom.mt.name.toUpperCase()}',
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
          ],
        ),
      ),
    );
  }
}
