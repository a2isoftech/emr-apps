import 'dart:async';
import 'dart:convert';
import 'dart:typed_data';

import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_core/config/app_config.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
// ignore: unnecessary_import
import 'package:http_parser/http_parser.dart';

class AzureFormRecogniserService {
  AzureFormRecogniserService({
    required this.appConfig,
  });

  String _getAfrUrl() {
    return Uri.parse(appConfig.primaryApiUrl).resolve('afr').toString();
  }

  final AppConfig appConfig;

  static const String apimKeyName = 'apimKey';
  Future<UploadedDocumentDetailsModel?> readDocument(
    String token,
    Enum$IdentificationType identificationType,
    Enum$IdentificationSubType identificationSubType,
    Uint8List? imageBytes,
  ) async {
    final idType = _getIdType(identificationSubType);

    var modelName = '';
    if (identificationType == Enum$IdentificationType.PHOTO_ID) {
      modelName =
          identificationSubType == Enum$IdentificationSubType.UK_FIREARM_LICENSE
          ? 'a2'
          : 'prebuilt-idDocument';
    } else {
      modelName =
          identificationSubType == Enum$IdentificationSubType.UK_DRIVING_LICENSE
          ? 'prebuilt-idDocument'
          : 'prebuilt-invoice';
    }

    var request = http.MultipartRequest(
      'POST',
      Uri.parse('${_getAfrUrl()}/analyze'),
    );

    request.files.add(
      MultipartFile.fromBytes(
        'file',
        imageBytes!,
        contentType: MediaType('image', 'jpg'),
        filename: 'image.jpg',
      ),
    );
    final headers = <String, String>{
      'Access-Control-Allow-Origin': '*',
      'Content-Type': 'application/json',
      'Accept': '*/*',
      'Authorization': 'Bearer $token',
      'Ocp-Apim-Subscription-Key': appConfig.firebaseRemoteConfig.getString(
        apimKeyName,
      ),
    };
    request.headers.addAll(headers);
    request.fields['modelName'] = modelName;
    request.fields['idType'] = idType;
    final analyzeResult = await request.send();
    final analysisId = (await analyzeResult.stream.bytesToString()).replaceAll(
      '"',
      '',
    );

    Map<String, dynamic>? parsed;
    var analyzing = true;
    while (analyzing) {
      request = http.MultipartRequest(
        'POST',
        Uri.parse('${_getAfrUrl()}/read'),
      );

      request.headers.addAll({
        'Authorization': 'Bearer $token',
        'Ocp-Apim-Subscription-Key': appConfig.firebaseRemoteConfig.getString(
          apimKeyName,
        ),
      });

      request.fields['modelName'] = modelName;

      request.fields['idType'] = idType;

      request.fields['analysisId'] = analysisId;

      final readResult = await request.send();

      final readResponse = await http.Response.fromStream(readResult);
      parsed = json.decode(readResponse.body) as Map<String, dynamic>;
      if (parsed.containsKey('errorMessage') &&
          parsed['errorMessage'] != 'Running') {
        analyzing = false;
      }
    }

    final documentNumber = parsed!['documentNumber'];
    if (documentNumber == null &&
        identificationSubType !=
            Enum$IdentificationSubType.WASTE_TRANSFER_NOTE) {
      return null;
    }
    final uploadeddocumentdetails = UploadedDocumentDetailsModel.fromJson(
      parsed,
    );
    return uploadeddocumentdetails;
  }

  String _getIdType(Enum$IdentificationSubType documentSubTypeID) {
    switch (documentSubTypeID) {
      case Enum$IdentificationSubType.NONE:
        return 'NONE';
      case Enum$IdentificationSubType.UK_DRIVING_LICENSE:
        return 'UKDL';
      case Enum$IdentificationSubType.UKEUEEA_PASSPORT:
        return 'UKPP';
      case Enum$IdentificationSubType.EU_NATIONAL_ID_CARD:
        return 'EU_NATIONAL_ID_CARD';
      case Enum$IdentificationSubType.UTILITY_BILL:
        return 'UTILITY_BILL';
      case Enum$IdentificationSubType.COUNCIL_RENT_BOOK:
        return 'COUNCIL_RENT_BOOK';
      case Enum$IdentificationSubType.BANK_OR_BUILDING_SOCIETY_STATEMENT:
        return 'BANK_OR_BUILDING_SOCIETY_STATEMENT';
      case Enum$IdentificationSubType.COUNCIL_TAX_DEMAND_LETTER:
        return 'COUNCIL_TAX_DEMAND_LETTER';
      case Enum$IdentificationSubType.USA_DRIVER_LICENCE:
        return 'USDL';
      case Enum$IdentificationSubType.OTHER:
        return 'OTHER';
      case Enum$IdentificationSubType.CREDIT_OR_DEBIT_CARD_STATEMENT:
        return 'CREDIT_OR_DEBIT_CARD_STATEMENT';
      case Enum$IdentificationSubType.UKEU_DRIVING_LICENSE:
        return 'UKEU_DRIVING_LICENSE';
      case Enum$IdentificationSubType.BIOMETRIC_IMMIGRATION_DOCUMENT:
        return 'BIOMETRIC_IMMIGRATION_DOCUMENT';
      case Enum$IdentificationSubType.EU_DRIVING_LICENSE:
        return 'EU_DRIVING_LICENSE';
      case Enum$IdentificationSubType.HMRC_CORRESPONDANCE:
        return 'HMRC_CORRESPONDANCE';
      case Enum$IdentificationSubType.MORTGAGE_STATEMENT:
        return 'MORTGAGE_STATEMENT';
      case Enum$IdentificationSubType.UK_FIREARM_LICENSE:
        return 'UK_FIREARM_LICENSE';
      case Enum$IdentificationSubType.WASTE_TRANSFER_NOTE:
        return 'WASTE_TRANSFER_NOTE';
      case Enum$IdentificationSubType.$unknown:
        return r'$unknown';
    }
  }
}
