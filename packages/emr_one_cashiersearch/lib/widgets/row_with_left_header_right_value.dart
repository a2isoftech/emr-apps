import 'package:emr_one_core/eo_constants.dart';
import 'package:flutter/material.dart';

class RowWithTitleValue extends StatelessWidget {
  const RowWithTitleValue({
    required this.label,
    required this.value,
    this.isTitle = false,
    this.icon,
    this.showIcon = false,
    this.onIconPressed,
    this.iconSize = 20,
    this.leadingLabel,
    this.valueStyle,
    this.labelStyle,
    this.valueWidget,
    this.showTooltipOnValue = false,
    this.tailingLabelWidget,
    super.key,
  });

  final String label;
  final String value;
  final bool isTitle;
  final bool showIcon;
  final Icon? icon;
  final String? leadingLabel;
  final double iconSize;
  final void Function()? onIconPressed;
  final TextStyle? valueStyle;
  final TextStyle? labelStyle;
  final Widget? valueWidget;
  final bool showTooltipOnValue;
  final Widget? tailingLabelWidget;

  @override
  Widget build(BuildContext context) {
    final defaultLabelStyle =
        labelStyle ?? Theme.of(context).textTheme.titleMedium;
    final defaultValueStyle = (valueStyle ?? const TextStyle()).copyWith(
      fontWeight: FontWeight.w600,
    );

    final child =
        valueWidget ??
        Text(
          value,
          style: defaultValueStyle,
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
        );

    return Row(
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(label, style: defaultLabelStyle),
            if (leadingLabel != null) ...[
              const SizedBox(width: Insets.gutter / 4),
              Text(leadingLabel!, style: defaultLabelStyle),
            ],
            if (showIcon && icon != null) ...[
              const SizedBox(width: Insets.gutter / 4),
              IconButton(
                icon: icon!,
                iconSize: iconSize,
                padding: EdgeInsets.zero,
                constraints: const BoxConstraints(),
                onPressed: onIconPressed,
              ),
            ],
            if (tailingLabelWidget != null) ...[
              const SizedBox(width: Insets.gutter / 4),
              tailingLabelWidget!,
            ],
          ],
        ),
        const SizedBox(width: Insets.gutter / 2),
        Expanded(
          child: Align(
            alignment: Alignment.topRight,
            child: showTooltipOnValue
                ? Tooltip(message: value, child: child)
                : child,
          ),
        ),
      ],
    );
  }
}
