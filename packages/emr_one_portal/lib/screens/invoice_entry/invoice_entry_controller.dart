import 'dart:typed_data';

import 'package:emr_account_registration/signup.dart';
import 'package:emr_one_portal/portal.dart';
import 'package:flutter/material.dart';

class InvoiceEntryController extends ChangeNotifier {
  InvoiceEntryController({
    required this.mediaService,
    required this.ticketService,
  });

  final MediaService mediaService;
  final TicketService ticketService;
  NewInvoiceModel model = NewInvoiceModel();
  Uint8List? invoiceFile;
  late bool _isSubmissionSuccessful = false;

  late bool _submitting = false;
  void toggleSubmitting({bool value = false}) {
    _isSubmissionSuccessful = false;
    _submitting = value;
    notifyListeners();
  }

  void toggleNavigating({bool value = false}) {
    _isSubmissionSuccessful = value;
    notifyListeners();
  }

  bool isSubmitting() => _submitting;
  bool isSubmissionSuccessful() => _isSubmissionSuccessful;

  FeedbackModel feedbackModel = FeedbackModel();
  bool showFeedback() {
    if (feedbackModel.hasFeedback) {
      Future.delayed(
        const Duration(
          seconds: PortalSettings.errorDisplayDuration,
        ),
        notifyListeners,
      );
      feedbackModel.hasFeedback = false;
      _isSubmissionSuccessful = false;
      return true;
    }
    return false;
  }

  void showError(
    String error,
  ) {
    feedbackModel.set(msg: error, type: FeedbackType.error);
    notifyListeners();
  }

  void newInvoiceUpdatePurchaseOrderNo(String? s) {
    model.purchaseOrderNumber = s;
    getCompanyDetails();
    notifyListeners();
  }

  void newInvoiceNo(String s) {
    model.invoiceNo = s;
    notifyListeners();
  }

  void newInvoiceDate(DateTime? s) {
    model.invoiceDate = s;
    notifyListeners();
  }

  void newInvoiceDescription(String s) {
    model.invoiceDescription = s;
    notifyListeners();
  }

  void newInvoiceCurrency(String s) {
    model.currency = s.toUpperCase();
    notifyListeners();
  }

  void newInvoiceNetAmount(String s) {
    final netAmount = double.tryParse(s) ?? 0.0;
    final formatterValue = netAmount.toStringAsFixed(2);
    model.invoiceNetAmount = formatterValue;
    newInvoiceTotalAmount();
    notifyListeners();
  }

  void newInvoiceTotalAmount() {
    model.invoiceTotalAmount = model.invoiceNetAmount
        ?.addStringAsDouble(model.invoiceVATAmount ?? '0');
    notifyListeners();
  }

  void newInvoiceVATAmount(String s) {
    final netAmount = double.tryParse(s) ?? 0.0;
    final formatterValue = netAmount.toStringAsFixed(2);
    model.invoiceVATAmount = formatterValue;
    newInvoiceTotalAmount();
    notifyListeners();
  }

  void newInvoiceUploadInvoice(
    String s,
    Uint8List? file,
  ) {
    model.uploadInvoice = s;
    invoiceFile = file;
    notifyListeners();
  }

  void newInvoiceConfirmationEmailAddress(String s) {
    model.confirmationEmailAddress = s;
    notifyListeners();
  }

  Future<bool> submitInvoice() async {
    try {
      toggleSubmitting(value: true);
      if (invoiceFile == null) {
        toggleSubmitting();
        feedbackModel.set(
          feedbackEnum: PaymentRequestFeedbackEnum.uploadInvoice,
          type: FeedbackType.error,
        );
        toggleNavigating();
        notifyListeners();
        return false;
      }

      //get token for media api
      final fileId = '${model.uploadInvoice!.split('.').first}-'
          '${MediaService.getRandomFileIdentifier()}.'
          '${model.uploadInvoice!.split('.').last}';
      final invoiceFileName = model.uploadInvoice;

      final mediaApiUrlWithToken = await ticketService.getMediaApiUrlWithToken(
        fileId: fileId,
      );

      if (mediaApiUrlWithToken == null || mediaApiUrlWithToken.isEmpty) {
        toggleSubmitting();
        feedbackModel.set(
          feedbackEnum: PaymentRequestFeedbackEnum.mediaAPIFileUploadError,
          type: FeedbackType.error,
        );
        toggleNavigating();
        notifyListeners();

        return false;
      }

      final filePath = Uri.parse(mediaApiUrlWithToken).pathSegments[1];

      //upload invoice to media api
      final invoiceUploaded = await mediaService.uploadDocument(
        mediaApiUrlWithToken: mediaApiUrlWithToken,
        fileName: invoiceFileName!,
        fileBytes: invoiceFile!,
      );

      if (!invoiceUploaded) {
        toggleSubmitting();
        feedbackModel.set(
          feedbackEnum: PaymentRequestFeedbackEnum.invoiceUploadError,
          type: FeedbackType.error,
        );
        toggleNavigating();
        notifyListeners();

        return false;
      }

      final result = await ticketService.submitInvoice(
        model,
        filePath,
        fileId,
      );

      toggleSubmitting();
      if (result) {
        clearData();
        toggleNavigating(value: true);
      } else {
        feedbackModel.set(
          feedbackEnum: PaymentRequestFeedbackEnum.invoiceSubmitError,
          type: FeedbackType.error,
        );
      }

      notifyListeners();
      return result;
    } catch (ex) {
      toggleSubmitting();
      feedbackModel.set(
        msg: ex.toString(),
        type: FeedbackType.error,
      );
      toggleNavigating();
      notifyListeners();
    }
    return false;
  }

  List<String> getCurrencyList() {
    return ['GBP', 'EUR', 'USD'];
  }

  Future<void> getCompanyDetails() async {
    if (model.purchaseOrderNumber == null ||
        model.purchaseOrderNumber!.isEmpty) {
      return; // Return empty string if purchaseOrderNumber is null or empty
    }
    final companyId = model.purchaseOrderNumber!.substring(0, 3);

    model.company = await ticketService.getCompanyDetails(companyId);
  }

  void clearData() {
    model.invoiceNo = '';
    model.invoiceDescription = '';
    model.invoiceNetAmount = '';
    model.purchaseOrderNumber = '';
    model.currency = null;
    model.invoiceDate = null;
    model.invoiceVATAmount = '';
    model.uploadInvoice = null;
    invoiceFile = null;
    model.company = null;
    model.invoiceTotalAmount = '';
  }
}
