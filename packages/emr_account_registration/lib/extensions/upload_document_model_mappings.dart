import 'package:emr_account_registration/signup.dart';
import 'package:emr_core_api/emr_core_api.dart';

extension UploadDocumentModelMapping on UploadDocumentModel {
  Input$CreateNewDocumentInput toCreateUploadDocumentInput(
    DateTime? ocrDetectedExpirationDate,
    String? issuedbyCounty,
  ) {
    return Input$CreateNewDocumentInput(
      documentSubTypeId: documentSubTypeID,
      documentTypeId: documentTypeID,
      documentNumber: documentNumber ?? '',
      expirationDate: expirationDate ?? DateTime.now(),
      ocrDetectedExpirationDate: ocrDetectedExpirationDate,
      fileId: fileId,
      fileName: fileName,
      filePath: filePath,
      issuedByCounty: issuedbyCounty,
    );
  }
}
