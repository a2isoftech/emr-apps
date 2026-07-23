import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_crm/models/yard_price_lists/yard_price_line.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/material.dart';

class YardGradeGridItem extends StatefulWidget {
  const YardGradeGridItem({
    required this.grade,
    required this.uom,
    super.key,
  });

  final YardPriceLine grade;
  final Uom uom;

  @override
  State<YardGradeGridItem> createState() => YardGradeGridItemState();
}

class YardGradeGridItemState extends State<YardGradeGridItem> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    final uomPrice = convertRate(Uom.mt, widget.uom, widget.grade.finalPriceMt);
    final priceText = '${uomPrice.toStringAsFixed(3)} / '
        '${widget.uom.uomCode}';

    return GestureDetector(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.all(2),
        child: Material(
          borderRadius: BorderRadius.circular(5),
          elevation: 3,
          child: Padding(
            padding: const EdgeInsets.only(
              left: Insets.gutter / 3,
              right: Insets.gutter / 3,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.grade.gradeCode,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: Insets.gutter / 2,
                  ),
                  child: Text(
                    widget.grade.gradeComment,
                    softWrap: false,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: Insets.gutter / 4,
                  ),
                  child: Text(
                    priceText,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
