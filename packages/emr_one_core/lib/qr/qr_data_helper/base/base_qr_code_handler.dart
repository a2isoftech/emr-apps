import 'package:emr_one_core/qr/qr_data_helper/models/qr_code_data.dart';

abstract class BaseQRCodeHandler {
  Future<String> generateQRCodeContent({required QRCodeData data});

  String generateQrCodeContentSync({required QRCodeData data});

  Future<QRCodeData?> readQrCode({required String qrCodeContent});

  QRCodeData? readQrCodeSync({required String qrCodeContent});
}
