import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_sharedtypes/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CollectedTagIcon extends StatefulWidget {
  const CollectedTagIcon({
    required this.accountPrice,
    required this.coreApiService,
    required this.refresh,
    required this.activeEntries,
    super.key,
  });
  final CoreApiService coreApiService;
  final AccountPrice accountPrice;
  final VoidCallback refresh;
  final List<OverlayEntry> activeEntries;

  @override
  State<CollectedTagIcon> createState() => _CollectedTagIcon();
}

class _CollectedTagIcon extends State<CollectedTagIcon> {
  late OverlayEntry? _localOverLayEntry;
  void _showCustomPopup(BuildContext context, Offset offset) {
    _removeOverlay();
    _localOverLayEntry = _createOverlayEntry(context, offset);
    Overlay.of(context).insert(_localOverLayEntry!);
    widget.activeEntries.add(_localOverLayEntry!);
  }

  OverlayEntry _createOverlayEntry(BuildContext context, Offset offset) {
    return OverlayEntry(
      builder: (overlayContext) {
        final screenHeight = MediaQuery.of(overlayContext).size.height;
        final showDetails = widget.accountPrice.tags
            .where(
              (item) =>
                  item.category == 'Collected' &&
                  item.accountLocationKeys != null &&
                  item.accountLocationKeys!.isNotEmpty &&
                  (item.effectiveFrom.toLocal().isBefore(DateTime.now()) ||
                      (item.effectiveFrom.year == DateTime.now().year &&
                          item.effectiveFrom.month == DateTime.now().month &&
                          item.effectiveFrom.day == DateTime.now().day)) &&
                  (item.effectiveTo.toLocal().isAfter(DateTime.now()) ||
                      (item.effectiveTo.year == DateTime.now().year &&
                          item.effectiveTo.month == DateTime.now().month &&
                          item.effectiveTo.day == DateTime.now().day)),
            )
            .map((x) => x);
        final noOfRows = showDetails
            .expand<String>(
              (t) => t.accountLocationKeys ?? const <String>[],
            )
            .length;
        const limitHeightTo = 150.00;
        final overlayHeight = noOfRows >= 4 ? limitHeightTo : 0.0;
        final showAbove = offset.dy + overlayHeight > screenHeight;
        final positionTop =
            showAbove ? offset.dy - (overlayHeight / 2) : offset.dy;
        return GestureDetector(
          behavior: HitTestBehavior.translucent,
          onTap: _removeOverlay,
          child: Stack(
            children: [
              Positioned(
                left: offset.dx,
                top: positionTop,
                height: overlayHeight == 0.0 ? null : overlayHeight,
                child: Material(
                  borderRadius: BorderRadius.circular(Insets.gutter / 4),
                  color: Theme.of(context).colorScheme.primary,
                  elevation: 4,
                  child: Container(
                    width: 500,
                    padding: const EdgeInsets.all(
                      Insets.gutter / 4,
                    ),
                    child: CollectedTagDetails(
                      refresh: widget.refresh,
                      accountPrice: widget.accountPrice,
                      coreApiService: widget.coreApiService,
                      closeOverlay: _removeOverlay,
                      tagList: showDetails.toList(),
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
    for (final entry in widget.activeEntries) {
      entry.remove();
    }
    widget.activeEntries.clear();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent, // Detects clicks on empty space
      onTap: _removeOverlay,
      child: MouseRegion(
        onEnter: (event) {
          final renderBox = context.findRenderObject()! as RenderBox;
          final origin = renderBox.localToGlobal(Offset.zero);
          final position = Offset(origin.dx + renderBox.size.width, origin.dy);

          _showCustomPopup(context, position);
        },
        cursor: SystemMouseCursors.click,
        child: FaIcon(
          FontAwesomeIcons.fileInvoice,
          color: Theme.of(context).colorScheme.tertiary,
        ),
      ),
    );
  }
}

class CollectedTagDetails extends StatelessWidget {
  const CollectedTagDetails({
    required this.accountPrice,
    required this.closeOverlay,
    required this.coreApiService,
    required this.refresh,
    required this.tagList,
    super.key,
  });

  final CoreApiService coreApiService;
  final AccountPrice accountPrice;
  final List<Tag> tagList;
  final VoidCallback closeOverlay;
  final VoidCallback refresh;

  @override
  Widget build(BuildContext context) => _buildRows(context);

  Widget _buildRows(BuildContext context) {
    final children = <Widget>[];

    children.add(
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Text(
                context.l10n.location,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.onPrimary,
                ),
              ),
            ],
          ),
          Column(
            children: [
              Text(
                context.l10n.collectedPrice,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.onPrimary,
                ),
              ),
            ],
          ),
          Column(
            children: [
              Text(
                context.l10n.haulageCharge,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.onPrimary,
                ),
              ),
            ],
          ),
        ],
      ),
    );
    children.add(Divider(color: Theme.of(context).colorScheme.onPrimary));

    for (final tag in tagList) {
      final collectedPrice = accountPrice.resultantPrice!.uom == Uom.mt
          ? accountPrice.resultantPrice!.mtValue + tag.rate!.mtValue
          : accountPrice.resultantPrice!.value + tag.rate!.value;
      final haulageRate = tag.haulageRate?.value ?? 0; 
      for (final location in tag.accountLocationKeys!) {
        children.add(
          _TagToolipItem(
            coreApiService: coreApiService,
            accountPrice: accountPrice,
            location: location,
            collectedPrice: (tag.rate?.uom != accountPrice.resultantPrice?.uom)
                ? '${accountPrice.resultantPrice?.value.toStringAsFixed(2)} / ${accountPrice.resultantPrice?.uom.name.toUpperCase()}'
                : '${collectedPrice.toStringAsFixed(2)} / ${accountPrice.resultantPrice?.uom.name.toUpperCase()}',
            haulageCharge: tag.showToCustomer != true || haulageRate == 0
                ? '-'
                : '${tag.haulageRate!.value.toStringAsFixed(2).replaceFirst('-', '')} / ${tag.haulageRate!.uom.name.toUpperCase()}',
            closeOverlay: closeOverlay,
            onOperationSuccess: refresh,
          ),
        );
      }

      children.add(Divider(color: Theme.of(context).colorScheme.onPrimary));
    }

    //remove the divider added underneath the final item
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

class _TagToolipItem extends StatelessWidget {
  const _TagToolipItem({
    required this.location,
    required this.haulageCharge,
    required this.collectedPrice,
    required this.accountPrice,
    required this.closeOverlay,
    required this.coreApiService,
    required this.onOperationSuccess,
  });

  final AccountPrice accountPrice;
  final CoreApiService coreApiService;
  final String location;
  final String haulageCharge;
  final String collectedPrice;
  final VoidCallback closeOverlay;
  final VoidCallback onOperationSuccess;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Text(
                location,
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Theme.of(context).colorScheme.onPrimary,
                ),
              ),
            ),
            Expanded(
              child: Text(
                collectedPrice,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Theme.of(context).colorScheme.onPrimary,
                ),
              ),
            ),
            Expanded(
              child: Align(
                alignment: Alignment.centerRight,
                child: Text(
                  haulageCharge,
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
