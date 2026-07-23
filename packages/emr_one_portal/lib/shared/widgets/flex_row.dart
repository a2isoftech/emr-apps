import 'package:emr_one_core/eo_constants.dart';
import 'package:flutter/material.dart';

Widget flexRow({
  required Widget Function() childLeft,
  required Widget Function() childMiddle,
  Widget Function()? childRight,
}) {
  if (childRight == null) {
    return Flex(
      direction: Axis.horizontal,
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(
              Insets.gutter / 2,
              0,
              Insets.gutter / 2,
              0,
            ),
            child: childLeft(),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(
              Insets.gutter / 2,
              0,
              Insets.gutter / 2,
              0,
            ),
            child: childMiddle(),
          ),
        ),
      ],
    );
  }

  return Flex(
    direction: Axis.horizontal,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Expanded(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(
            Insets.gutter / 2,
            0,
            Insets.gutter / 2,
            0,
          ),
          child: childLeft(),
        ),
      ),
      Expanded(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(
            Insets.gutter / 2,
            0,
            Insets.gutter / 2,
            0,
          ),
          child: childMiddle(),
        ),
      ),
      Expanded(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(
            Insets.gutter / 2,
            0,
            Insets.gutter / 2,
            0,
          ),
          child: childRight(),
        ),
      ),
    ],
  );
}
