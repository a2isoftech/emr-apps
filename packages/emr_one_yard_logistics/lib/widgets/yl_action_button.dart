import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';

class YlActionButton extends StatelessWidget {
  const YlActionButton({
    required this.label,
    required this.trailing,
    this.onPressed,
    this.extraWidget,
    super.key,
  });

  final Widget label;
  final Widget trailing;
  final Widget? extraWidget;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final buttonStyle = ButtonStyle(
      textStyle: WidgetStateProperty.all<TextStyle>(
        const TextStyle(
          fontSize: 16,
        ),
      ),
      padding: WidgetStateProperty.all<EdgeInsetsGeometry>(
        const EdgeInsets.all(Insets.gutter / 2),
      ),
      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      shape: WidgetStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
        ),
      ),
    );

    return OutlinedButton(
      onPressed: onPressed,
      style: buttonStyle,
      child: Row(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Flexible(
                                  child: label,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: extraWidget == null
                      ? MainAxisAlignment.end
                      : MainAxisAlignment.spaceBetween,
                  children: [
                    if (extraWidget != null) Flexible(child: extraWidget!),
                    trailing,
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
