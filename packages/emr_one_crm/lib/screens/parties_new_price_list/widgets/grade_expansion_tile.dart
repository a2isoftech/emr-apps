import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_crm/models/models.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/material.dart';

class GradeExpansionTile extends StatefulWidget {
  const GradeExpansionTile({
    required this.grade,
    required this.selectedYardCodes,
    super.key,
    this.summaryMode = false,
  });

  final PlGrade grade;

  final List<String> selectedYardCodes;

  final bool summaryMode;

  @override
  State<GradeExpansionTile> createState() => _GradeExpansionTileState();
}

class _GradeExpansionTileState extends State<GradeExpansionTile> {
  @override
  Widget build(BuildContext context) {
    final expansionTileTheme = ExpansionTileTheme.of(context);
    const boldStyle = TextStyle(fontWeight: FontWeight.w600);

    return EmrExpansionTile(
      initiallyExpanded: widget.summaryMode,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.grade.gradeCode,
            style: TextStyle(color: expansionTileTheme.textColor),
          ),
          Text(
            widget.grade.description,
            style: TextStyle(color: expansionTileTheme.textColor),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: Insets.gutter),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: Insets.gutter / 2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(context.l10n.partyDelta, style: boldStyle),
                  if (widget.summaryMode)
                    Text(
                      widget.grade.partyDelta.toString(),
                      style: boldStyle,
                    )
                  else
                    SizedBox(
                      width: 130,
                      child: UomInputField(
                        onChanged: (ValueUomPair value) {
                          setState(() {
                            widget.grade.partyDelta = value;
                          });
                        },
                        isRate: true,
                        values: const [Uom.mt, Uom.lb, Uom.kg, Uom.gt, Uom.nt],
                        initialValue: widget.grade.partyDelta,
                      ),
                    ),
                ],
              ),
            ),
            Row(
              children: [
                Text(context.l10n.payable, style: boldStyle),
              ],
            ),
            for (final yardPrice in widget.grade.yardPrices)
              if (widget.selectedYardCodes.contains(yardPrice.yard.yardCode))
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: Insets.gutter / 2),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          yardPrice.yard.name,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Text(
                        _calculatePriceText(
                          yardPrice.finalPrice,
                          widget.grade.partyDelta,
                        ),
                      ),
                    ],
                  ),
                ),
          ],
        ),
      ),
    );
  }

  // Adds up the yard final price and the party delta, taking into account UOM
  // conversion so the displayed value is in the UOM of the party delta.
  String _calculatePriceText(
    ValueUomPair yardPriceFinalPrice,
    ValueUomPair partyDelta,
  ) {
    final finalPriceInPartyDeltaUom = convertRate(
      yardPriceFinalPrice.uom,
      partyDelta.uom,
      yardPriceFinalPrice.value,
    );

    final formattedTotal =
        (finalPriceInPartyDeltaUom + widget.grade.partyDelta.value)
            .toStringAsFixed(partyDelta.uom.displayFormatFractionalDigits);

    return '$formattedTotal / ${partyDelta.uom.uomCode}';
  }
}
