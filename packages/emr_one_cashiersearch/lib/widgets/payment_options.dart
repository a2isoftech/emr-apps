import 'package:emr_one_cashiersearch/controllers/ticket_payment_controller.dart';
import 'package:emr_one_cashiersearch/models/account.dart';
import 'package:emr_one_cashiersearch/widgets/payment_mode_control_widget.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_sharedtypes/enums/payment_method.dart';
import 'package:flutter/material.dart';

class TicketPaymentOption extends StatelessWidget {
  const TicketPaymentOption({
    required this.isEnabled,
    required this.isPayable,
    required this.onPaymentModeChanged,
    required this.paymentController,
    this.accountDetails,
    this.defaultOption,
    this.currency,
    super.key,
  });

  final void Function(
    PaymentMethod? paymentMode, {
    required bool shouldInvokeParent,
  }) onPaymentModeChanged;
  final bool isEnabled;
  final bool isPayable;
  final PaymentMethod? defaultOption;
  final String? currency;
  final ITicketPaymentController paymentController;
  final Account? accountDetails;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          context.l10n.paymentMethod,
          style: Theme.of(context).textTheme.titleLarge,
          textAlign: TextAlign.left,
        ),
        const SizedBox(height: Insets.gutter / 2),
        PaymentModeControlWidget(
          accountDetails: accountDetails,
          paymentController: paymentController,
          isEnabled: isEnabled,
          isPayable: isPayable,
          defaultSelectedMode: defaultOption,
          onModeSelect: _setPayementMode,
          currencyCode: currency,
        ),
      ],
    );
  }

  Future<void> _setPayementMode(
    PaymentMethod? mode, {
    required bool shouldInvokeParent,
  }) async {
    if (isEnabled) {
      onPaymentModeChanged.call(mode, shouldInvokeParent: shouldInvokeParent);
    }
  }
}
