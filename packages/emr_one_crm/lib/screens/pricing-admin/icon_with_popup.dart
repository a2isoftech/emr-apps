import 'package:emr_one_core/eo_constants.dart';
import 'package:emr_one_crm/models/guide_price_lists/guide_price_list_line.dart';
import 'package:emr_one_crm/screens/pricing-admin/gpl_screen_controller.dart';
import 'package:emr_one_crm/screens/pricing-admin/tag_tool_tip_content.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class IconWithPopup extends StatefulWidget {
  const IconWithPopup({
    required this.priceListId,
    required this.productCode,
    required this.tags,
    required this.controller,
    super.key,
  });
  final List<ItemTags> tags;
  final GplScreenController controller;
  final String priceListId;
  final String productCode;

  @override
  State<IconWithPopup> createState() => _IconWithPopupState();
}

class _IconWithPopupState extends State<IconWithPopup> {
  OverlayEntry? _overlayEntry;

  void _showCustomPopup(BuildContext context, Offset offset) {
    _overlayEntry = _createOverlayEntry(context, offset);
    Overlay.of(context).insert(_overlayEntry!);
  }

  OverlayEntry _createOverlayEntry(BuildContext context, Offset offset) {
    final tagWidgets = widget.tags
        .map(
          (item) => TagToolTipContent(
            priceListId: widget.priceListId,
            productCode: widget.productCode,
            tagDetail: item,
            controller: widget.controller,
            removeOverlay: _removeOverlay,
          ),
        )
        .toList();
    return OverlayEntry(
      builder: (context) => GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: _removeOverlay,
        child: Stack(
          children: [
            Positioned(
              left: offset.dx,
              top: offset.dy,
              child: Material(
                elevation: 4,
                child: Container(
                  padding: const EdgeInsets.all(Insets.gutter / 2),
                  height: tagWidgets.length < 4
                      ? tagWidgets.length == 1
                          ? Insets.gutter * 4
                          : Insets.gutter * 6
                      : Insets.gutter * 10,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Insets.gutter),
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: tagWidgets,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _removeOverlay() {
    _overlayEntry?.remove();
    _overlayEntry = null;
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: FaIcon(
        widget.tags.length == 1 ? FontAwesomeIcons.tag : FontAwesomeIcons.tags,
        color: Theme.of(context).colorScheme.tertiary,
      ),
      onPressed: () {
        final renderBox = context.findRenderObject()! as RenderBox;
        final offset = renderBox.localToGlobal(Offset.zero);
        _showCustomPopup(
          context,
          Offset(offset.dx + renderBox.size.width, offset.dy),
        );
      },
    );
  }
}
