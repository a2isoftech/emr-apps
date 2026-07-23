import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:psnop/enums/info_text_type.dart';
import 'package:psnop/models/headers/main_header_model.dart';

class CellWidget extends StatelessWidget {
  const CellWidget({
    required this.context,
    required this.width,
    required this.column,
    required this.headers,
    required this.message,
    super.key,
    this.containerIfZero = false,
    this.showToolTip = false,
    this.flex = 1,
    this.onTap,
    this.style,
    this.tooltipMessage,
    this.infoText = false,
    this.infoTextType,
  });

  final bool containerIfZero;
  final bool showToolTip;
  final int flex;
  final BuildContext context;
  final double width;
  final int column;
  final Iterable<MainHeaderModel> headers;
  final String message;
  final void Function()? onTap;
  final TextStyle? style;
  final String? tooltipMessage;
  final bool infoText;
  final InfoTextType? infoTextType;

  @override
  Widget build(BuildContext context) {
    final number = double.tryParse(message);
    final MouseCursor cursor;
    if (number != null && number <= 0) {
      cursor = SystemMouseCursors.basic;
    } else {
      cursor = SystemMouseCursors.click;
    }
    final cellToDisplay = SizedBox(
      width: width,
      child: _cellWidget(
        containerIfZero: containerIfZero,
        context: context,
        maxWidth: width,
        message: message,
        showToolTip: showToolTip,
        style: style,
        tooltipMessage: tooltipMessage,
        infoText: infoText,
        infoTextType: infoTextType,
      ),
    );
    return Visibility(
      visible: CellWidgetHelper().shouldBeVisible(
        column,
        headers,
      ),
      child: onTap == null
          ? Expanded(
              flex: flex,
              child: cellToDisplay,
            )
          : Expanded(
              flex: flex,
              child: MouseRegion(
                cursor: cursor,
                child: SizedBox(
                  width: width,
                  child: GestureDetector(
                    behavior: HitTestBehavior.translucent,
                    onTap: onTap,
                    child: cellToDisplay,
                  ),
                ),
              ),
            ),
    );
  }

  Widget _cellWidget({
    required BuildContext context,
    required String message,
    required double maxWidth,
    TextStyle? style,
    String? tooltipMessage,
    bool showToolTip = false,
    bool containerIfZero = false,
    bool infoText = false,
    InfoTextType? infoTextType,
  }) {
    if (containerIfZero) {
      final number = double.tryParse(message);
      if (number != null && number <= 0) {
        return Container();
      }
    }

    final textAlign = infoText ? TextAlign.left : TextAlign.center;
    final padding = CellWidgetHelper().getPadding(infoTextType: infoTextType);

    final span = TextSpan(
      text: message,
      style: style,
    );

    final painter = TextPainter(
      text: span,
      maxLines: 1,
      textScaler: MediaQuery.of(context).textScaler,
      textDirection: TextDirection.ltr,
    );

    painter.layout();
    final overflow = painter.size.width > (maxWidth - 2);

    if (overflow) {
      var width = maxWidth - 40;
      if (width < 0) {
        width = 0;
      }
      return Tooltip(
        message: (tooltipMessage == null || tooltipMessage.isEmpty)
            ? message
            : '$message\n$tooltipMessage',
        child: SizedBox(
          width: width,
          child: Padding(
            padding: EdgeInsets.only(
              left: padding,
            ),
            child: Text(
              message,
              textAlign: textAlign,
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
              style: style,
            ),
          ),
        ),
      );
    } else {
      if (showToolTip) {
        return Tooltip(
          message: (tooltipMessage == null || tooltipMessage.isEmpty)
              ? message
              : tooltipMessage,
          child: Padding(
            padding: EdgeInsets.only(
              left: padding,
            ),
            child: Text(
              message,
              textAlign: textAlign,
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
              style: style,
            ),
          ),
        );
      } else {
        return Padding(
          padding: EdgeInsets.only(
            left: padding,
          ),
          child: Text(
            message,
            textAlign: textAlign,
            maxLines: 1,
            style: style,
          ),
        );
      }
    }
  }
}

class CellWidgetHelper {
  double getPadding({InfoTextType? infoTextType}) {
    if (infoTextType == null) {
      return 0;
    } else {
      switch (infoTextType) {
        case InfoTextType.grandTotal:
          return 10;
        case InfoTextType.regionTotal:
          return 10;
        case InfoTextType.depotTotal:
          return 15;
        case InfoTextType.gradeGroupTotal:
          return 15;
        case InfoTextType.salesGradeTotal:
          return 15;
        case InfoTextType.gradeTotal:
          return 20;
        case InfoTextType.heapTotal:
          return 25;
      }
    }
  }

  bool shouldBeVisible(
    int i,
    Iterable<MainHeaderModel> visibleHeaders,
  ) {
    final head = visibleHeaders.firstWhereOrNull(
      (element) => element.id == i,
    );

    if (head == null || !head.isVisible) {
      return false;
    } else {
      return true;
    }
  }
}
