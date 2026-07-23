import 'package:emr_one_transport/core/constants/constants.dart';
import 'package:emr_one_transport/data/helpers/string_helper.dart';
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

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          children: [
            Text(
              label,
              style: valueStyle ??
                  const TextStyle(fontWeight: FontWeight.bold),
            ),
            if (leadingLabel != null) ...[
              const SizedBox(
                width: 2,
              ),
              Text(
                leadingLabel!,
                style: const TextStyle(fontSize: Constants.fontSizeM),
              ),
            ],
            if (showIcon && icon != null)
              IconButton(
                iconSize: iconSize,
                icon: icon!,
                onPressed: () {
                  onIconPressed?.call();
                },
              ),
            const SizedBox(
              width: 6,
            ),
          ],
        ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
                Flexible(
                  child: Text(
                    StringHelper.truncateWithEllipsis(value,26),
                    style: valueStyle,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
            ],
          ),
        ),
      ],
    );
  }
}
