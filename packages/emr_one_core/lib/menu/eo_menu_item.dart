import 'package:emr_one_core/menu/eo_app_menu.dart';
import 'package:emr_one_core/src/widgets/widgets.dart';
import 'package:emr_one_theme/emr_one_theme.dart';
import 'package:flutter/material.dart';

class EoMenuItem extends StatefulWidget {
  const EoMenuItem({
    required this.selected,
    required this.icon,
    required this.label,
    required this.mode,
    super.key,
    this.onTap,
    this.isSubMenu = false,
    this.colour,
    this.subMenuAccentColour,
  }) : assert(
          isSubMenu == false || subMenuAccentColour != null,
          'subMenuAccentColour must be provided when isSubMenu is true',
        );

  final bool selected;

  final IconData icon;

  final String label;

  final void Function()? onTap;

  final EoAppMenuMode mode;

  final bool isSubMenu;

  final Color? colour;

  final Color? subMenuAccentColour;

  @override
  State<EoMenuItem> createState() => _EoMenuItemState();
}

class _EoMenuItemState extends State<EoMenuItem> {
  bool _focused = false;

  static const kIconSize = 24.0;
  static const kIconContainerSize = 28.0;

  @override
  Widget build(BuildContext context) {
    final menuTheme = Theme.of(context).extension<EOMenuTheme>()!;

    final selectedBackgroundColour = menuTheme.selectedColour!.withAlpha(51);
    final hoverBackgroundColour = menuTheme.selectedColour!.withAlpha(26);

    var textStyle =
        widget.selected ? menuTheme.selectedTextStyle! : menuTheme.textStyle!;

    textStyle = widget.isSubMenu ? textStyle.copyWith(fontSize: 12) : textStyle;

    final iconSize = widget.isSubMenu ? 16.0 : kIconSize;

    return GestureDetector(
      onTap: widget.onTap,
      child: FocusableActionDetector(
        mouseCursor: SystemMouseCursors.click,
        onShowFocusHighlight: (value) => setState(() => _focused = value),
        onShowHoverHighlight: (value) => setState(() => _focused = value),
        actions: {
          ActivateIntent: CallbackAction<Intent>(
            onInvoke: (_) => widget.onTap?.call(),
          ),
          ButtonActivateIntent: CallbackAction<Intent>(
            onInvoke: (_) => widget.onTap?.call(),
          ),
        },
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: widget.selected
                ? selectedBackgroundColour
                : _focused
                    ? hoverBackgroundColour
                    : null,
            border: Border(
              left: BorderSide(
                color: widget.selected
                    ? menuTheme.selectedColour!
                    : widget.isSubMenu
                        ? widget.subMenuAccentColour!
                        : Colors.transparent,
                width: widget.isSubMenu ? 3 : 6,
              ),
            ),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(
              vertical: menuTheme.padding,
              horizontal: menuTheme.padding,
            ),
            child: Row(
              mainAxisAlignment:
                  widget.mode == EoAppMenuMode.iconAndLabelVertical
                      ? MainAxisAlignment.center
                      : MainAxisAlignment.start,
              children: [
                if (widget.mode == EoAppMenuMode.iconAndLabelVertical)
                  SizedBox(
                    width: 70,
                    height: 66,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: kIconContainerSize,
                          height: kIconContainerSize,
                          child: Center(
                            child: EmrIcon(
                              widget.icon,
                              size: iconSize,
                              color: widget.selected
                                  ? menuTheme.selectedColour!
                                  : widget.colour,
                            ),
                          ),
                        ),
                        Text(
                          widget.label,
                          style: const TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                          overflow: TextOverflow.clip,
                        ),
                      ],
                    ),
                  ),
                if (widget.mode == EoAppMenuMode.iconAndLabel) ...[
                  SizedBox(
                    width: 48,
                    height: 48,
                    child: Center(
                      child: EmrIcon(
                        widget.icon,
                        size: iconSize,
                        color: widget.selected
                            ? menuTheme.selectedColour!
                            : widget.colour,
                      ),
                    ),
                  ),
                  SizedBox(width: menuTheme.padding * 1.5),
                  Expanded(
                    child: Text(
                      widget.label,
                      style: textStyle.copyWith(
                        color:
                            widget.selected ? menuTheme.selectedColour! : null,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ],
            ),
          ),
        ),
      ),
    );
  }
}
