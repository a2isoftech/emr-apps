import 'package:emr_one_elv_core/extensions/small_screen_check.dart';
import 'package:flutter/widgets.dart';

class RowOrColumn extends StatelessWidget {
  const RowOrColumn({
    required this.children,
    this.rowMainAxisAlignment,
    this.columnMainAxisAlignment,
    this.rowCrossAxisAlignment,
    this.columCrossAxisAlignment,
    this.mainAxisSize,
    super.key,
  });

  final MainAxisAlignment? rowMainAxisAlignment;
  final MainAxisAlignment? columnMainAxisAlignment;

  final CrossAxisAlignment? rowCrossAxisAlignment;
  final CrossAxisAlignment? columCrossAxisAlignment;

  final MainAxisSize? mainAxisSize;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    final isSmallScreen = SmallScreenCheck().isSmallScreen(context);

    switch (isSmallScreen) {
      case true:
        return Column(
          mainAxisAlignment: columnMainAxisAlignment ?? MainAxisAlignment.start,
          children: children,
        );
      case false:
        return Row(
          mainAxisSize: mainAxisSize ?? MainAxisSize.min,
          mainAxisAlignment: rowMainAxisAlignment ?? MainAxisAlignment.start,
          children: children,
        );
    }
  }
}
