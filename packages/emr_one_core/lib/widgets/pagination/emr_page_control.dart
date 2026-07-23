import 'dart:math';

import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';

class EmrPageControl extends StatefulWidget {
  const EmrPageControl(this.pageControlEvents, {super.key});

  final EmrPageControlEvents pageControlEvents;

  @override
  State<EmrPageControl> createState() => EmrPageControlState();
}

class EmrPageControlState extends State<EmrPageControl> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: Insets.gutter / 2),
      child: ValueListenableBuilder(
        valueListenable: widget.pageControlEvents.loading,
        builder: (
          BuildContext context,
          value,
          Widget? child,
        ) {
          String xOfY;
          final totalFormat = NumberFormat.decimalPattern();

          if (widget.pageControlEvents.recordCount > 0) {
            final start = widget.pageControlEvents.pageSize *
                    (widget.pageControlEvents.currentPageNumber - 1) +
                1;
            final end = min(
              start + widget.pageControlEvents.pageSize - 1,
              widget.pageControlEvents.recordCount,
            );
            xOfY = '${totalFormat.format(start)} - ${totalFormat.format(end)} '
                '${context.l10n.of1} '
                '${totalFormat.format(widget.pageControlEvents.recordCount)}';
          } else {
            xOfY = '0-0 ${context.l10n.of1} 0';
          }

          const padding = EdgeInsets.symmetric(horizontal: Insets.gutter / 2);

          return Column(
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: widget.pageControlEvents.onPressedStart,
                    icon: const FaIcon(
                      FontAwesomeIcons.backwardStep,
                    ),
                    tooltip: context.l10n.start,
                  ),
                  IconButton(
                    onPressed: widget.pageControlEvents.onPressedPrevious,
                    icon: const FaIcon(
                      FontAwesomeIcons.angleLeft,
                    ),
                    tooltip: context.l10n.previous,
                  ),
                  IconButton(
                    onPressed: widget.pageControlEvents.onPressedNext,
                    icon: const FaIcon(
                      FontAwesomeIcons.angleRight,
                    ),
                    tooltip: context.l10n.next,
                  ),
                  IconButton(
                    onPressed: widget.pageControlEvents.onPressedEnd,
                    icon: const FaIcon(
                      FontAwesomeIcons.forwardStep,
                    ),
                    tooltip: context.l10n.end,
                  ),
                ],
              ),
              Padding(
                padding: padding,
                child: MenuAnchor(
                  menuChildren: <Widget>[
                    for (final pageSize in widget.pageControlEvents.pageSizes)
                      MenuItemButton(
                        child: Text(
                          context.l10n.rowsPerPage(pageSize),
                          textAlign: TextAlign.center,
                        ),
                        onPressed: () => widget
                            .pageControlEvents.onPageSizeChange
                            ?.call(pageSize),
                      ),
                  ],
                  builder: (
                    BuildContext context,
                    MenuController controller,
                    Widget? child,
                  ) {
                    return TextButton(
                      onPressed: () {
                        if (controller.isOpen) {
                          controller.close();
                        } else {
                          controller.open();
                        }
                      },
                      child: Text(xOfY),
                    );
                  },
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
