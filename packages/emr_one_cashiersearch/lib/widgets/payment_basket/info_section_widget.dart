import 'package:emr_one_core/eo_constants.dart';
import 'package:flutter/material.dart';

class InfoSection extends StatelessWidget {
  const InfoSection({
    required this.rows,
    this.title,
    this.titleStyle,
    super.key,
  });
  final String? title;
  final TextStyle? titleStyle;
  final List<TitleValue> rows;

  @override
  Widget build(BuildContext context) {
    final labelDefaultStyle = Theme.of(context).textTheme.titleSmall;

    final valueDefaultStyle = Theme.of(
      context,
    ).textTheme.bodySmall!.copyWith(fontWeight: FontWeight.w600);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (title?.isNotEmpty ?? false) ...[
          Text(
            title!,
            style: titleStyle ?? Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(height: Insets.gutter / 2),
        ],
        ...rows.map(
          (row) => Padding(
            padding: const EdgeInsets.symmetric(vertical: Insets.gutter / 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              spacing: Insets.gutter / 4,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    if (row.leading != null) row.leading!,
                    if (row.showLabel)
                      Text(
                        row.label,
                        style: row.labelStyle ?? labelDefaultStyle,
                      ),
                  ],
                ),
                Expanded(
                  child: Row(
                    //alignment: Alignment.topRight,
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      if (row.showValue)
                        Text(
                          row.value,
                          style: row.valueStyle ?? valueDefaultStyle,
                          overflow: TextOverflow.ellipsis,
                        ),
                      if (row.tailing != null) row.tailing!,
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class TitleValue {
  const TitleValue({
    required this.label,
    required this.value,
    this.valueStyle,
    this.labelStyle,
    this.leading,
    this.tailing,
    this.showValue = true,
    this.showLabel = true,
  });
  final String label;
  final String value;
  final TextStyle? valueStyle;
  final bool showValue;
  final TextStyle? labelStyle;
  final bool showLabel;
  final Widget? leading;
  final Widget? tailing;
}
