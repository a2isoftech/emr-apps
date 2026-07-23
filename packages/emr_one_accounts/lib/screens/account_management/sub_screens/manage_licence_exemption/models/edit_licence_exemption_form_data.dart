import 'package:flutter/material.dart';

class EditLicenceExemptionFormData {
  EditLicenceExemptionFormData({
    bool? isWasteRegisteredCarrier,
    String? wasteCarrierRegNo,
    bool? isWasteImporter,
    bool? isWasteProducer,
    bool? isWasteTransporter,
    bool? annualWasteTransferNote,
    String? documentType,
    DateTime? validFrom,
    DateTime? validTo,
  }) {
    this.isWasteRegisteredCarrier = ValueNotifier(
      isWasteRegisteredCarrier ?? false,
    );
    this.wasteCarrierRegNo = ValueNotifier(wasteCarrierRegNo);
    this.isWasteImporter = ValueNotifier(isWasteImporter ?? false);
    this.isWasteProducer = ValueNotifier(isWasteProducer ?? false);
    this.isWasteTransporter = ValueNotifier(isWasteTransporter ?? false);
    this.annualWasteTransferNote = ValueNotifier(
      annualWasteTransferNote ?? false,
    );
    this.documentType = ValueNotifier(documentType);
    this.validFrom = ValueNotifier(validFrom);
    this.validTo = ValueNotifier(validTo);
  }

  late final ValueNotifier<bool> isWasteRegisteredCarrier;
  late final ValueNotifier<String?> wasteCarrierRegNo;
  late final ValueNotifier<bool> isWasteImporter;
  late final ValueNotifier<bool> isWasteProducer;
  late final ValueNotifier<bool> isWasteTransporter;
  late final ValueNotifier<bool> annualWasteTransferNote;
  
  // Document metadata fields extracted from Azure Form Recognizer
  late final ValueNotifier<String?> documentType;
  late final ValueNotifier<DateTime?> validFrom;
  late final ValueNotifier<DateTime?> validTo;

  List<Listenable> get _allFields => [
    isWasteRegisteredCarrier,
    wasteCarrierRegNo,
    isWasteImporter,
    isWasteProducer,
    isWasteTransporter,
    annualWasteTransferNote,
    documentType,
    validFrom,
    validTo,
  ];

  void addListeners(void Function() listener) {
    for (final field in _allFields) {
      field.addListener(listener);
    }
  }

  void removeListeners(void Function() listener) {
    for (final field in _allFields) {
      field.removeListener(listener);
    }
  }

  void addAllListeners(VoidCallback listener) {
    for (final field in _allFields) {
      field.addListener(listener);
    }
  }

  void removeAllListeners(VoidCallback listener) {
    for (final field in _allFields) {
      field.removeListener(listener);
    }
  }

  void dispose() {
    // Dispose all ValueNotifiers to prevent memory leaks
    isWasteRegisteredCarrier.dispose();
    wasteCarrierRegNo.dispose();
    isWasteImporter.dispose();
    isWasteProducer.dispose();
    isWasteTransporter.dispose();
    annualWasteTransferNote.dispose();
    documentType.dispose();
    validFrom.dispose();
    validTo.dispose();
  }
}
