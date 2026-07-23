import 'package:emr_one_core/eo_constants.dart';
import 'package:flutter/material.dart';

class GridViewHelpers {
  static GridView twoColumnOutlinedRadio(List<Widget> children) =>
      GridView.count(
        primary: false,
        shrinkWrap: true,
        childAspectRatio: 3,
        padding: const EdgeInsets.only(bottom: Insets.gutter),
        crossAxisSpacing: Insets.gutter / 2,
        mainAxisSpacing: Insets.gutter / 2,
        crossAxisCount: 2,
        children: children,
      );
}
