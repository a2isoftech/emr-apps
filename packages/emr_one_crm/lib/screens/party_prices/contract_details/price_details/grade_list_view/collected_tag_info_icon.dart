import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CollectedTagInfoIcon extends StatefulWidget {
  const CollectedTagInfoIcon({
    required this.rows,
    super.key,
  });

  final List<CollectedInfoRow> rows;

  @override
  State<CollectedTagInfoIcon> createState() => _CollectedTagInfoIconState();
}

class _CollectedTagInfoIconState extends State<CollectedTagInfoIcon> {
  OverlayEntry? _overlayEntry;

  void _showOverlay(BuildContext context, Offset offset) {
    _overlayEntry = _createOverlayEntry(context, offset);
    Overlay.of(context).insert(_overlayEntry!);
  }

  OverlayEntry _createOverlayEntry(BuildContext context, Offset offset) {
    const double rowHeight = 33;
    final screenHeight = MediaQuery.of(context).size.height;
    final totalHeight = widget.rows.length * rowHeight;
    final showAbove = offset.dy + totalHeight > screenHeight;
    final top = showAbove ? offset.dy - totalHeight : offset.dy + rowHeight;

    return OverlayEntry(
      builder: (context) => GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: _removeOverlay,
        child: Stack(
          children: [
            Positioned(
              left: offset.dx,
              top: top,
              child: Material(
                elevation: Insets.gutter / 4,
                borderRadius: BorderRadius.circular(Insets.gutter / 4),
                color: Theme.of(context).colorScheme.primary,
                child: Container(
                  width: 350,
                  padding: const EdgeInsets.all(Insets.gutter / 4),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              context.l10n.location,
                              style: Theme.of(context)
                                  .textTheme
                                  .labelLarge
                                  ?.copyWith(
                                    fontWeight: FontWeight.bold,
                                    color:
                                        Theme.of(context).colorScheme.onPrimary,
                                  ),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              context.l10n.collectedPrice,
                              textAlign: TextAlign.center,
                              style: Theme.of(context)
                                  .textTheme
                                  .labelLarge
                                  ?.copyWith(
                                    fontWeight: FontWeight.bold,
                                    color:
                                        Theme.of(context).colorScheme.onPrimary,
                                  ),
                            ),
                          ),
                          Expanded(
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Text(
                                context.l10n.haulageCharge,
                                style: Theme.of(context)
                                    .textTheme
                                    .labelLarge
                                    ?.copyWith(
                                      fontWeight: FontWeight.bold,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onPrimary,
                                    ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Divider(color: Theme.of(context).colorScheme.onPrimary),
                      for (final row in widget.rows)
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: Insets.gutter / 8,),
                          child: Row(
                            children: [
                              Expanded(
                                child: Text(
                                  row.location,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodySmall
                                      ?.copyWith(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .onPrimary,
                                      ),
                                ),
                              ),
                              Expanded(
                                child: Text(
                                  row.collectedPrice,
                                  textAlign: TextAlign.center,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodySmall
                                      ?.copyWith(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .onPrimary,
                                      ),
                                ),
                              ),
                              Expanded(
                                child: Align(
                                  alignment: Alignment.centerRight,
                                  child: Text(
                                    row.haulageCharge,
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodySmall
                                        ?.copyWith(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .onPrimary,
                                        ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                    ],
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
    return MouseRegion(
      onEnter: (event) {
        final renderBox = context.findRenderObject()! as RenderBox;
        final origin = renderBox.localToGlobal(Offset.zero);
        final position = Offset(origin.dx + renderBox.size.width, origin.dy);
        _showOverlay(context, position);
      },
      onExit: (_) => _removeOverlay(),
      child: FaIcon(
        FontAwesomeIcons.fileInvoice,
        color: Theme.of(context).colorScheme.tertiary,
      ),
    );
  }
}

class CollectedInfoRow {
  CollectedInfoRow({
    required this.location,
    required this.collectedPrice,
    required this.haulageCharge,
  });
  final String location;
  final String collectedPrice;
  final String haulageCharge;
}
