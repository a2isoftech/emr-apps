import 'dart:math';

import 'package:emr_one_core/eo_constants.dart';
import 'package:flutter/material.dart';

class FormHeadingRow extends StatelessWidget {
  const FormHeadingRow({
    required this.headings,
    super.key,
    this.icons = const [],
    this.isLeading = false,
    this.button,
    this.disabled = false,
    this.iconSize = 16,
    this.trailing,
    this.textStyle,
  });
  final List<String> headings;
  final List<IconData?> icons;
  final bool isLeading;
  final Widget? button;
  final bool disabled;
  final double iconSize;
  final Widget? trailing;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    final rowChildren = [
      for (int i = 0; i < headings.length; i++)
        // Determine whether the heading has an icon.
        (icons.length > i && icons[i] != null)
            ? Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      headings[i],
                      style: textStyle ??
                          EmrOneConstants.kSmallestHeadingTextStyle,
                    ),
                  ),
                  Icon(
                    icons[i],
                    size: iconSize,
                  ),
                  if (i == headings.length) button ?? const SizedBox(),
                ],
              )
            : Padding(
                padding: isLeading
                    ? const EdgeInsets.only(bottom: Insets.gutter / 2)
                    : const EdgeInsets.symmetric(vertical: Insets.gutter / 4),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        headings[i],
                        style: disabled
                            ? textStyle ??
                                EmrOneConstants.kSmallestHeadingTextStyle
                                    .copyWith(color: Colors.grey[200])
                            : textStyle ??
                                EmrOneConstants.kSmallestHeadingTextStyle,
                      ),
                    ),
                    if (i == headings.length - 1) button ?? const SizedBox(),
                  ],
                ),
              ),
    ];

    return FormRow(
      padding: EdgeInsets.zero,
      children: [
        ...rowChildren,
        if (trailing != null) trailing!,
      ],
    );
  }
}

class FormRow extends StatelessWidget {
  const FormRow({
    required this.children,
    super.key,
    this.padding = const EdgeInsets.only(bottom: Insets.gutter),
  });
  final List<Widget> children;
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    final columnWidth = (100 / max(1, children.length)).floor();
    final lastColumnWidth = 100 - ((children.length - 1) * columnWidth);

    return Padding(
      padding: padding,
      child: Row(
        // Align at the start so that form controls line up even if there
        // are validation errors. Text direction for unit tests.
        textDirection: TextDirection.ltr,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          for (final child in children)
            Flexible(
              fit: FlexFit.tight,
              flex: (child == children.last) ? lastColumnWidth : columnWidth,
              child: Padding(
                padding: EdgeInsets.only(
                  left: child == children.first ? 0 : Insets.gutter / 2,
                  right: child == children.last ? 0 : Insets.gutter / 2,
                ),
                child: child,
              ),
            ),
        ],
      ),
    );
  }
}
