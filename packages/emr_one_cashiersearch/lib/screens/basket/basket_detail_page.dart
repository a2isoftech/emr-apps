import 'dart:async';

import 'package:emr_one_cashiersearch/constants/ticket_constants.dart';
import 'package:emr_one_cashiersearch/controllers/basket/basket_controller.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/widgets/grid/emr_card_view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

abstract class PaymentBasketDetailsPage<T> extends StatefulWidget {
  const PaymentBasketDetailsPage({super.key});
}

abstract class PaymentBasketDetailsPageState<
  T,
  TWidget extends PaymentBasketDetailsPage<T>
>
    extends State<TWidget> {
  late final EmrGridController<T> _gridController;

  @override
  void initState() {
    super.initState();
    final controller = Provider.of<PaymentBasketController<T>>(
      context,
      listen: false,
    );
    _gridController = EmrGridController<T>(
      data: controller.basketItems,
      selectedRows: controller.basketItems.value,
      rowSelectionMode: RowSelectionMode.multiple,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<PaymentBasketController<T>>(
      builder: (context, controller, child) {
        return Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: Insets.gutter,
            vertical: Insets.gutter / 2,
          ),
          child: Column(
            children: [
              Expanded(
                flex: 95,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            context.l10n.paymentBasket,
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                          Expanded(
                            child: EmrCardView<T>(
                              key: widget.key,
                              buildItem: (controller1, item, index) {
                                return getCard(item, controller);
                              },
                              controller: _gridController,
                              verticalPadding: 2,
                              horizontalPadding: 0,
                              noRecordsMessage: Text(
                                context.l10n.emptyBasketMessage,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: TicketConstants.kDefaultPaymentPanelWidth,
                      child: paymentBreakdown(controller),
                    ),
                  ],
                ),
              ),
              const Divider(),
              Expanded(
                flex: 5,
                child: Row(
                  spacing: Insets.gutter / 2,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: controller.basketItems.value.isEmpty
                          ? null
                          : () {
                              controller.clearBasketItems();
                              Navigator.of(context).pop();
                            },
                      style: ButtonStyle(
                        side: WidgetStateProperty.resolveWith<BorderSide?>(
                          (states) => BorderSide(
                            color: states.contains(WidgetState.disabled)
                                ? Theme.of(context).disabledColor
                                : Theme.of(context).colorScheme.onSurface,
                          ),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: Insets.gutter / 2,
                        ),
                        child: Text(context.l10n.clearBasket),
                      ),
                    ),
                    TextButton(
                      onPressed: () => Navigator.of(context).pop(),
                      style: ButtonStyle(
                        side: WidgetStateProperty.resolveWith<BorderSide?>(
                          (states) => BorderSide(
                            color: states.contains(WidgetState.disabled)
                                ? Theme.of(context).disabledColor
                                : Theme.of(context).colorScheme.onSurface,
                          ),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: Insets.gutter / 2,
                        ),
                        child: Text(getBackButtonText()),
                      ),
                    ),
                    ValueListenableBuilder(
                      valueListenable: controller.canPay,
                      builder: (context, value, child) {
                        return FilledButton(
                          onPressed: value
                              ? () async {
                                  final success = await onPayClick(
                                    controller.basketItems.value,
                                  );
                                  if (success) {
                                    controller.clearBasketItems();
                                    controller.clearSelectedItems();
                                    if (!context.mounted) return;
                                    unawaited(Navigator.of(context).maybePop());
                                  }
                                }
                              : null,
                          style: controller.basketItems.value.isEmpty
                              ? null
                              : EmrButtonStyles.cta(),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: Insets.gutter / 2,
                            ),
                            child: Text(context.l10n.payNow),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget verticalIconBtn({
    required void Function()? onPressed,
    required IconData icon,
    required String label,
  }) {
    return TextButton(
      onPressed: onPressed,
      style: Theme.of(context).textButtonTheme.style!.copyWith(
        overlayColor: WidgetStateProperty.all(Colors.transparent),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        spacing: Insets.gutter / 2,
        children: [Icon(icon, size: 22), Text(label)],
      ),
    );
  }

  String getBackButtonText() {
    return context.l10n.addTickets;
  }

  Widget getCard(T item, PaymentBasketController<T> controller);

  Widget paymentBreakdown(PaymentBasketController<T> controller);

  Future<bool> onPayClick(List<T> items);

  bool isLoadingIndicatorVisible = false;

  void showLoadingIndicator() {
    if (mounted && !isLoadingIndicatorVisible) {
      isLoadingIndicatorVisible = true;
      unawaited(EmrDialog.busy(context, titleText: ''));
    }
  }

  void hideLoadingIndicator() {
    if (mounted && isLoadingIndicatorVisible) {
      isLoadingIndicatorVisible = false;
      context.pop();
    }
  }
}
