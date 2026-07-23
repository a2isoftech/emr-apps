import 'package:emr_account_registration/signup.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_portal/portal.dart';
import 'package:emr_one_portal/shared/widgets/company_picker.dart';
import 'package:emr_one_portal/shared/widgets/currency_picker.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CreditNoteEntryScreen extends StatefulWidget {
  const CreditNoteEntryScreen({
    required this.userInfoService,
    super.key,
  });

  final CustomerUserInfoService userInfoService;

  @override
  State<CreditNoteEntryScreen> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<CreditNoteEntryScreen> {
  late TextEditingController totalAmountController;

  @override
  void initState() {
    super.initState();
    totalAmountController = TextEditingController();
  }

  @override
  void dispose() {
    totalAmountController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final formKey = GlobalKey<FormState>();
    final creditNoteValidator = CreditNoteValidator(context: context);
    return Column(
      children: [
        BlueHeader(
          headingPrimary: widget.userInfoService.userInfo.name,
          headingSecondary: context.l10n.showAccountNumber(
            '${widget.userInfoService.userInfo.partyAccountNumber}',
          ),
        ),
        BreadCrumb(
          paths: [context.l10n.home.toUpperCase()],
          currentPage: PortalStrings.creditNoteEntryPageTitle,
        ),
        BodyShell(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(Insets.gutter),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            context.l10n.creditNoteHeader,
                            style: theme.textTheme.headlineSmall,
                          ),
                          Text(
                            context.l10n.addNewCreditNote,
                            style: theme.textTheme.labelSmall,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(Insets.gutter),
                  child: Consumer<CreditNoteEntryController>(
                    builder: (context, controller, child) {
                      if (controller.showFeedback()) {
                        Future.delayed(Duration.zero, () {
                          if (context.mounted) {
                            EmrModal.showMessageBar(
                              context,
                              _feedBackMessage(
                                controller.feedbackModel.feedbackEnum,
                                controller.feedbackModel.message,
                              ),
                              messageType:
                                  controller.feedbackModel.feedbackType ==
                                          FeedbackType.error
                                      ? MessageBarTypes.error
                                      : MessageBarTypes.success,
                            );
                          }
                        });
                      }
                      if (controller.isSubmitting()) {
                        return processingIndicator();
                      } else if (controller.isSubmissionSuccessful()) {
                        return Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const SizedBox(
                                width: 180,
                              ),
                              Container(
                                width: 180,
                                height: 180,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: theme.primaryColor,
                                ),
                                child: Icon(
                                  Icons.check,
                                  size: 160,
                                  color: theme.colorScheme.surface,
                                ),
                              ),
                              verticalSpacer(height: Insets.gutter * 2),
                              Text(
                                context.l10n.creditNoteSubmitSuccess,
                                style: theme.textTheme.titleMedium,
                              ),
                              verticalSpacer(height: Insets.gutter * 2),
                              colouredButton(
                                text: context.l10n.submitAnother,
                                color: theme.primaryColor,
                                onPressed: () async {
                                  controller.toggleNavigating();
                                },
                              ),
                            ],
                          ),
                        );
                      }
                      totalAmountController.text =
                          controller.model.creditNoteTotalAmount ?? '';
                      return Stack(
                        children: [
                          CreateCreditNote(
                            controller: controller,
                            formKey: formKey,
                            company: FutureBuilder(
                              future: controller.getCompaniesList(),
                              builder: (context, snapshot) {
                                return CompanyPicker(
                                  labelText: context.l10n.company,
                                  mandatory: true,
                                  dropdownButtonFormField:
                                      DropdownButtonFormField(
                                    items: snapshot.data
                                        ?.map(
                                          (company) => DropdownMenuItem<String>(
                                            value: company,
                                            child: Text(company),
                                          ),
                                        )
                                        .toList(),
                                    onChanged: (String? value) {
                                      if (value != null) {
                                        controller.newCreditNoteCompany(value);
                                      }
                                    },
                                    initialValue:
                                        controller.model.company?.name,
                                    validator:
                                        creditNoteValidator.validateCompany,
                                  ),
                                );
                              },
                            ),
                            creditNoteNumber: TextFieldWithLabel(
                              labelText: context.l10n.creditNoteNo,
                              mandatory: true,
                              textFormField: TextFormField(
                                onChanged: controller.newCreditNoteNo,
                                initialValue: controller.model.creditNoteNo,
                                validator: (value) {
                                  return creditNoteValidator
                                      .validateInvoiceOrCreditNoteNumber(
                                    value,
                                    DocumentTypeEnum.creditNote,
                                  );
                                },
                              ),
                            ),
                            creditNoteDate: CreditNoteDatePicker(
                              creditNoteValidator: creditNoteValidator,
                              controller: controller,
                            ),
                            description: TextFieldWithLabel(
                              labelText: context.l10n.creditNoteDescription,
                              mandatory: true,
                              textFormField: TextFormField(
                                onChanged: controller.newCreditNoteDescription,
                                initialValue:
                                    controller.model.creditNoteDescription,
                                validator:
                                    creditNoteValidator.validateDescription,
                              ),
                            ),
                            currency: CurrencyPicker(
                              labelText: context.l10n.currency,
                              mandatory: true,
                              dropdownButtonFormField: DropdownButtonFormField(
                                items: controller
                                    .getCurrencyList()
                                    .map(
                                      (item) => DropdownMenuItem<String>(
                                        value: item,
                                        child: Text(item),
                                      ),
                                    )
                                    .toList(),
                                onChanged: (String? value) {
                                  if (value != null) {
                                    controller.newCreditNoteCurrency(value);
                                  }
                                },
                                initialValue: controller.model.currency,
                                validator: creditNoteValidator.validateCurrency,
                              ),
                            ),
                            netAmount: TextFieldWithLabel(
                              labelText: context.l10n.creditNoteNetAmount,
                              mandatory: true,
                              textFormField: TextFormField(
                                onChanged: controller.newCreditNoteNetAmount,
                                initialValue:
                                    controller.model.creditNoteNetAmount,
                                validator:
                                    creditNoteValidator.validateNetAmount,
                              ),
                            ),
                            vatAmount: TextFieldWithLabel(
                              labelText: context.l10n.creditNoteVatAmount,
                              mandatory: true,
                              textFormField: TextFormField(
                                onChanged: controller.newCreditNoteVATAmount,
                                initialValue:
                                    controller.model.creditNoteVATAmount,
                                validator: (value) {
                                  return creditNoteValidator.validateVatAmount(
                                    value,
                                    controller.model.creditNoteNetAmount,
                                  );
                                },
                              ),
                            ),
                            uploadCreditNote: const UploadCreditNote(
                              mandatory: true,
                            ),
                            creditNoteTotal: TextFieldWithLabel(
                              labelText: context.l10n.creditNoteTotal,
                              mandatory: true,
                              textFormField: TextFormField(
                                key: UniqueKey(),
                                controller: totalAmountController,
                                readOnly: true,
                                mouseCursor: SystemMouseCursors.forbidden,
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  String _feedBackMessage(
    PaymentRequestFeedbackEnum? feedbackEnum,
    String? errorMessage,
  ) {
    switch (feedbackEnum) {
      case PaymentRequestFeedbackEnum.uploadCreditNote:
        return context.l10n.uploadCreditNote;
      case PaymentRequestFeedbackEnum.mediaAPIFileUploadError:
        return context.l10n.mediaAPIFileUploadError;
      case PaymentRequestFeedbackEnum.creditNoteUploadError:
        return context.l10n.creditNoteUploadError;
      case PaymentRequestFeedbackEnum.creditNoteSubmitError:
        return context.l10n.creditNoteSubmitError;
      case PaymentRequestFeedbackEnum.creditNoteSubmitSuccess:
        return context.l10n.creditNoteSubmitSuccess;
      case PaymentRequestFeedbackEnum.uploadInvoice:
        return context.l10n.pdfFileValidation;
      case PaymentRequestFeedbackEnum.invoiceUploadError:
        return context.l10n.uploadInvoiceError;
      case PaymentRequestFeedbackEnum.invoiceSubmitError:
        return context.l10n.invoiceSubmitError;
      case PaymentRequestFeedbackEnum.invoiceSubmitSuccess:
        return context.l10n.invoiceSubmitSuccessMsg;
      case null:
        return errorMessage ?? ''; //Incase of exception
    }
  }
}
