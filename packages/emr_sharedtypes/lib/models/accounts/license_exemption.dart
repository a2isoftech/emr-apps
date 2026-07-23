import 'package:emr_sharedtypes/models/accounts/account_document.dart';

class LicenseExemption {
  LicenseExemption(
    this.wasteRegCarrierNumber,
    this.wasteTransferLicense, {
    this.annualWasteTransferNote,
    this.wasteProducer,
    this.wasteImporter,
    this.wasteTransporter,
    this.wasteRegCarrier,
  });

  bool? annualWasteTransferNote;
  bool? wasteProducer;
  bool? wasteImporter;
  bool? wasteTransporter;
  bool? wasteRegCarrier;
  String? wasteRegCarrierNumber;
  AccountDocument? wasteTransferLicense;
}
