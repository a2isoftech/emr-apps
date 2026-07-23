import 'package:emr_account_registration/signup.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_portal/portal.dart';
import 'package:flutter/material.dart';

class CreateInvoice extends StatelessWidget {
  const CreateInvoice({
    required this.controller,
    required this.formKey,
    required this.poOrderNumber,
    required this.invoiceNumber,
    required this.invoiceDate,
    required this.description,
    required this.currency,
    required this.netAmount,
    required this.vatAmount,
    required this.uploadInvoice,
    required this.companyDetails,
    required this.invoiceTotal,
    super.key,
  });

  final InvoiceEntryController controller;
  final GlobalKey<FormState> formKey;
  final Widget poOrderNumber;
  final Widget invoiceNumber;
  final Widget invoiceDate;
  final Widget description;
  final Widget currency;
  final Widget netAmount;
  final Widget vatAmount;
  final Widget uploadInvoice;
  final Widget companyDetails;
  final Widget invoiceTotal;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final invoiceValidator = InvoiceValidator(context: context);
    return Column(
      children: [
        Form(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          key: formKey,
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(
                  Insets.gutter,
                ),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: theme.colorScheme.inverseSurface,
                  ),
                  borderRadius: BorderRadius.circular(Insets.gutter),
                ),
                child: Column(
                  children: [
                    _rowWith2Cells(
                      invoiceNumber,
                      invoiceDate,
                    ),
                    _rowWith1Cell(description),
                    _rowWith2Cells(poOrderNumber, companyDetails),
                  ],
                ),
              ),
              const SizedBox(
                height: Insets.gutter,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  context.l10n.invoiceDetails,
                  style: theme.textTheme.headlineSmall,
                  textAlign: TextAlign.left,
                ),
              ),
              const SizedBox(
                height: Insets.gutter,
              ),
              Container(
                padding: const EdgeInsets.all(
                  Insets.gutter,
                ),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: theme.colorScheme.inverseSurface,
                  ),
                  borderRadius: BorderRadius.circular(Insets.gutter),
                ),
                child: Column(
                  children: [
                    _rowWith2Cells(
                      netAmount,
                      vatAmount,
                    ),
                    _rowWith2Cells(currency, uploadInvoice),
                    _rowWith1Cell(invoiceTotal),
                  ],
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: Insets.gutter * 2),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              colouredButton(
                color: invoiceValidator.canSubmitInvoice(controller.model)
                    ? theme.primaryColor
                    : theme.disabledColor,
                onPressed: invoiceValidator.canSubmitInvoice(controller.model)
                    ? () async {
                        await showConfirmationDialog(
                          context: context,
                          message: context.l10n.confirmationInvoiceSubmission(
                            controller.model.currency.getCurrencySymbol() +
                                (controller.model.invoiceTotalAmount ?? '0.0'),
                          ),
                        ).then(
                          (confirm) async => {
                            if (confirm ?? false)
                              {
                                await controller.submitInvoice(),
                              },
                          },
                        );
                      }
                    : null,
                textColor: theme.colorScheme.onSecondary,
                text: context.l10n.submit,
              ),
            ],
          ),
        ),
        verticalSpacer(height: Insets.gutter * 3),
      ],
    );
  }

  Widget _rowWith2Cells(
    Widget widget1,
    Widget widget2,
  ) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Expanded(
          flex: 2,
          child: widget1,
        ),
        horizontalSpacer(),
        Expanded(
          flex: 2,
          child: widget2,
        ),
      ],
    );
  }

  Widget _rowWith1Cell(
    Widget widget1,
  ) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Expanded(
          flex: 2,
          child: widget1,
        ),
      ],
    );
  }
}
