import 'package:emr_one_elv_quote_api/emr_one_elv_quote_api.dart';
import 'package:flutter/material.dart';

class DocumentsState {
  DocumentsState({
    required this.batchQuoteId,
    required this.quoteId,
    bool isLoading = false,
  }) : isLoading = ValueNotifier(isLoading);

  final int batchQuoteId;
  final int quoteId;
  final ValueNotifier<bool> isLoading;
  InspectionDocumentsResponseModel? documents;
  bool get isEmpty {
    if ((documents?.vehicleCats ?? []).isEmpty &&
        (documents?.nonConformingParts ?? []).isEmpty &&
        (documents?.documents ?? []).isEmpty) {
      return true;
    }
    return false;
  }

  final ValueNotifier<bool> noDocumentMessage = ValueNotifier(false);
}
