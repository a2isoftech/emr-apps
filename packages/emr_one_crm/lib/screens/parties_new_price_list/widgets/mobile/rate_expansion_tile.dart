import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_crm/models/models.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/material.dart';

class RateExpansionTile extends StatefulWidget {
  const RateExpansionTile({
    required this.grade,
    required this.selectedYardCodes,
    super.key,
    this.summaryMode = false,
  });

  final PlGrade grade;

  final List<String> selectedYardCodes;

  final bool summaryMode;

  @override
  State<RateExpansionTile> createState() => _RateExpansionTileState();
}

class _RateExpansionTileState extends State<RateExpansionTile> {
  int pageSize = 5;
  @override
  Widget build(BuildContext context) {
    const boldStyle = TextStyle(fontWeight: FontWeight.w600, fontSize: 14);
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final borderColour = isDark ? Colors.white : Colors.grey;

    return Container(
      decoration: BoxDecoration(border: Border.all(color: borderColour)),
      child: EmrExpansionTile(
        initiallyExpanded: widget.summaryMode,
        backgroundColor: Colors.transparent,
        header: Container(
          decoration: BoxDecoration(
            border: Border(
              top: BorderSide(color: borderColour),
            ),
          ),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.grade.description,
              style: boldStyle,
            ),
            Text(
              widget.grade.gradeCode,
              style: const TextStyle(fontSize: 12),
            ),
          ],
        ),
        child: Column(
          children: [
            getRows(widget.grade.yardPrices, borderColour),
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

    final total = finalPriceInPartyDeltaUom + widget.grade.partyDelta.value;

    final decimalPlaces = partyDelta.uom.uomCode.toUpperCase() == 'LB'
        ? 4
        : partyDelta.uom.displayFormatFractionalDigits;

    final formattedTotal = total.toStringAsFixed(decimalPlaces);

    return '$formattedTotal / ${partyDelta.uom.uomCode}';
  }

  ValueListenableBuilder<int> getRows(
    List<PlYardPrice> yardList,
    Color borderColour,
  ) {
    final currentPage = ValueNotifier<int>(1);
    final yards = yardList
        .where(
          (element) => widget.selectedYardCodes.contains(element.yard.yardCode),
        )
        .toList();
    return ValueListenableBuilder(
      valueListenable: currentPage,
      builder: (context, value, child) {
        return Column(
          children: [
            for (int i = getStartIndex(currentPage.value);
                i < getMaxRange(currentPage.value, yards.length);
                i++) ...[
              if (widget.selectedYardCodes.contains(yards[i].yard.yardCode))
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 0.5,
                      color: borderColour,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: Insets.gutter,
                      vertical: Insets.gutter / 2,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Text(
                            yards[i].yard.name,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Text(
                          _calculatePriceText(
                            yards[i].finalPrice,
                            widget.grade.partyDelta,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
            ],
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: Insets.gutter),
                  child: Text(
                    '${getRangeValuesText(
                      currentPage.value,
                      yards.length,
                    )}'
                    ' of ${yards.length}',
                    textAlign: TextAlign.left,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: Insets.gutter),
                  child: Text.rich(
                    TextSpan(
                      children: [
                        WidgetSpan(
                          child: IconButton(
                            icon: const Icon(
                              Icons.skip_previous_outlined,
                            ),
                            onPressed: isPreviousEnabled(currentPage, yards)
                                ? () => currentPage.value = 1
                                : null,
                          ),
                        ),
                        WidgetSpan(
                          child: IconButton(
                            icon: const Icon(
                              Icons.keyboard_arrow_left_outlined,
                            ),
                            onPressed: isPreviousEnabled(currentPage, yards)
                                ? () => currentPage.value--
                                : null,
                          ),
                        ),
                        WidgetSpan(
                          child: IconButton(
                            disabledColor: Colors.grey,
                            icon: const Icon(
                              Icons.keyboard_arrow_right_outlined,
                            ),
                            onPressed: isNextEnabled(currentPage, yards)
                                ? () => currentPage.value++
                                : null,
                          ),
                        ),
                        WidgetSpan(
                          child: IconButton(
                            icon: const Icon(
                              Icons.skip_next_outlined,
                            ),
                            onPressed: isNextEnabled(currentPage, yards)
                                ? () => currentPage.value =
                                    getPageCount(yards.length)
                                : null,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        );
      },
    );
  }

  bool isPreviousEnabled(
    ValueNotifier<int> currentPage,
    List<PlYardPrice> yards,
  ) {
    return currentPage.value != 1;
  }

  bool isNextEnabled(
    ValueNotifier<int> currentPage,
    List<PlYardPrice> yards,
  ) {
    return currentPage.value != getPageCount(yards.length);
  }

  int getPageCount(int gradesCount) {
    if (gradesCount < pageSize) {
      return 1;
    } else {
      if (gradesCount % pageSize == 0) {
        return gradesCount ~/ pageSize;
      } else {
        return gradesCount ~/ pageSize + 1;
      }
    }
  }

  int getStartIndex(int currentPage) {
    if (currentPage == 1) {
      return 0;
    } else {
      return (currentPage * pageSize) - pageSize;
    }
  }

  int getMaxRange(int currentPage, int totalGrades) {
    final maxRange = currentPage * pageSize;
    if (maxRange > totalGrades) {
      return totalGrades;
    }
    return maxRange;
  }

  String getRangeValuesText(int currentPage, int totalGrades) {
    var to = currentPage * pageSize;
    final from = to - (pageSize - 1);
    if (to > totalGrades) {
      to = totalGrades;
    }
    return '$from-$to';
  }
}
