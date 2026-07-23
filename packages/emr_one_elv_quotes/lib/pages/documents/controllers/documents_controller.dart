import 'dart:typed_data';

import 'package:emr_one_elv_quote_api/emr_one_elv_quote_api.dart';
import 'package:emr_one_elv_quotes/pages/documents/controllers/controller.dart';
import 'package:emr_one_elv_quotes/services/services.dart';
import 'package:flutter/material.dart';

class DocumentsController extends ChangeNotifier {
  DocumentsController({
    required this.quoteService,
    required this.inspectionService,
  });

  final QuoteService quoteService;
  final InspectionService inspectionService;

  late int batchQuoteId;
  late int quoteId;
  late DocumentsState state;

  void initState({
    required int batchQuoteId,
    required int quoteId,
  }) {
    this.batchQuoteId = batchQuoteId;
    this.quoteId = quoteId;
    state = DocumentsState(batchQuoteId: batchQuoteId, quoteId: quoteId);
  }

  Future<void> getVehicleDocuments() async {
    state.isLoading.value = true;
    state.noDocumentMessage.value = false;
    try {
      final result = await inspectionService.getVehicleDocuments(
          batchQuoteId: batchQuoteId, quoteId: quoteId,);
      state.documents = result;
    } on Exception {
      state.documents = InspectionDocumentsResponseModel(
        documents: [],
        nonConformingParts: [],
        vehicleCats: [],
      );
    }
    state.isLoading.value = false;
  }

  Future<Uint8List?> getImage(String? imgPath) {
    if ((imgPath ?? '').isEmpty) {
      return Future.value();
    }
    return quoteService.getExistingImage(imgPath!);
  }

  void removeImageFromDocumentList(VehicleDocumentsResponseModel document) {
    state.documents?.documents.remove(
      document,
    );
    if (state.isEmpty) {
      state.noDocumentMessage.value = true;
    }
  }

  void removeImageFromCatList(VehicleCatDetailResponseModel document) {
    state.documents?.vehicleCats.remove(
      document,
    );
    if (state.isEmpty) {
      state.noDocumentMessage.value = true;
    }
  }

  void removeImageFromNonCorList(NonConformingPartDocumentsModel document) {
    state.documents?.nonConformingParts.remove(
      document,
    );
    if (state.isEmpty) {
      state.noDocumentMessage.value = true;
    }
  }
}
