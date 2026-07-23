import 'package:emr_one_cashiersearch/controllers/ticket_payment_controller.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_sharedtypes/enums/payment_method.dart';
import 'package:flutter/material.dart';

class ChequeDetailsForm extends StatelessWidget {
  const ChequeDetailsForm({
    required this.selectedMode,
    required this.paymentController,
    required this.formKey,
    this.payeeName = '',
    super.key,
  });

  final ITicketPaymentController paymentController;
  final PaymentMethod? selectedMode;
  final GlobalKey<FormState> formKey;
  final String payeeName;

  @override
  Widget build(BuildContext context) {
    if (paymentController.payeeName.value.isEmpty) {
      paymentController.payeeName.value = payeeName;
    }
    return Form(
      key: formKey,
      child: Column(
        children: [
          EmrTextFormField<String>(
            readOnly: ValueNotifier(
              selectedMode == PaymentMethod.autoCheque,
            ),
            binding: paymentController.payeeName,
            labelText: context.l10n.payeeName,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            validator: (name) {
              if (selectedMode == PaymentMethod.manualCheque) {
                if (name?.isEmpty ?? true) {
                  return context.l10n.pleaseEnterPayeeName;
                }
              }
              return null;
            },
          ),
          const SizedBox(
            height: Insets.gutter / 2,
          ),
          EmrTextFormField<String>(
            readOnly: ValueNotifier(
              selectedMode == PaymentMethod.autoCheque,
            ),
            binding: paymentController.chequeNumber,
            labelText: context.l10n.manualChequeNumber,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            validator: (chequeNo) {
              if (selectedMode == PaymentMethod.manualCheque) {
                if (chequeNo?.isEmpty ?? true) {
                  return context.l10n.pleaseEnterChequeNumber;
                }
              }
              return null;
            },
          ),
        ],
      ),
    );
  }
}
