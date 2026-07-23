import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';

class LabelValueDisplayWidget extends StatelessWidget {
  const LabelValueDisplayWidget({
    required this.label,
    required this.value,
    super.key,
    this.labelStyle,
    this.valueStyle,
    this.padding,
    this.displayTooltip = false,
  });
  final String label;
  final String value;
  final TextStyle? labelStyle;
  final TextStyle? valueStyle;
  final EdgeInsetsGeometry? padding;
  final bool displayTooltip;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textWidget = Text(
      value,
      style: valueStyle ??
          theme.textTheme.labelLarge?.copyWith(fontWeight: FontWeight.bold),
      overflow: TextOverflow.ellipsis,
      softWrap: false,
      maxLines: 1,
    );

    return Padding(
      padding: padding ?? const EdgeInsets.all(Insets.gutter / 4),
      child: Row(
        children: [
          SizedBox(
            child: Text(
              label,
              style: labelStyle ?? theme.textTheme.labelLarge,
            ),
          ),
          const SizedBox(width: Insets.gutter),
          Expanded(
            child: Align(
              alignment: Alignment.centerRight,
              child: displayTooltip
                  ? Tooltip(
                      message: value,
                      child: textWidget,
                    )
                  : textWidget,
            ),
          ),
        ],
      ),
    );
  }
}
