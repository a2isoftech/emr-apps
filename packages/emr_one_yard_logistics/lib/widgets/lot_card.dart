import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_yard_logistics/constants.dart';
import 'package:emr_one_yard_logistics/models/models.dart';
import 'package:emr_one_yard_logistics/widgets/widgets.dart';
import 'package:emr_sharedtypes/constants.dart';
import 'package:flutter/material.dart';

class LotCard extends StatelessWidget {
  const LotCard({
    required this.lot,
    required this.uomForView,
    required this.compositionAcronyms,
    super.key,
  });

  final Lot lot;
  final Uom uomForView;
  final List<LotCompositionAcronym> compositionAcronyms;

  @override
  Widget build(BuildContext context) {
    final baseColour = switch (lot.state) {
      LotState.newLot => Theme.of(context).colorScheme.tertiary,
      LotState.createdInTrade => Colors.green[200]!,
      LotState.deleted => Colors.red[100]!,
    };

    return SizedBox(
      width: YlConstants.lotCardWidth,
      height: YlConstants.lotCardHeight,
      child: EmrCard(
        padding: EdgeInsets.zero,
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: YlConstants.lotCardAspectRatio,
              child: Stack(
                children: [
                  const Positioned.fill(
                    child: LotCardUpperBackground(),
                  ),
                  Positioned.fill(
                    right: YlConstants.lotCardPhotoRightMargin,
                    bottom: 50,
                    child: Padding(
                      padding: const EdgeInsets.all(Insets.gutter),
                      child: LotCardLotPhotos(lot: lot),
                    ),
                  ),
                  Positioned.fill(
                    top: YlConstants.lotCardBaseHeight,
                    child: ColoredBox(
                      color: baseColour,
                    ),
                  ),
                  Positioned.fill(
                    left: YlConstants.lotCardStatusIconLeftMargin,
                    bottom: YlConstants.lotCardStatusIconBottomMargin,
                    child: Padding(
                      padding: const EdgeInsets.all(Insets.gutter),
                      child: LotCardStatusIcons(
                        lot: lot,
                        compositionAcronyms: compositionAcronyms,
                      ),
                    ),
                  ),
                  Positioned.fill(
                    top: 146,
                    child: Padding(
                      padding: const EdgeInsets.all(Insets.gutter),
                      child: LotCardAssessmentIcons(
                        lot: lot,
                        horzShowLeadingIcon: true,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: Insets.gutter / 2,
                left: Insets.gutter,
                right: Insets.gutter,
                bottom: Insets.gutter,
              ),
              child: LotCardItemDetails(
                lot: lot,
                uomForView: uomForView,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
