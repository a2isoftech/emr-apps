import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_crm/models/guide_price_lists/guide_price_list_line.dart';
import 'package:emr_one_crm/screens/pricing-admin/adjust_price.dart';
import 'package:emr_one_crm/screens/pricing-admin/edit_tag.dart';
import 'package:emr_one_crm/screens/pricing-admin/gpl_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TagToolTipContent extends StatelessWidget {
  const TagToolTipContent({
    required this.priceListId,
    required this.productCode,
    required this.tagDetail,
    required this.controller,
    required this.removeOverlay,
    super.key,
  });

  final ItemTags tagDetail;
  final GplScreenController controller;
  final void Function() removeOverlay;
  final String priceListId;
  final String productCode;

  @override
  Widget build(BuildContext context) {
    final startDate = DateFormat.yMd(Localizations.localeOf(context).toString())
        .format(tagDetail.startDate.dateOnly);
    final endDate = DateFormat.yMd(Localizations.localeOf(context).toString())
        .format(tagDetail.endDate.dateOnly);
    final reason = _truncateWithEllipsis(tagDetail.reason, 35);
    final tagRow = '$reason | $startDate - $endDate | ${tagDetail.rate}';
    return Row(
      children: [
        IconButton(
          onPressed: tagDetail.endDate.isAfter(DateTime.now())
              ? () {
                  showDialog<void>(
                    context: context,
                    builder: (BuildContext context) {
                      removeOverlay();
                      return EditTag(
                        controller: controller,
                        priceListId: priceListId,
                        productCode: productCode,
                        tagId: tagDetail.id,
                        startDate: tagDetail.startDate,
                        endDate: tagDetail.endDate,
                      );
                    },
                  );
                }
              : null,
          icon: const Icon(
            Icons.edit,
            size: kDefaultFontSize,
          ),
        ),
        IconButton(
          onPressed: () {
            showDialog<void>(
              context: context,
              builder: (BuildContext context) {
                removeOverlay();
                return AdjustPrice(
                  gridController: controller.gridController,
                  controller: controller,
                  title: context.l10n.copyTag,
                  tagDetail: tagDetail,
                  priceListId: priceListId,
                  productCode: productCode,
                );
              },
            );
          },
          icon: const Icon(
            Icons.copy,
            size: kDefaultFontSize,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: Insets.gutter),
          child: Text(
            tagRow,
            style: const TextStyle(fontSize: kDefaultFontSize),
          ),
        ),
      ],
    );
  }

  String _truncateWithEllipsis(String text, int cutoff) {
    return text.length <= cutoff ? text : '${text.substring(0, cutoff)}...';
  }
}
