import 'dart:math';
import 'dart:ui';

import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:meta/meta.dart';

@internal
class EmrInlinePageControl extends StatefulWidget {
  const EmrInlinePageControl(this.pageControlEvents, {super.key});

  final EmrPageControlEvents pageControlEvents;

  @override
  State<EmrInlinePageControl> createState() => EmrInlinePageControlState();
}

class EmrInlinePageControlState extends State<EmrInlinePageControl> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Insets.gutter),
        border: Border.all(
          color: Theme.of(context).colorScheme.outline.withAlpha(128),
        ),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(Insets.gutter),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: Insets.gutter / 4,
              horizontal: Insets.gutter / 2,
            ),
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
                  final rc = widget.pageControlEvents.recordCount;
                  xOfY = '${totalFormat.format(start)} - '
                      '${totalFormat.format(end)} '
                      '${context.l10n.of1} '
                      '${totalFormat.format(rc)}';
                } else {
                  xOfY = '0-0 ${context.l10n.of1} 0';
                }

                const buttonSize = 32.0;
                const iconSize = 18.0;

                return Column(
                  children: [
                    Row(
                      children: [
                        SizedBox.square(
                          dimension: buttonSize,
                          child: IconButton(
                            padding: EdgeInsets.zero,
                            iconSize: iconSize,
                            onPressed: widget.pageControlEvents.onPressedStart,
                            icon: const FaIcon(
                              FontAwesomeIcons.backwardStep,
                            ),
                            tooltip: context.l10n.start,
                          ),
                        ),
                        SizedBox.square(
                          dimension: buttonSize,
                          child: IconButton(
                            padding: EdgeInsets.zero,
                            iconSize: iconSize,
                            onPressed:
                                widget.pageControlEvents.onPressedPrevious,
                            icon: const FaIcon(
                              FontAwesomeIcons.angleLeft,
                            ),
                            tooltip: context.l10n.previous,
                          ),
                        ),
                        SizedBox.square(
                          dimension: buttonSize,
                          child: IconButton(
                            padding: EdgeInsets.zero,
                            iconSize: iconSize,
                            onPressed: widget.pageControlEvents.onPressedNext,
                            icon: const FaIcon(
                              FontAwesomeIcons.angleRight,
                            ),
                            tooltip: context.l10n.next,
                          ),
                        ),
                        SizedBox.square(
                          dimension: buttonSize,
                          child: IconButton(
                            padding: EdgeInsets.zero,
                            iconSize: iconSize,
                            onPressed: widget.pageControlEvents.onPressedEnd,
                            icon: const FaIcon(
                              FontAwesomeIcons.forwardStep,
                            ),
                            tooltip: context.l10n.end,
                          ),
                        ),
                      ],
                    ),
                    MenuAnchor(
                      menuChildren: <Widget>[
                        for (final pageSize
                            in widget.pageControlEvents.pageSizes)
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
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                            minimumSize: const Size(64, 30),
                          ),
                          onPressed: () {
                            if (controller.isOpen) {
                              controller.close();
                            } else {
                              controller.open();
                            }
                          },
                          child: Text(
                            xOfY,
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                        );
                      },
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
