import 'package:emr_account_registration/signup.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_portal/portal.dart';
import 'package:flutter/material.dart';

class CreateCreditNote extends StatelessWidget {
  const CreateCreditNote({
    required this.controller,
    required this.formKey,
    required this.company,
    required this.creditNoteNumber,
    required this.creditNoteDate,
    required this.description,
    required this.currency,
    required this.netAmount,
    required this.vatAmount,
    required this.uploadCreditNote,
    required this.creditNoteTotal,
    super.key,
  });

  final CreditNoteEntryController controller;
  final GlobalKey<FormState> formKey;
  final Widget creditNoteNumber;
  final Widget creditNoteDate;
  final Widget description;
  final Widget currency;
  final Widget netAmount;
  final Widget vatAmount;
  final Widget uploadCreditNote;
  final Widget company;
  final Widget creditNoteTotal;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final creditNoteValidator = CreditNoteValidator(context: context);
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
                      creditNoteNumber,
                      creditNoteDate,
                    ),
                    _rowWith1Cell(description),
                    _rowWith1Cell(company),
                  ],
                ),
              ),
              const SizedBox(
                height: Insets.gutter,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  context.l10n.creditNoteDetails,
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
                    _rowWith2Cells(currency, uploadCreditNote),
                    _rowWith1Cell(creditNoteTotal),
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
                color:
                    creditNoteValidator.canSubmitCreaditNote(controller.model)
                        ? theme.primaryColor
                        : theme.disabledColor,
                onPressed:
                    creditNoteValidator.canSubmitCreaditNote(controller.model)
                        ? () async {
                            await showConfirmationDialog(
                              context: context,
                              message:
                                  context.l10n.confirmationCreditNoteSubmission(
                                controller.model.currency.getCurrencySymbol() +
                                    (controller.model.creditNoteTotalAmount ??
                                        '0.0'),
                              ),
                            ).then(
                              (confirm) async => {
                                if (confirm ?? false)
                                  {
                                    await controller.submitCreditNote(),
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
