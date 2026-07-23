import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/src/widgets/emr_card/emr_card_header_textblock.dart';
import 'package:emr_one_core/widgets/card/emr_card_controller.dart';
import 'package:flutter/material.dart';

/// A simple card with a border and rounded corners.
class EmrCard extends StatefulWidget {
  const EmrCard({
    required this.child,
    super.key,
    this.title,
    this.subtitle,
    this.leading,
    this.trailing,
    this.onSelected,
    this.onBeforeSelect,
    this.controller,
    this.isSelected,
    this.padding = const EdgeInsets.all(Insets.gutter),
  })  : assert(
          isSelected == null || controller == null,
          'Cannot provide both isSelected and controller',
        ),
        assert(
          subtitle == null || title != null,
          'If subtitle is provided, title must also be provided',
        );

  final String? title;
  final String? subtitle;
  final Widget child;
  final bool? isSelected;
  final Widget? leading;
  final Widget? trailing;
  final EdgeInsets padding;
  final EmrCardController? controller;

  static const double cardRadius = 8;
  static const double selectedBorderWidth = 4;
  static const double hoveredBorderWidth = 4;
  static const double defaultBorderWidth = 1;
  static const int cardAlpha = 128;
  static const int selectionAnimationDuration = 200;
  static const int cardBorderAlpha = 10;

  final void Function({bool selected})? onSelected;
  final bool Function()? onBeforeSelect;

  @override
  State<EmrCard> createState() => _EmrCardState();
}

class _EmrCardState extends State<EmrCard> {
  bool isHovered = false;
  late final EmrCardController controller;

  @override
  void initState() {
    super.initState();
    controller = widget.controller ??
        EmrCardController(selected: widget.isSelected ?? false);

    controller.isSelected.addListener(_onSelectedChanged);
  }

  @override
  void dispose() {
    controller.isSelected.removeListener(_onSelectedChanged);
    if (widget.controller == null) {
      controller.isSelected.dispose();
    }
    super.dispose();
  }

  void _onSelectedChanged() {
    if (mounted) {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    final showingHeader = widget.title != null ||
        widget.leading != null ||
        widget.trailing != null;

    return Padding(
      padding: const EdgeInsets.all(Insets.gutter / 4),
      child: MouseRegion(
        onEnter: widget.onSelected != null
            ? (_) {
                setState(() {
                  isHovered = true;
                });
              }
            : null,
        onExit: widget.onSelected != null
            ? (_) {
                setState(() {
                  isHovered = false;
                });
              }
            : null,
        cursor: widget.onSelected != null
            ? SystemMouseCursors.click
            : SystemMouseCursors.basic,
        child: GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: widget.onSelected != null
              ? () {
                  if (widget.onBeforeSelect != null &&
                      !widget.onBeforeSelect!()) {
                    return;
                  }

                  controller.isSelected.value = !controller.isSelected.value;

                  widget.onSelected!(selected: controller.isSelected.value);
                }
              : null,
          child: AnimatedContainer(
            duration: const Duration(
              milliseconds: EmrCard.selectionAnimationDuration,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(EmrCard.cardRadius),
              border: Border.all(
                width: controller.isSelected.value
                    ? EmrCard.selectedBorderWidth
                    : isHovered
                        ? EmrCard.hoveredBorderWidth
                        : EmrCard.defaultBorderWidth,
                color: controller.isSelected.value
                    ? Theme.of(context).colorScheme.tertiary
                    : isHovered
                        ? Theme.of(context).colorScheme.tertiary
                        : Theme.of(context).colorScheme.onSurface,
                strokeAlign: BorderSide.strokeAlignOutside,
              ),
            ),
            curve: Curves.easeInOut,
            child: ClipRRect(
              clipBehavior: Clip.hardEdge,
              borderRadius: BorderRadius.circular(EmrCard.cardRadius),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Visibility(
                    visible: showingHeader,
                    child: Row(
                      children: [
                        Expanded(
                          child: AnimatedContainer(
                            duration: const Duration(milliseconds: 200),
                            decoration: BoxDecoration(
                              color: controller.isSelected.value
                                  ? Theme.of(context).colorScheme.tertiary
                                  : Theme.of(context)
                                      .colorScheme
                                      .surfaceContainerHighest,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: Insets.gutter,
                                vertical: Insets.gutter / 2,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Flexible(
                                    child: Row(
                                      children: [
                                        if (widget.leading != null)
                                          widget.leading!
                                        else
                                          const SizedBox.shrink(),
                                        if (widget.leading != null)
                                          const SizedBox(
                                            width: Insets.gutter / 2,
                                          )
                                        else
                                          const SizedBox.shrink(),
                                        EmrCardHeaderTextblock(
                                          controller: controller,
                                          title: widget.title,
                                          subtitle: widget.subtitle,
                                        ),
                                      ],
                                    ),
                                  ),
                                  widget.trailing ?? const SizedBox.shrink(),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Flexible(
                    child: Padding(
                      padding: widget.padding,
                      child: widget.child,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
