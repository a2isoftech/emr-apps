import 'package:emr_one_cashiersearch/emr_one_cashiersearch.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_sharedtypes/enums/payment_method.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SplitPaymentListItem extends StatelessWidget {
  const SplitPaymentListItem({
    required this.model,
    required this.paymentController,
    required this.maxLength,
    this.payeeName = '',
    this.currencyCode,
    this.account,
    super.key,
  });
  final SplitPaymentFormItem model;
  final ITicketPaymentController paymentController;
  final String payeeName;
  final String? currencyCode;
  final Account? account;
  final int maxLength;

  @override
  Widget build(BuildContext context) {
    final activeCard = paymentController.getPrepaymentCardForAccount(account);
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(Insets.gutter / 2),
        child: ValueListenableBuilder<bool>(
          valueListenable: model.checked,
          builder: (context, isChecked, _) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Checkbox(
                          value: isChecked,
                          onChanged: (v) => model.checked.value = v ?? false,
                        ),
                        const SizedBox(width: Insets.gutter / 2),
                        Text(
                          TicketsUtility.getPaymentName(
                            model.paymentMethod,
                            context,
                          ),
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                      ],
                    ),
                    if (isChecked)
                      SizedBox(
                        width: TicketConstants.kSplitPaymentAmountFieldWidth,
                        child: EmrTextFormField(
                          prefix: Text(
                            TicketsUtility.getCurrencySymbol(
                              context,
                              currencyCode ?? '',
                            ),
                          ),
                          binding: model.amount,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(maxLength),
                          ],
                          validator: (value) => Validators.join([
                            Validators.required(value),
                            CashierValidators.validateGreaterThanZero(
                              value,
                              context,
                            ),
                          ]),
                        ),
                      ),
                  ],
                ),
                if (isChecked) ...[
                  if (model.paymentMethod == PaymentMethod.manualCheque)
                    SizedBox(
                      width: TicketConstants.kSplitPaymentPopupWidth -
                          TicketConstants.kSplitPaymentAmountFieldWidth -
                          (Insets.gutter * 3),
                      child: ChequeDetailsForm(
                        selectedMode: model.paymentMethod,
                        paymentController: paymentController,
                        formKey: model.formKey!,
                        payeeName: payeeName,
                      ),
                    ),
                  if (model.paymentMethod == PaymentMethod.secorePrepayCard &&
                      activeCard == null)
                    SizedBox(
                      width: 350,
                      child: SecorePrePayCardDetailsForm(
                        paymentController: paymentController,
                        selectedMode: model.paymentMethod,
                        formKey: model.formKey!,
                      ),
                    ),
                ],
              ],
            );
          },
        ),
      ),
    );
  }
}
