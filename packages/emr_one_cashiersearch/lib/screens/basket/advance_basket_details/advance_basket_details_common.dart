import 'package:emr_one_cashiersearch/common/utility.dart';
import 'package:emr_one_cashiersearch/controllers/basket/basket_controller.dart';
import 'package:emr_one_cashiersearch/mixin/ticket_payment_mixin.dart';
import 'package:emr_one_cashiersearch/models/account.dart';
import 'package:emr_one_cashiersearch/models/advance.dart';
import 'package:emr_one_cashiersearch/models/payment_deductions.dart';
import 'package:emr_one_cashiersearch/models/payment_record.dart';
import 'package:emr_one_cashiersearch/screens/basket/basket_detail_page.dart';
import 'package:emr_one_cashiersearch/widgets/advance_basket_payment_breakdown.dart';
import 'package:emr_one_cashiersearch/widgets/advances_card.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/widgets/card/emr_card_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

abstract class AdvanceBasketDetailsCommon
    extends PaymentBasketDetailsPage<Advance> {
  const AdvanceBasketDetailsCommon({super.key});
}

abstract class AdvanceBasketDetailsCommonState<
  T extends AdvanceBasketDetailsCommon
>
    extends PaymentBasketDetailsPageState<Advance, T>
    with TicketPaymentMixin {
  late final PaymentBasketController<Advance> basketController;

  @override
  void initState() {
    super.initState();

    basketController = Provider.of<PaymentBasketController<Advance>>(
      context,
      listen: false,
    );
    if (basketController.basketItems.value.isNotEmpty) {
      _setValues(basketController.basketItems.value.first.account, null);
      paymentType = PaymentType.advance;
    }
    paymentDeduction = null;
    basketController.canPay.value = false;
  }

  @override
  String getBackButtonText() {
    return context.l10n.back;
  }

  @override
  Widget getCard(Advance item, PaymentBasketController<Advance> controller) =>
      AdvancesCard(
        advance: item,
        toggleController: EmrCardController(),
        canSelect: (_) => false,
      );

  @override
  Widget paymentBreakdown(PaymentBasketController<Advance> controller) =>
      AdvanceBasketPaymentBreakdown(
        advances: controller.basketItems.value,
        paymentController: paymentController,
        basketController: basketController,
        onRefresh: _setValues,
      );

  @override
  Future<bool> onPayClick(List<Advance> items) async {
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
    final paymentMethod = paymentController.paymentModeSelected;
    try {
      showLoadingIndicator();
      final isAuthRequired = await paymentController
          .isPaymentAuthorizationRequired(
            paymentDeduction!.netPaid,
            paymentMethod,
            paymentController.yard!.yardCode,
          );

      return await startPayment(
        paymentMode: paymentMethod,
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

  void _setValues(Account? newAccount, PaymentDeductions? paymentDeduction) {
    account = newAccount;
    currency =
        basketController.basketItems.value.first.paymentAmount.currencyCode;
    displayIds = basketController.basketItems.value
        .map((advance) => advance.accountId.split('/').last)
        .toList();
    transactionIds = basketController.basketItems.value
        .map((ticket) => ticket.id)
        .toList();
    this.paymentDeduction = paymentDeduction;
  }
}
