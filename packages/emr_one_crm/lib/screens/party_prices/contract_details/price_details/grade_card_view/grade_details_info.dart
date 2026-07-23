import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';

class GradeDetailsInfo extends StatelessWidget {
  const GradeDetailsInfo({
    required this.heading,
    required this.info,
    this.headingWidth,
    super.key,
  });

  final String heading;
  final String info;
  final double? headingWidth;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(Insets.gutter / 2),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: headingWidth,
            padding: const EdgeInsets.only(right: Insets.gutter / 2),
            child: Text(
              heading,
              style: Theme.of(context).textTheme.labelMedium,
              softWrap: true,
            ),
          ),
          Expanded(
            child: Text(
              info,
              style: Theme.of(context)
                  .textTheme
                  .titleSmall!
                  .copyWith(fontWeight: FontWeight.bold),
              softWrap: false,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.right,
            ),
          ),
        ],
      ),
    );
  }
}
