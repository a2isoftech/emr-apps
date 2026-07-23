import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_yard_logistics/models/models.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/material.dart';

class LotCardItemDetails extends StatelessWidget {
  const LotCardItemDetails({
    required this.lot,
    required this.uomForView,
    super.key,
  });

  final Lot lot;
  final Uom uomForView;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                lot.code,
                style: EmrOneConstants.kOpenSans16BoldTextStyle,
              ),
              Text(
                lot.yardId,
                style: EmrOneConstants.kOpenSans16TextStyle,
              ),
            ],
          ),
        ),
        const Divider(),
        FormHeadingRow(
          textStyle: EmrOneConstants.kOpenSans12TextStyle,
          headings: [
            'Ticket',
            lot.ticketInfo.ticketNumber.toString(),
          ],
        ),
        FormHeadingRow(
          textStyle: EmrOneConstants.kOpenSans12TextStyle,
          headings: [
            'Status',
            switch (lot.state) {
              LotState.newLot => context.l10n.open,
              LotState.createdInTrade => 'Created in Trade',
              LotState.deleted => context.l10n.deleted,
            },
          ],
        ),
        FormHeadingRow(
          textStyle: EmrOneConstants.kOpenSans12TextStyle,
          headings: [
            'Location',
            lot.sourceInventoryLocationInfo?.productId.split('/').last ?? '',
          ],
        ),
        FormHeadingRow(
          textStyle: EmrOneConstants.kOpenSans12TextStyle,
          headings: [
            'Gross Weight',
            lot.grossWeightUom?.convertWeight(uomForView).toWeightString() ??
                '',
          ],
        ),
        FormHeadingRow(
          textStyle: EmrOneConstants.kOpenSans12TextStyle,
          headings: [
            'Tare Weight',
            lot.tareWeightUom.convertWeight(uomForView).toWeightString(),
          ],
        ),
        FormHeadingRow(
          textStyle: EmrOneConstants.kOpenSans12TextStyle,
          headings: [
            'Net Weight',
            lot.netWeightUom.convertWeight(uomForView).toWeightString(),
          ],
        ),
      ],
    );
  }
}
