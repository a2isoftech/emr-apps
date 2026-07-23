import 'dart:typed_data';

import 'package:emr_account_registration/signup.dart';
import 'package:emr_one_portal/portal.dart';
import 'package:emr_one_portal/shared/models/new_credit_note_model.dart';
import 'package:flutter/material.dart';

class CreditNoteEntryController extends ChangeNotifier {
  CreditNoteEntryController({
    required this.creditNoteService,
    required this.mediaService,
    required this.accountService,
  });

  NewCreditNoteModel model = NewCreditNoteModel();
  Uint8List? creditNoteFile;
  List<Company>? _companies;
  final CreditNoteService creditNoteService;
  final AccountServicePortal accountService;
  final MediaService mediaService;

  late bool _submitting = false;
  late bool _isSubmissionSuccessful = false;
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
      toggleNavigating();

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

  void newCreditNoteNo(String s) {
    model.creditNoteNo = s;
    notifyListeners();
  }

  void newCreditNoteDate(DateTime? s) {
    model.creditNoteDate = s;
    notifyListeners();
  }

  void newCreditNoteDescription(String s) {
    model.creditNoteDescription = s;
    notifyListeners();
  }

  void newCreditNoteCurrency(String s) {
    model.currency = s.toUpperCase();
    notifyListeners();
  }

  void newCreditNoteCompany(String s) {
    final selectedCompany =
        _companies?.firstWhere((element) => element.name == s);
    model.company = selectedCompany;
    notifyListeners();
  }

  void newCreditNoteNetAmount(String s) {
    final netAmount = double.tryParse(s) ?? 0.0;
    final formatterValue = netAmount.toStringAsFixed(2);
    model.creditNoteNetAmount = formatterValue;
    newCreditNoteTotalAmount();
    notifyListeners();
  }

  void newCreditNoteVATAmount(String s) {
    final netAmount = double.tryParse(s) ?? 0.0;
    final formatterValue = netAmount.toStringAsFixed(2);
    model.creditNoteVATAmount = formatterValue;
    newCreditNoteTotalAmount();
    notifyListeners();
  }

  void newCreditNoteTotalAmount() {
    model.creditNoteTotalAmount = model.creditNoteNetAmount
        ?.addStringAsDouble(model.creditNoteVATAmount ?? '0');
    notifyListeners();
  }

  void newCreditNoteUploadCreditNote(
    String s,
    Uint8List? file,
  ) {
    model.uploadCreditNote = s;
    creditNoteFile = file;
    notifyListeners();
  }

  void newCreditNoteConfirmationEmailAddress(String s) {
    model.confirmationEmailAddress = s;
    notifyListeners();
  }

  Future<bool> submitCreditNote() async {
    try {
      toggleSubmitting(value: true);
      if (creditNoteFile == null) {
        toggleSubmitting();
        feedbackModel.set(
          type: FeedbackType.error,
          feedbackEnum: PaymentRequestFeedbackEnum.uploadCreditNote,
        );
        notifyListeners();
        return false;
      }

      //get token for media api
      final fileId = '${model.uploadCreditNote!.split('.').first}-'
          '${MediaService.getRandomFileIdentifier()}.'
          '${model.uploadCreditNote!.split('.').last}';
      final creditNoteFileName = model.uploadCreditNote;

      final mediaApiUrlWithToken =
          await creditNoteService.getMediaApiUrlWithToken(
        fileId: fileId,
      );

      if (mediaApiUrlWithToken == null || mediaApiUrlWithToken.isEmpty) {
        toggleSubmitting();
        feedbackModel.set(
          type: FeedbackType.error,
          feedbackEnum: PaymentRequestFeedbackEnum.mediaAPIFileUploadError,
        );
        toggleNavigating();
        notifyListeners();
        return false;
      }

      final filePath = Uri.parse(mediaApiUrlWithToken).pathSegments[1];

      //upload Credit note to media api
      final creditNoteUploaded = await mediaService.uploadDocument(
        mediaApiUrlWithToken: mediaApiUrlWithToken,
        fileName: creditNoteFileName!,
        fileBytes: creditNoteFile!,
      );

      if (!creditNoteUploaded) {
        toggleSubmitting();
        feedbackModel.set(
          type: FeedbackType.error,
          feedbackEnum: PaymentRequestFeedbackEnum.creditNoteUploadError,
        );
        toggleNavigating();
        notifyListeners();

        return false;
      }

      final result = await creditNoteService.submitCreditNote(
        model,
        filePath,
        fileId,
      );

      toggleSubmitting();
      notifyListeners();
      if (result) {
        clearData();
        toggleNavigating(value: true);
      } else {
        feedbackModel.set(
          feedbackEnum: PaymentRequestFeedbackEnum.creditNoteSubmitError,
          type: FeedbackType.error,
        );
      }
      return result;
    } catch (ex) {
      toggleSubmitting();
      feedbackModel.set(
        msg: ex.toString(), //Incase of exception
        type: FeedbackType.error,
      );
      notifyListeners();
    }
    return false;
  }

  List<String> getCurrencyList() {
    return ['GBP', 'EUR', 'USD'];
  }

  Future<List<String>?> getCompaniesList() async {
    _companies = await accountService.getCompaniesList();
    return _companies?.map((company) => company.name!).toList();
  }

  void clearData() {
    model.creditNoteNo = '';
    model.creditNoteDescription = '';
    model.creditNoteNetAmount = '';
    model.creditNoteVATAmount = '';
    model.currency = null;
    model.creditNoteDate = null;
    _companies = null;
    model.company = null;
    model.uploadCreditNote = null;
    creditNoteFile = null;
    model.creditNoteTotalAmount = '';
  }
}
