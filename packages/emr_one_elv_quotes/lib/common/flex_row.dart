import 'package:emr_one_core/eo_constants.dart';
import 'package:flutter/material.dart';

Widget flexRow({
  required Widget childLeft,
  Widget? childRight,
}) {
  if (childRight == null) {
    return Flex(
      direction: Axis.horizontal,
      children: [
        _expandedWrapper(childLeft),
      ],
    );
  }

  return Flex(
    direction: Axis.horizontal,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      _expandedWrapper(childLeft),
      _expandedWrapper(childRight),
    ],
  );
}

Expanded _expandedWrapper(Widget child) {
  return Expanded(
    child: Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: Insets.gutter / 2,
      ),
      child: child,
    ),
  );
}
