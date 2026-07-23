import 'package:emr_one_cashiersearch/controllers/ticket_payment_controller.dart';
import 'package:emr_one_cashiersearch/widgets/row_divider_with_title.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_sharedtypes/enums/payment_method.dart';
import 'package:flutter/material.dart';

class SecorePrePayCardDetailsForm extends StatelessWidget {
  const SecorePrePayCardDetailsForm({
    required this.paymentController,
    required this.selectedMode,
    required this.formKey,
    super.key,
  });

  final PaymentMethod? selectedMode;
  final ITicketPaymentController paymentController;
  final GlobalKey<FormState> formKey;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RowDividerWithTitle(label: context.l10n.prepayCardDetails),
        const SizedBox(height: Insets.gutter / 2),
        Form(
          key: formKey,
          child: Column(
            children: [
              EmrTextFormField<String>(
                binding: paymentController.cardId,
                labelText: context.l10n.cardId,
                hintText: context.l10n.cardHint,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (cardNumber) {
                  // if (value == PaymentMode.prepayCard) {
                  if (cardNumber?.isEmpty ?? true) {
                    return context.l10n.pleaseEnterCardNumber;
                  } else if (!RegExp(
                    r'^[A-Za-z]\d{5}$',
                  ).hasMatch(cardNumber!)) {
                    return context.l10n.enterValidSecoreCardNumber;
                  }

                  return null;
                },
              ),
              const SizedBox(height: Insets.gutter / 4),
              EmrTextFormField<String>(
                binding: paymentController.lastFourCardDigits,
                labelText: context.l10n.cardLastFourDigits,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (digitValue) {
                  if (selectedMode == PaymentMethod.secorePrepayCard) {
                    if (digitValue?.isEmpty ?? true) {
                      return context.l10n.enterLastFourDigits;
                    }
                    if (!RegExp(r'^[0-9]{4}?$').hasMatch(digitValue!)) {
                      return context.l10n.enterLastFourDigits;
                    }
                  }
                  return null;
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
