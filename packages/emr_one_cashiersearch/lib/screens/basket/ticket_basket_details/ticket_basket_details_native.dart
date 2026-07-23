import 'package:emr_one_cashiersearch/constants/ticket_constants.dart';
import 'package:emr_one_cashiersearch/controllers/basket/basket_controller.dart';
import 'package:emr_one_cashiersearch/models/ticket.dart';
import 'package:emr_one_cashiersearch/screens/basket/basket_detail_page.dart';
import 'package:emr_one_cashiersearch/screens/basket/ticket_basket_details/ticket_basket_details_common.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TicketBasketDetailsNative extends TicketBasketDetailsCommon {
  const TicketBasketDetailsNative({super.key});

  @override
  State<PaymentBasketDetailsPage<Ticket>> createState() =>
      _TicketBasketDetailsNativeState();
}

class _TicketBasketDetailsNativeState
    extends TicketBasketDetailsCommonState<TicketBasketDetailsNative> {
  @override
  Widget build(BuildContext context) {
    return Consumer<PaymentBasketController<Ticket>>(
      builder: (context, controller, child) {
        return Column(
          children: [
            Expanded(
              child: SizedBox(
                width: TicketConstants.kDefaultPaymentPanelWidth,
                child: paymentBreakdown(controller),
              ),
            ),
            const SizedBox(
              height: Insets.gutter,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                verticalIconBtn(
                  label: context.l10n.clearBasket,
                  icon: Icons.delete,
                  onPressed: controller.basketItems.value.isNotEmpty
                      ? () {
                          controller.clearBasketItems();
                          Navigator.of(context).pop();
                        }
                      : null,
                ),
                verticalIconBtn(
                  label: context.l10n.addTickets,
                  icon: Icons.add,
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
                FilledButton(
                  style: EmrButtonStyles.cta(),
                  onPressed: controller.basketItems.value.isEmpty
                      ? null
                      : () async {
                          final success = await onPayClick(
                            controller.basketItems.value,
                          );
                          if (success) {
                            controller.clearBasketItems();
                            controller.clearSelectedItems();
                            if (!context.mounted) return;
                            Navigator.of(context).pop();
                          }
                        },
                  child: Text(context.l10n.payNow),
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
