import 'package:emr_one_cashiersearch/common/utility.dart';
import 'package:emr_one_cashiersearch/controllers/basket/basket_controller.dart';
import 'package:emr_one_cashiersearch/mixin/ticket_payment_mixin.dart';
import 'package:emr_one_cashiersearch/models/account.dart';
import 'package:emr_one_cashiersearch/models/payment_deductions.dart';
import 'package:emr_one_cashiersearch/models/payment_record.dart';
import 'package:emr_one_cashiersearch/models/ticket.dart';
import 'package:emr_one_cashiersearch/screens/basket/basket_detail_page.dart';
import 'package:emr_one_cashiersearch/widgets/payment_basket/ticket_basket_payment_breakdown.dart';
import 'package:emr_one_cashiersearch/widgets/ticket_card.dart';
import 'package:emr_one_core/widgets/card/emr_card_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

abstract class TicketBasketDetailsCommon
    extends PaymentBasketDetailsPage<Ticket> {
  const TicketBasketDetailsCommon({super.key});
}

abstract class TicketBasketDetailsCommonState<
  T extends TicketBasketDetailsCommon
>
    extends PaymentBasketDetailsPageState<Ticket, T>
    with TicketPaymentMixin {
  late final PaymentBasketController<Ticket> basketController;
  final ValueNotifier<bool> triggerChildNotifier = ValueNotifier(false);
  final ValueNotifier<Ticket?> removeFromBasketNotifier = ValueNotifier(null);

  @override
  void initState() {
    basketController = Provider.of<PaymentBasketController<Ticket>>(
      context,
      listen: false,
    );
    if (basketController.basketItems.value.isNotEmpty) {
      _setValues(
        basketController.basketItems.value.first.account.details,
        null,
      );
      paymentType = PaymentType.ticket;
    }
    paymentDeduction = null;
    basketController.canPay.value = false;
    super.initState();
  }

  @override
  Widget getCard(Ticket item, PaymentBasketController<Ticket> controller) {
    return TicketCard(
      key: UniqueKey(),
      ticket: item,
      toggleController: EmrCardController(),
      paymentController: paymentController,
      canSelect: (_) => false,
      isBasketView: true,
      onRefresh: refresh,
      isCloudTicket: true,
      onDelete: (ticket) => removeFromBasketNotifier.value = ticket,
    );
  }

  void refresh() {
    triggerChildNotifier.value = !triggerChildNotifier.value;
  }

  @override
  Future<bool> onPayClick(List<Ticket> items) async {
    if (paymentDeduction == null) {
      throw Exception('Payment cannot be processed');
    }

    if (!checkAllRequiredFields(
      paymentController.paymentModeSelected,
      account!,
    )) {
      return false;
    }

    paymentController.isBusy.value = true;
    final paymentMode = paymentController.paymentModeSelected;
    try {
      showLoadingIndicator();
      final isAuthRequired = await paymentController
          .isPaymentAuthorizationRequired(
            paymentDeduction!.netPaid,
            paymentMode,
            paymentController.yard!.yardCode,
          );

      return await startPayment(
        paymentMode: paymentMode,
        isAuthRequired: isAuthRequired,
        yardCode: paymentController.yard!.yardCode,
      );
    } catch (ex) {
      if (!mounted) return false;
      await TicketsUtility.errorDialogWidget(context, ex.toString());
    } finally {
      paymentController.isBusy.value = false;
      hideLoadingIndicator();
    }
    return false;
  }

  @override
  Widget paymentBreakdown(PaymentBasketController<Ticket> controller) =>
      TicketBasketPaymentBreakdown(
        selectedTickets: controller.basketItems.value,
        paymentController: paymentController,
        basketController: basketController,
        onRefresh: _setValues,
        triggerRefresh: triggerChildNotifier,
        removeFromBasketNotifier: removeFromBasketNotifier,
      );

  void _setValues(Account? newAccount, PaymentDeductions? paymentDeduction) {
    account = newAccount;
    currency = basketController.basketItems.value.first.currency;
    displayIds = basketController.basketItems.value
        .map((ticket) => '${ticket.yardCode}-${ticket.ticketNumber}')
        .toList();
    transactionIds = basketController.basketItems.value
        .map((ticket) => ticket.id)
        .toList();
    this.paymentDeduction = paymentDeduction;
  }
}
