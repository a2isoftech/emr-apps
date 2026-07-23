import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_flutter_theme/emr_flutter_theme.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';

class ReadOnlyTagIcon extends StatefulWidget {
  const ReadOnlyTagIcon({
    required this.tags,
    super.key,
  });

  final List<Tag> tags;

  @override
  State<ReadOnlyTagIcon> createState() => _ReadOnlyTagIconState();
}

class _ReadOnlyTagIconState extends State<ReadOnlyTagIcon> {
  OverlayEntry? _overlayEntry;

  void _showCustomPopup(BuildContext context, Offset offset) {
    if(widget.tags.isEmpty){
      return;
    }
    _overlayEntry = _createOverlayEntry(context, offset);
    Overlay.of(context).insert(_overlayEntry!);
  }

  OverlayEntry _createOverlayEntry(BuildContext context, Offset offset) {
    return OverlayEntry(
      builder: (overlayContext) {
        return GestureDetector(
          behavior: HitTestBehavior.translucent,
          onTap: _removeOverlay,
          child: Stack(
            children: [
              Positioned(
                left: offset.dx,
                top: offset.dy,
                child: Material(
                  borderRadius: BorderRadius.circular(Insets.gutter),
                  elevation: 4,
                  child: Container(
                    width: 500,
                    padding: const EdgeInsets.all(Insets.gutter / 2),
                    child: ReadOnlyTagItem(
                      tags: widget.tags,
                      closeOverlay: _removeOverlay,
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
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
        widget.tags.length > 1 ? FontAwesomeIcons.tags : FontAwesomeIcons.tag,
        color: Theme.of(context).colorScheme.tertiary,
      ),
      onPressed: () {
        if (MediaQuery.sizeOf(context).width < 600) {
          return;
        }
        final renderBox = context.findRenderObject()! as RenderBox;
        final origin = renderBox.localToGlobal(Offset.zero);
        final position = Offset(origin.dx + renderBox.size.width, origin.dy);

        _showCustomPopup(context, position);
      },
    );
  }
}

class ReadOnlyTagItem extends StatelessWidget {
  const ReadOnlyTagItem({
    required this.tags,
    required this.closeOverlay,
    super.key,
  });

  final List<Tag> tags;
  final VoidCallback closeOverlay;

  @override
  Widget build(BuildContext context) {
    final children = <Widget>[];
    
    for (final tag in tags) {
      children.add(_ReadOnlyTagItem(tag: tag));
      children.add(const Divider());
    }

    children.removeLast();

    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: children,
      ),
    );
  }
}

class _ReadOnlyTagItem extends StatelessWidget {
  _ReadOnlyTagItem({required this.tag});

  final Tag tag;
  final _formatter = DateFormat('dd/MM/yyyy');

  @override
  Widget build(BuildContext context) {
    final baseTheme = Theme.of(context).textTheme.labelMedium;

    final rateColour = tag.rate?.value == null
        ? null
        : tag.rate!.value < 0
            ? EmrColours.secondaryRed
            : EmrColours.primaryGreen;

    final dateRange = _buildDateRange(tag.effectiveFrom, tag.effectiveTo);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          tag.reason,
          style: baseTheme?.copyWith(fontWeight: FontWeight.bold),
        ),
        Text(
          _getRateLabelContent(tag.rate),
          style: baseTheme?.copyWith(
            color: rateColour,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          dateRange,
          style: baseTheme?.copyWith(fontWeight: FontWeight.bold),
        ),
      ],
    );
  }

  String _getRateLabelContent(UomValue? uomValue) {
    if (uomValue == null) return '';
    final prefix = uomValue.value > 0 ? '+' : '';
    return '$prefix$uomValue';
  }

  String _buildDateRange(DateTime from, DateTime to) {
    return '${_formatter.format(from)} - ${_formatter.format(to)}';
  }
}
