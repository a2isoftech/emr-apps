import 'package:emr_one_crm/models/yard_price_lists/yard_price_line.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/material.dart';

class YardGradeListItem extends StatefulWidget {
  const YardGradeListItem({
    required this.grade,
    required this.uom,
    super.key,
  });

  final YardPriceLine grade;
  final Uom uom;

  @override
  State<YardGradeListItem> createState() => YardGradeListItemState();
}

class YardGradeListItemState extends State<YardGradeListItem> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    final uomPrice = convertRate(Uom.mt, widget.uom, widget.grade.finalPriceMt);
    final priceText = '${uomPrice.toStringAsFixed(3)} / '
        '${widget.uom.uomCode}';

    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ConstrainedBox(
          constraints: const BoxConstraints(
            minWidth: 100,
          ),
          child: Text(
            widget.grade.gradeCode,
          ),
        ),
        Expanded(
          flex: 2,
          child: Text(
            widget.grade.gradeComment,
          ),
        ),
        Text(
          priceText,
        ),
      ],
    );
  }
}
