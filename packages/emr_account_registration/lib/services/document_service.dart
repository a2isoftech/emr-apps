import 'dart:typed_data';

import 'package:emr_account_registration/signup.dart';
import 'package:emr_core_api/emr_core_api.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:uuid/uuid.dart';

class DocumentService {
  final JourneyController journeyController;

  DocumentService({required this.journeyController});

  Future<XFile?> pickedFile = Future.value();
  Future<FilePickerResult?> addressProofPickedFile = Future.value();
  bool filePicked = false;
  Uint8List? selectedDocument;
  String? fileId;
  String? fileName;
  String? filePath;
  String fileType = 'jpg';
  DateTime? ocrDetectedExpirationDate;
  bool filePickedByScanningQrCode = false;

  void setFilePicked({required bool val}) {
    filePicked = val;
    journeyController.notifyListenersInternal();
  }

  Future<void> setDocument(Uint8List document, {required bool isImage}) async {
    try {
      final imageCompressionSettings =
          AccountRegistrationRemoteConfigService.imageCompressionSettings;
      if (isImage &&
          document.length >
              (imageCompressionSettings['minSizeForCompression'] ?? 200000)) {
        final result = await FlutterImageCompress.compressWithList(
          document,
          minHeight: imageCompressionSettings['minHeight'] ?? 800,
          minWidth: imageCompressionSettings['minWidth'] ?? 600,
          quality: imageCompressionSettings['quality'] ?? 70,
          rotate: imageCompressionSettings['rotate'] ?? 0,
        );

        selectedDocument = result;
      } else {
        selectedDocument = document;
      }
    } catch (ex) {
      selectedDocument = document;
      LoggingService.logFailure(
        AccountRegistrationTelemetry.kCompressImage,
        ex,
      );
    }

    journeyController.notifyListenersInternal();
  }

  Future<UploadedDocumentDetailsModel?> readDocument({
    required SignupModel signupModel,
    required Enum$IdentificationType documentTypeID,
    required Enum$IdentificationSubType documentSubTypeID,
    required void Function(String) onError,
  }) async {
    try {
      if (selectedDocument == null) {
        journeyController.endProcessing();
        onError('No document found.');
        return null;
      }

      // if qr code was scanned then file is already uploaded to media api
      // and we dont need to upload it again
      if (!filePickedByScanningQrCode) {
        fileId = '${getRandomFileIdentifier()}.$fileType';
        fileName = 'document.$fileType';
      }

      final token =
          await journeyController.accountService.userInfoService.getIdToken(
            true,
          ) ??
          '';

      final ocrResult = await journeyController.azureFormRecogniserService
          .readDocument(
            token,
            documentTypeID,
            documentSubTypeID,
            selectedDocument,
          );

      if (documentTypeID == Enum$IdentificationType.PHOTO_ID) {
        signupModel.proofOfId = ocrResult;
      } else {
        signupModel.proofOfAddress = ocrResult;
      }
      return ocrResult;
    } catch (ex) {
      journeyController.endProcessing();
      onError(ex.toString());
      return null;
    }
  }

  Future<String?> saveDocument({
    required SignupModel signupModel,
    required UploadedDocumentDetailsModel? uploadedDocumentDetails,
    required Enum$IdentificationType identificationType,
    required Enum$IdentificationSubType identificationSubType,
    required void Function(String) onError,
  }) async {
    return signupModel.getLocatedAtCountryCode().isCountryNL()
        ? saveDocumentForNL(
            signupModel: signupModel,
            uploadedDocumentDetails: uploadedDocumentDetails,
            identificationType: identificationType,
            identificationSubType: identificationSubType,
            onError: onError,
          )
        : saveDocumentForOthers(
            signupModel: signupModel,
            uploadedDocumentDetails: uploadedDocumentDetails,
            identificationType: identificationType,
            identificationSubType: identificationSubType,
            onError: onError,
          );
  }

  Future<String?> saveDocumentForOthers({
    required SignupModel signupModel,
    required UploadedDocumentDetailsModel? uploadedDocumentDetails,
    required Enum$IdentificationType identificationType,
    required Enum$IdentificationSubType identificationSubType,
    required void Function(String) onError,
  }) async {
    try {
      journeyController.startProcessing();
      if (selectedDocument == null) {
        journeyController.endProcessing();
        onError('No document found.');
        return null;
      }

      // if qr code was scanned then file is already uploaded to media api
      // and we dont need to upload it again
      if (!filePickedByScanningQrCode) {
        fileId = fileId ?? '${getRandomFileIdentifier()}.jpg';

        final mediaApiUrlWithToken = await journeyController.accountService
            .getMediaApiUrlWithToken(
              fileId: fileId!,
              partyAccountNo: signupModel.accountCode,
            );

        if (mediaApiUrlWithToken == null || mediaApiUrlWithToken.isEmpty) {
          journeyController.endProcessing();
          onError(
            'An error occurred while connecting to '
            'media api for document upload.',
          );
          return null;
        }

        filePath =
            '${Uri.parse(mediaApiUrlWithToken).pathSegments[1]}/${Uri.parse(mediaApiUrlWithToken).pathSegments[2]}';

        //upload document to media api
        fileName = fileName ?? 'document.jpg';
        final documentUploaded = await journeyController.mediaService
            .uploadDocument(
              mediaApiUrlWithToken: mediaApiUrlWithToken,
              fileName: fileName!,
              fileBytes: selectedDocument!,
            );
        if (!documentUploaded) {
          journeyController.endProcessing();
          onError('An error occurred while uploading document data.');
          return null;
        }
      }

      String? account;
      account = await journeyController.accountService.uploadDocument(
        signupModel.accountCode ?? '',
        UploadDocumentModel(
          fileId: fileId!,
          fileName: fileName!,
          filePath: filePath!,
          documentTypeID: identificationType,
          documentSubTypeID: identificationSubType,
          expirationDate: uploadedDocumentDetails?.dateOfExpiration,
          documentNumber: uploadedDocumentDetails?.documentNumber,
        ),
        ocrDetectedExpirationDate,
        uploadedDocumentDetails?.issuedbyCounty ??
            uploadedDocumentDetails?.countryRegion,
        signupModel.getLocatedAtCountryCode(),
      );

      if (account == null) {
        journeyController.endProcessing();
        onError(
          'Null returned from account service while uploading document data',
        );
        journeyController.notifyListenersInternal();
      }

      account = await journeyController.accountService.updateSelfServiceAccount(
        signupModel.accountCode ?? '',
        UpdateSelfServeAccountRequest(
          title: uploadedDocumentDetails?.title ?? '',
          firstName: uploadedDocumentDetails?.firstName ?? '',
          lastName: uploadedDocumentDetails?.lastName ?? '',
          address1: uploadedDocumentDetails?.address1 ?? '',
          address2: uploadedDocumentDetails?.address2 ?? '',
          address3: uploadedDocumentDetails?.city ?? '',
          county: uploadedDocumentDetails?.county ?? '',
          country: uploadedDocumentDetails?.countryRegion,
          dateOfBirth: uploadedDocumentDetails?.dateOfBirth,
          postCode: uploadedDocumentDetails?.postCode ?? '',
          height: uploadedDocumentDetails?.height,
          eyeColour: uploadedDocumentDetails?.eyeColour,
        ),
      );

      journeyController.endProcessing();

      final accountNumber = (account ?? '').replaceAll('"', '');

      return accountNumber;
    } catch (ex) {
      journeyController.endProcessing();
      onError(ex.toString());
    }
    return null;
  }

  Future<String?> saveDocumentForNL({
    required SignupModel signupModel,
    required UploadedDocumentDetailsModel? uploadedDocumentDetails,
    required Enum$IdentificationType identificationType,
    required Enum$IdentificationSubType identificationSubType,
    required void Function(String) onError,
  }) async {
    try {
      journeyController.startProcessing();

      final account = await journeyController.accountService
          .updateSelfServiceAccount(
            signupModel.accountCode ?? '',
            UpdateSelfServeAccountRequest(
              address1: uploadedDocumentDetails?.address1 ?? '',
              address2: uploadedDocumentDetails?.address2 ?? '',
              // Address3 is used as city in legacy systems and for NL
              // there are 4 fields on screen, hour number, street
              // place and postcode. So we sre using place for address3
              address3: uploadedDocumentDetails?.county ?? '',
              county: '',
              country: uploadedDocumentDetails?.countryRegion,
              postCode: uploadedDocumentDetails?.postCode ?? '',
            ),
          );

      //TODO- Remove this and allow user to upload the signature.
      final documentModel = UploadDocumentModel(
        documentNumber: 'NLUserDocumentNumber',
        documentSubTypeID: Enum$IdentificationSubType.OTHER,
        documentTypeID: Enum$IdentificationType.PHOTO_ID,
        expirationDate: DateTime.now().add(const Duration(days: 500)),
        fileId: 'test_signature.jpg',
        fileName: 'test_signature.jpg',
        filePath: 'www.emr.com',
      );

      await journeyController.accountService.uploadDocument(
        signupModel.accountCode ?? '',
        documentModel,
        ocrDetectedExpirationDate,
        signupModel.getLocatedAtCountryCode(),
        signupModel.getLocatedAtCountryCode(),
      );

      final paymentDetailsmodel = PaymentDetailsModel(
        accountHoldername: '',
        agreeToLegalTnc: true,
        bankAccountNumber: '',
        bankName: '',
        enableCel: false,
        agreeToSecoreTnc: false,
        paidIntoAccount: false,
        sortCode: '',
        signatureFileId: 'test_signature.jpg',
        signatureFileName: 'test_signature.jpg',
        signatureFilePath: 'www.emr.com',
      );

      await journeyController.accountService.updatePaymentDetails(
        signupModel.accountCode ?? '',
        paymentDetailsmodel,
      );

      journeyController.endProcessing();

      final accountNumber = (account ?? '').replaceAll('"', '');

      return accountNumber;
    } catch (ex) {
      journeyController.endProcessing();
      onError(ex.toString());
    }
    return null;
  }

  static String getRandomFileIdentifier() {
    const uuid = Uuid();
    return uuid.v4();
  }
}
