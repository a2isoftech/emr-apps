import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_flutter_theme/emr_flutter_theme.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_crm/emr_one_crm_constants.dart';
import 'package:emr_one_crm/screens/pricing-admin/components/copy_tag_dialog.dart';
import 'package:emr_one_crm/screens/pricing-admin/components/update_tag_dialog.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';

class TagIcon extends StatefulWidget {
  const TagIcon({
    required this.accountPrice,
    required this.coreApiService,
    required this.refresh,
    super.key,
  });
  final CoreApiService coreApiService;
  final AccountPrice accountPrice;
  final VoidCallback refresh;

  @override
  State<TagIcon> createState() => _TagIcon();
}

class _TagIcon extends State<TagIcon> {
  OverlayEntry? _tagIconOverLayEntry;

  void _showCustomPopup(BuildContext context, Offset offset) {
    _tagIconOverLayEntry = _createOverlayEntry(context, offset);
    Overlay.of(context).insert(_tagIconOverLayEntry!);
  }

  OverlayEntry _createOverlayEntry(BuildContext context, Offset offset) {
    return OverlayEntry(
      builder: (overlayContext) {
        final screenHeight = MediaQuery.of(overlayContext).size.height;
        const double limitHeightTo = 168;
        final overlayHeight =
            widget.accountPrice.tags.length >= 3 ? limitHeightTo : 0.0;
        final showAbove = offset.dy + overlayHeight > screenHeight;
        final positionTop =
            showAbove ? offset.dy - overlayHeight + Insets.gutter : offset.dy;
        return GestureDetector(
          behavior: HitTestBehavior.translucent,
          onTap: _removeOverlay,
          child: Stack(
            children: [
              Positioned(
                left: offset.dx,
                top: positionTop,
                child: Material(
                  borderRadius: BorderRadius.circular(Insets.gutter),
                  elevation: 4,
                  child: Container(
                    width: 500,
                    height: overlayHeight == 0.0 ? null : overlayHeight,
                    padding: const EdgeInsets.only(
                      top: Insets.gutter / 2,
                      bottom: Insets.gutter / 2,
                      left: Insets.gutter / 4,
                      right: Insets.gutter / 4,
                    ),
                    child: TagTooltip(
                      refresh: widget.refresh,
                      accountPrice: widget.accountPrice,
                      coreApiService: widget.coreApiService,
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
    _tagIconOverLayEntry?.remove();
    _tagIconOverLayEntry = null;
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: FaIcon(
        widget.accountPrice.tags.length == 1
            ? FontAwesomeIcons.tag
            : FontAwesomeIcons.tags,
        color: Theme.of(context).colorScheme.tertiary,
      ),
      onPressed: () {
        final renderBox = context.findRenderObject()! as RenderBox;
        final origin = renderBox.localToGlobal(Offset.zero);
        final position = Offset(origin.dx + renderBox.size.width, origin.dy);

        _showCustomPopup(
          context,
          position,
        );
      },
    );
  }
}

class TagTooltip extends StatelessWidget {
  const TagTooltip({
    required this.accountPrice,
    required this.closeOverlay,
    required this.coreApiService,
    required this.refresh,
    super.key,
  });

  final CoreApiService coreApiService;
  final AccountPrice accountPrice;
  final VoidCallback closeOverlay;
  final VoidCallback refresh;

  @override
  Widget build(BuildContext context) => _buildRows(context);

  Widget _buildRows(BuildContext context) {
    final children = <Widget>[];

    for (final tag in accountPrice.tags) {
      children.add(
        _TagToolipItem(
          coreApiService: coreApiService,
          accountPrice: accountPrice,
          tag: tag,
          closeOverlay: closeOverlay,
          onOperationSuccess: refresh,
        ),
      );
      children.add(const Divider());
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
    required this.tag,
    required this.accountPrice,
    required this.closeOverlay,
    required this.coreApiService,
    required this.onOperationSuccess,
  });

  final AccountPrice accountPrice;
  final CoreApiService coreApiService;
  final Tag tag;
  final VoidCallback closeOverlay;
  final VoidCallback onOperationSuccess;

  @override
  Widget build(BuildContext context) {
    final baseTheme = Theme.of(context).textTheme.labelMedium;
    final screenWidth = MediaQuery.of(context).size.width;
    final formatter =
        DateFormat.yMd(Localizations.localeOf(context).toString());

    final rateColour = tag.rate?.value == null
        ? null
        : tag.rate!.value < 0
            ? EmrColours.secondaryRed
            : EmrColours.primaryGreen;

    final dateRange =
        _buildDateRange(tag.effectiveFrom, tag.effectiveTo, formatter);
    final isCollected =
        tag.category.toLowerCase() == CrmDeliveryMethod.collected.name;
    final tagReason = isCollected
        ? (tag.fullyCharged ?? false)
            ? context.l10n.collectedFullyCharged
            : (tag.showToCustomer ?? false)
                ? context.l10n.collectedLessCharge
                : context.l10n.collected
        : tag.reason;
    return Row(
      children: [
        Row(
          children: [
            Visibility(
              visible: tag.category == EmrOneCrmConstants.legacy,
              child: Tooltip(
                message: context.l10n.legacyToolTipMsg,
                child: IconButton(
                  icon: Icon(
                    Icons.info,
                    color: Theme.of(context).colorScheme.tertiary,
                  ),
                  onPressed: null,
                ),
              ),
            ),
            Visibility(
              visible: tag.category != EmrOneCrmConstants.legacy &&
                  tag.category != EmrOneCrmConstants.systemGenerated,
              child: Tooltip(
                message: '${context.l10n.createdBy}: ${tag.createdBy}\n'
                    '${context.l10n.createdDate}: '
                    '${formatter.format(tag.createdDate!)}',
                child: IconButton(
                  icon: Icon(
                    Icons.info,
                    color: Theme.of(context).colorScheme.tertiary,
                  ),
                  onPressed: null,
                ),
              ),
            ),
          ],
        ),
        Expanded(
          flex: 2,
          child: Tooltip(
            message: tagReason.length >= 17 ? tagReason : '',
            child: Text(
              tagReason,
              style: baseTheme?.copyWith(fontWeight: FontWeight.bold),
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: Text(
            _getRateLabelContent(tag.rate),
            style: baseTheme?.copyWith(
              color: rateColour,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: Text(
            dateRange,
            style: baseTheme?.copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        Expanded(
          flex: 2,
          child: Row(
            children: [
              Visibility(
                visible: tag.category != EmrOneCrmConstants.legacy &&
                    tag.category != EmrOneCrmConstants.systemGenerated,
                child: IconButton(
                  icon: Icon(
                    Icons.delete_outline,
                    color: Theme.of(context).colorScheme.error,
                  ),
                  onPressed: () async {
                    closeOverlay();
                    final confirmed = await showDialog<bool>(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text(context.l10n.warningDeleteTag),
                          content: ConstrainedBox(
                            constraints: BoxConstraints(
                              maxWidth:
                                  screenWidth < 500 ? screenWidth * 0.9 : 400,
                            ),
                            child: Text(
                              isCollected
                                  ? context.l10n.removeCollectedTag
                                  : context.l10n.confirmTagDeleteMessage,
                            ),
                          ),
                          actions: [
                            TextButton(
                              onPressed: () => Navigator.of(context).pop(false),
                              child: Text(context.l10n.no),
                            ),
                            TextButton(
                              onPressed: () => Navigator.of(context).pop(true),
                              child: Text(context.l10n.yes),
                            ),
                          ],
                        );
                      },
                    );

                    if (confirmed != null && confirmed == true) {
                      final result = await coreApiService.pricingService
                          .delete(accountPrice.accountId, tag);
                      if (result) {
                        onOperationSuccess();
                      }
                    }
                  },
                ),
              ),
              Visibility(
                visible: tag.category.toLowerCase() !=
                    CrmDeliveryMethod.collected.name,
                child: IconButton(
                  onPressed: () {
                    closeOverlay();
                    UpdateTagDialog.show(
                      context: context,
                      coreApiService: coreApiService,
                      tag: tag,
                      accountPrice: accountPrice,
                    ).then((saved) {
                      if (saved ?? false) {
                        onOperationSuccess();
                      }
                    });
                  },
                  icon: const Icon(Icons.edit),
                  iconSize: kDefaultFontSize,
                  visualDensity: VisualDensity.compact,
                ),
              ),
              Visibility(
                visible: tag.category != EmrOneCrmConstants.legacy &&
                    tag.category.toLowerCase() !=
                        CrmDeliveryMethod.collected.name &&
                    !tag.effectiveTo.isAtSameMomentAs(
                      DateTime.utc(9999, 12, 31, 23, 59, 59, 999),
                    ),
                child: IconButton(
                  onPressed: () {
                    closeOverlay();
                    CopyTagDialog.show(
                      coreApiService: coreApiService,
                      accountPrice: accountPrice,
                      tag: tag,
                      context: context,
                    ).then((saved) {
                      if (saved ?? false) {
                        onOperationSuccess();
                      }
                    });
                  },
                  icon: const Icon(Icons.copy),
                  iconSize: kDefaultFontSize,
                  visualDensity: VisualDensity.compact,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  static String _getRateLabelContent(UomValue? uomValue) {
    if (uomValue == null) {
      return '';
    }

    final prefix = switch (uomValue.value) { > 0 => '+', _ => '' };

    return '$prefix${uomValue.value.toStringAsFixed(2)} / ${uomValue.uom.name.toUpperCase()}';
  }

  String _buildDateRange(
    DateTime effectiveFrom,
    DateTime effectiveTo,
    DateFormat formatter,
  ) {
    return '${formatter.format(effectiveFrom)}'
        ' - '
        '${formatter.format(effectiveTo)}';
  }
}
