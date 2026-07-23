import 'package:emr_one_core/controllers/settings_controller.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_sharedtypes/models/models.dart';
import 'package:flutter/material.dart';

class OrderBookRow extends StatelessWidget {
  const OrderBookRow({
    required this.settingsController,
    super.key,
  });

  final SettingsController settingsController;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              context.l10n.orderBook.toUpperCase(),
              style: EmrOneConstants.kSmallestHeadingTextStyle
                  .copyWith(color: Theme.of(context).colorScheme.onSurface),
            ),
            Text(
              context.l10n.defaultOrderbook,
              style: EmrOneConstants.kSmallSubtleTextStyle,
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(right: Insets.gutter / 2),
          child: GestureDetector(
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: Insets.gutter / 2,
                vertical: Insets.gutter / 4,
              ),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
                borderRadius: const BorderRadius.all(Radius.circular(4)),
              ),
              child: Text(
                settingsController.orderBookCode() == null ||
                        settingsController.orderBookCode() == 0
                    ? context.l10n.notSelected
                    : settingsController.orderBookCode()!.toString(),
                style: EmrOneConstants.kSmallestHeadingTextStyle.copyWith(
                  color: Theme.of(context).colorScheme.onPrimary,
                ),
              ),
            ),
            onTap: () async {
              final selection = await showSearch<OrderBook?>(
                context: context,
                delegate: EmrModalSearchDelegate(
                  (query) => Future<List<OrderBook>>.value(
                    settingsController.allowedOrderBooks(query),
                  ),
                  (item) => ListTile(
                    title: Text(item.name),
                    subtitle: Text(item.gradeType),
                  ),
                ),
              );

              if (selection != null) {
                await settingsController.updateOrderBookCode(selection.id);
              }
            },
          ),
        ),
      ],
    );
  }
}
