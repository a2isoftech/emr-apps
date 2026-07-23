import 'package:flutter/widgets.dart';

class EmrGridColumn<TRowData> {
  EmrGridColumn({
    required this.headerBuilder,
    required this.cellBuilder,
    this.footerBuilder,
    this.flex = 1,
    this.width = 100,
    this.alignment = Alignment.centerLeft,
  });

  final double width;
  final int flex;
  final Widget Function() headerBuilder;
  final Widget Function(TRowData rowItem) cellBuilder;
  final Widget Function(BuildContext context)? footerBuilder;
  final Alignment alignment;
}
