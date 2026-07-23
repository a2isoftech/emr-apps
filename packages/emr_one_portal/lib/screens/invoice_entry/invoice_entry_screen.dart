import 'package:emr_account_registration/signup.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_portal/portal.dart';
import 'package:emr_one_portal/shared/widgets/currency_picker.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class InvoiceEntryScreen extends StatefulWidget {
  const InvoiceEntryScreen({
    required this.userInfoService,
    super.key,
  });

  final CustomerUserInfoService userInfoService;

  @override
  State<InvoiceEntryScreen> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<InvoiceEntryScreen> {
  late TextEditingController totalAmountController;
  late TextEditingController companyDetailsController;
  late final InvoiceEntryController controller;

  @override
  void initState() {
    super.initState();
    totalAmountController = TextEditingController();
    companyDetailsController = TextEditingController();
  }

  @override
  void dispose() {
    totalAmountController.dispose();
    companyDetailsController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final formKey = GlobalKey<FormState>();
    final invoiceValidator = InvoiceValidator(context: context);
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
          currentPage: PortalStrings.invoicentryPageTitle,
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
                            context.l10n.invoiceHeader,
                            style: theme.textTheme.headlineSmall,
                          ),
                          Text(
                            context.l10n.addNewInvoice,
                            style: theme.textTheme.labelSmall,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(Insets.gutter),
                  child: Consumer<InvoiceEntryController>(
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
                                context.l10n.invoiceSubmitSuccessMsg,
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
                          controller.model.invoiceTotalAmount ?? '';
                      companyDetailsController.text =
                          controller.model.company?.name ?? '';
                      return Stack(
                        children: [
                          CreateInvoice(
                            controller: controller,
                            formKey: formKey,
                            poOrderNumber: TextFieldWithLabel(
                              labelText: context.l10n.purchaseOrderNo,
                              mandatory: true,
                              textFormField: TextFormField(
                                onChanged:
                                    controller.newInvoiceUpdatePurchaseOrderNo,
                                initialValue:
                                    controller.model.purchaseOrderNumber,
                                validator: invoiceValidator
                                    .validatePurchaseOrderNumber,
                              ),
                            ),
                            companyDetails: TextFieldWithLabel(
                              labelText: context.l10n.companyDetails,
                              mandatory: true,
                              textFormField: TextFormField(
                                key: UniqueKey(),
                                controller: companyDetailsController,
                                readOnly: true,
                                mouseCursor: SystemMouseCursors.forbidden,
                                validator:
                                    invoiceValidator.validateCompanyDetails,
                              ),
                            ),
                            invoiceNumber: TextFieldWithLabel(
                              labelText: context.l10n.invoiceNo,
                              mandatory: true,
                              textFormField: TextFormField(
                                onChanged: controller.newInvoiceNo,
                                initialValue: controller.model.invoiceNo,
                                validator: (value) {
                                  return invoiceValidator
                                      .validateInvoiceOrCreditNoteNumber(
                                    value,
                                    DocumentTypeEnum.invoice,
                                  );
                                },
                              ),
                            ),
                            invoiceDate: InvoiceDatePicker(
                              invoiceValidator: invoiceValidator,
                              controller: controller,
                            ),
                            description: TextFieldWithLabel(
                              labelText: context.l10n.invoiceDescription,
                              mandatory: true,
                              textFormField: TextFormField(
                                onChanged: controller.newInvoiceDescription,
                                initialValue:
                                    controller.model.invoiceDescription,
                                validator: invoiceValidator.validateDescription,
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
                                    controller.newInvoiceCurrency(value);
                                  }
                                },
                                initialValue: controller.model.currency,
                                validator: invoiceValidator.validateCurrency,
                              ),
                            ),
                            netAmount: TextFieldWithLabel(
                              labelText: context.l10n.invoiceNetAmount,
                              mandatory: true,
                              textFormField: TextFormField(
                                onChanged: controller.newInvoiceNetAmount,
                                initialValue: controller.model.invoiceNetAmount,
                                validator: invoiceValidator.validateNetAmount,
                              ),
                            ),
                            vatAmount: TextFieldWithLabel(
                              labelText: context.l10n.invoiceVATAmount,
                              mandatory: true,
                              textFormField: TextFormField(
                                onChanged: controller.newInvoiceVATAmount,
                                initialValue: controller.model.invoiceVATAmount,
                                validator: (value) {
                                  return invoiceValidator.validateVatAmount(
                                    value,
                                    controller.model.invoiceNetAmount,
                                  );
                                },
                              ),
                            ),
                            uploadInvoice: const UploadInvoice(
                              mandatory: true,
                            ),
                            invoiceTotal: TextFieldWithLabel(
                              labelText: context.l10n.invoiceTotal,
                              mandatory: false,
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
