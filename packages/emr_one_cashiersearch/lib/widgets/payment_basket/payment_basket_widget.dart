import 'package:emr_one_cashiersearch/common/colors.dart';
import 'package:emr_one_cashiersearch/common/utility.dart';
import 'package:emr_one_cashiersearch/controllers/basket/basket_controller.dart';
import 'package:emr_one_cashiersearch/controllers/ticket_payment_controller.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';

class PaymentBasketWidget<T> extends StatelessWidget {
  const PaymentBasketWidget({
    required this.controller,
    required this.paymentController,
    required this.onTap,
    super.key,
  });

  final PaymentBasketController<T> controller;
  final ITicketPaymentController paymentController;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ValueListenableBuilder(
      valueListenable: controller.basketStateNotifier,
      builder: (context, basketState, _) {
        final itemCount = basketState.$1;
        final totalAmount = basketState.$2;
        final isEmpty = itemCount == 0;
        final colors = _BasketColors.fromTheme(theme, isEmpty: isEmpty);

        return InkWell(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          hoverColor: Colors.transparent,
          onTap: onTap,
          child: Container(
            padding: const EdgeInsets.all(Insets.gutter / 4),
            decoration: const BoxDecoration(),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              spacing: Insets.gutter / 2,
              children: [
                Badge(
                  backgroundColor: colors.countBg,
                  label: Text(
                    itemCount.toString(),
                    style: TextStyle(color: colors.countText, fontSize: 12),
                  ),
                  child: Container(
                    padding: const EdgeInsets.all(Insets.gutter / 4),
                    height: 46,
                    width: 46,
                    decoration: BoxDecoration(
                      color: colors.iconBg,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: colors.iconBorder),
                    ),
                    child: Icon(
                      isEmpty
                          ? Icons.shopping_cart_outlined
                          : Icons.shopping_cart,
                      color: colors.icon,
                      size: 24,
                    ),
                  ),
                ),
                Text(
                  TicketsUtility.getFormattedCompactCurrency(
                    context,
                    controller.getCurrencyCode?.call(
                      controller.basketItems.value.firstOrNull,
                    ),
                    totalAmount,
                  ),
                  style: TextStyle(color: colors.amountText, fontSize: 14),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

/// Helper for basket colors based on state
class _BasketColors {
  _BasketColors({
    required this.iconBg,
    required this.iconBorder,
    required this.icon,
    required this.countBg,
    required this.countText,
    required this.amountText,
  });

  factory _BasketColors.fromTheme(ThemeData theme, {required bool isEmpty}) {
    return _BasketColors(
      iconBg: isEmpty
          ? theme.colorScheme.surface
          : CashierSearchColors.plasticPines,
      iconBorder: isEmpty
          ? theme.colorScheme.onSurface.withValues(alpha: 0.5)
          : CashierSearchColors.plasticPines,
      icon: isEmpty
          ? theme.colorScheme.onSurface.withValues(alpha: 0.5)
          : CashierSearchColors.white,
      countBg: isEmpty
          ? CashierSearchColors.pearlPebble
          : theme.colorScheme.onSurface,
      countText: isEmpty
          ? theme.colorScheme.onSurface.withValues(alpha: 0.5)
          : theme.colorScheme.surface,
      amountText: isEmpty
          ? theme.colorScheme.onSurface.withValues(alpha: 0.5)
          : CashierSearchColors.plasticPines,
    );
  }
  final Color iconBg;
  final Color iconBorder;
  final Color icon;
  final Color countBg;
  final Color countText;
  final Color amountText;
}
