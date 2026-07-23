import 'dart:typed_data';

import 'package:emr_account_registration/signup.dart';

class PaymentDetailsService {
  final JourneyController journeyController;

  Uint8List? signature;
  bool filePickedByScanningQrCode = false;
  String? fileId;
  String? fileName;
  String? filePath;

  PaymentDetailsService({required this.journeyController});

  void setSignature(Uint8List sign) {
    signature = sign;

    journeyController.notifyListenersInternal();
  }

  void clearSignature() {
    signature = null;

    journeyController.notifyListenersInternal();
  }

  Future<String?> addPaymentDetails({
    required SignupModel signupModel,
    required bool isBankUpdateRequired,
    required void Function(String) onError,
  }) async {
    try {
      journeyController.startProcessing();

      if (signature == null) {
        journeyController.endProcessing();

        onError('No signature found.');
        return null;
      }

      if (!filePickedByScanningQrCode) {
        //get token for media api
        fileId = '${MediaService.getRandomFileIdentifier()}.jpg';
        fileName = 'Signature.jpg';
        final mediaApiUrlWithToken = await journeyController.accountService
            .getMediaApiUrlWithToken(
              fileId: fileId!,
              partyAccountNo: signupModel.accountCode,
            );

        if (mediaApiUrlWithToken == null || mediaApiUrlWithToken.isEmpty) {
          journeyController.endProcessing();

          onError(
            'An error occurred while connecting to '
            'media api for signature upload.',
          );
          return null;
        }

        filePath =
            '${Uri.parse(mediaApiUrlWithToken).pathSegments[1]}/${Uri.parse(mediaApiUrlWithToken).pathSegments[2]}';

        //upload signature to media api
        final signatureUploaded = await journeyController.mediaService
            .uploadDocument(
              mediaApiUrlWithToken: mediaApiUrlWithToken,
              fileName: fileName!,
              fileBytes: signature!,
            );

        if (!signatureUploaded) {
          journeyController.endProcessing();

          onError('An error occurred while uploading signature.');
          return null;
        }
      }

      final account = await journeyController.accountService
          .updatePaymentDetails(
            signupModel.accountCode ?? '',
            PaymentDetailsModel(
              paidIntoAccount: signupModel.paidIntoAccount,
              sortCode: signupModel.sortCode,
              bankAccountNumber: isBankUpdateRequired ? signupModel.bankAccountNumber : "",
              accountHoldername: isBankUpdateRequired ? signupModel.accountHoldername : "",
              bankName: isBankUpdateRequired ? signupModel.bankName : "",
              enableCel: signupModel.enableCel,
              agreeToSecoreTnc: signupModel.agreeToSecoreTnc,
              signatureFileId: fileId!,
              signatureFileName: fileName!,
              signatureFilePath: filePath!,
              agreeToLegalTnc: signupModel.isAgreedToTermsAndConditions,
            ),
          );

      if (account == null) {
        journeyController.endProcessing();
        onError(
          'Null returned from account service while adding payment details',
        );
        journeyController.notifyListenersInternal();
        return null;
      }

      journeyController.endProcessing();

      final accountNumber = account.replaceAll('"', '');
      return accountNumber;
    } catch (ex) {
      journeyController.endProcessing();
      onError(ex.toString());
    }
    return null;
  }
}
