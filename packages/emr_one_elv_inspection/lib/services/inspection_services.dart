import 'dart:convert';
import 'dart:io';

import 'package:cross_file/cross_file.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_elv_core/models/api_response.dart';
import 'package:emr_one_elv_core/models/inspection_search_input_model.dart';
import 'package:emr_one_elv_inspection/models/inspection_quote_model.dart';
import 'package:emr_one_elv_inspection/models/model.dart';
import 'package:emr_one_elv_quote_api/emr_one_elv_quote_api.dart';
import 'package:emr_one_elv_quote_api/graphql/schema.graphql.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:path_provider/path_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class InspectionServices extends BaseService {
  InspectionServices({
    required super.resilientClient,
    required super.appConfig,
  });

  Future<ApiResponse<List<InspectionResponseModel>>> getInspectionVehicles({
    required InspectionSearchInput input,
    String? after,
    String? before,
    int? first,
    int? last,
  }) async {
    final response = await documentNodeQueryQuotesForInspectionQuery.execute(
      resilientClient,
      Query$QuotesForInspectionQuery.fromJson,
      variables: Variables$Query$QuotesForInspectionQuery(
        first: first ?? 20,
        yardCode: input.yardCode,
        searchText: input.searchText,
      ),
    );

    if (response.hasErrors()) {
      throw Exception(response.errors);
    }
    final items = response.data!.quotesForInspection!.nodes!
        .map((x) => InspectionResponseModel.fromJson(x.toJson()))
        .toList();
    return ApiResponse(items);
  }

  Future<ApiResponse<InspectionQuoteModel>> getQuoteToInspect(
    int quoteId,
  ) async {
    final response = await documentNodeQuerygetQuoteToInspectByQuoteId.execute(
      resilientClient,
      Query$getQuoteToInspectByQuoteId.fromJson,
      variables: Variables$Query$getQuoteToInspectByQuoteId(quoteId: quoteId),
    );

    if (response.hasErrors()) {
      throw Exception(response.errors);
    }

    final inspectionQuote =
        InspectionQuoteModel.fromJson(response.data!.quoteToInspect.toJson());

    return ApiResponse(inspectionQuote);
  }

  Future<ApiResponse<String?>> completeQuote({
    required int batchQuoteId,
    required int quoteId,
    required VehicleConfigurationModel vehicleConfiguration,
    required String territoryCode,
    required double quotePrice,
  }) async {
    final response =
        await documentNodeMutationCompleteInspectionMutation.execute(
      resilientClient,
      Mutation$CompleteInspectionMutation.fromJson,
      variables: Variables$Mutation$CompleteInspectionMutation(
        batchQuoteId: batchQuoteId,
        quoteId: quoteId,
        territory: territoryCode,
        quoteChangedValue: quotePrice,
        configuration: Input$VehicleConfigurationModelInput(
          alloyWheels: vehicleConfiguration.alloyWheels ?? 0,
          steelWheels: vehicleConfiguration.steelWheels ?? 0,
          chromeWheels: vehicleConfiguration.chromeWheels ?? 0,
          hasOriginalCat: vehicleConfiguration.hasOriginalCat ?? false,
          hasBattery: vehicleConfiguration.hasBattery ?? false,
          catDetails: vehicleConfiguration.catDetails
              .map(
                (x) => Input$VehicleCatDetailRequestInput.fromJson(x.toJson()),
              )
              .toList(),
          nonConformingParts: vehicleConfiguration.nonConformingParts
              .map(
                (x) => Input$NonConformingPartModelInput.fromJson(x.toJson()),
              )
              .toList(),
          vehicleDocuments: vehicleConfiguration.vehicleDocuments
              .map((x) => Input$VehicleDocumentsModelInput.fromJson(x.toJson()))
              .toList(),
          batteryImage: vehicleConfiguration.batteryImage,
          priceAdjustment: vehicleConfiguration.priceAdjustment
                  ?.map(
                    (x) => Input$PriceAdjustmentComponentModelInput.fromJson(
                      x.toJson(),
                    ),
                  )
                  .toList() ??
              [],
          vinUnreadable: vehicleConfiguration.vinUnreadable, 
        ),
      ),
    );
    if (response.hasErrors()) {
      return ApiResponse(
        isOk: false,
        status: ResponseStatus.badRequest,
        response.errors?.map((x) => x.message).join(',') ?? '',
      );
    }
    return ApiResponse(
      'Success',
    );
  }

  Future<ApiResponse<void>> saveInspection({
    required int batchQuoteId,
    required int quoteId,
    required VehicleConfigurationModel vehicleConfiguration,
    required String territoryCode,
    required double quotePrice,
  }) async {
    final response = await documentNodeMutationSaveInspectionMutation.execute(
      resilientClient,
      Mutation$SaveInspectionMutation.fromJson,
      variables: Variables$Mutation$SaveInspectionMutation(
        batchQuoteId: batchQuoteId,
        quoteId: quoteId,
        territory: territoryCode,
        quoteChangedValue: quotePrice,
        configuration: Input$VehicleConfigurationModelInput(
          alloyWheels: vehicleConfiguration.alloyWheels ?? 0,
          steelWheels: vehicleConfiguration.steelWheels ?? 0,
          chromeWheels: vehicleConfiguration.chromeWheels ?? 0,
          hasOriginalCat: vehicleConfiguration.hasOriginalCat ?? false,
          hasBattery: vehicleConfiguration.hasBattery ?? false,
          catDetails: vehicleConfiguration.catDetails
              .map(
                (x) => Input$VehicleCatDetailRequestInput.fromJson(x.toJson()),
              )
              .toList(),
          nonConformingParts: vehicleConfiguration.nonConformingParts
              .map(
                (x) => Input$NonConformingPartModelInput.fromJson(x.toJson()),
              )
              .toList(),
          vehicleDocuments: vehicleConfiguration.vehicleDocuments
              .map((x) => Input$VehicleDocumentsModelInput.fromJson(x.toJson()))
              .toList(),
          batteryImage: vehicleConfiguration.batteryImage,
          priceAdjustment: vehicleConfiguration.priceAdjustment
                  ?.map(
                    (x) => Input$PriceAdjustmentComponentModelInput.fromJson(
                      x.toJson(),
                    ),
                  )
                  .toList() ??
              [],
          vinUnreadable: vehicleConfiguration.vinUnreadable,
        ),
      ),
    );
    if (response.hasErrors()) {
      return ApiResponse(
        null,
        isOk: false,
        status: ResponseStatus.badRequest,
        errorMessage: response.errors?.map((x) => x.message).join(',') ?? '',
      );
    }
    return ApiResponse(null);
  }

  Future<List<Yard>> getElvYardsFromUserYards(List<Yard> userYards) async {
    final yardsFromGeoLocation = await getGeoLocationYards();

    final elvYards = userYards
        .where((element) => yardsFromGeoLocation.contains(element.yardCode))
        .toList();

    return elvYards;
  }

  Future<List<String>> getGeoLocationYards() async {
    final prefs = await SharedPreferences.getInstance();
    final my = '${DateTime.now().year}${DateTime.now().month}';
    final elvYards = prefs.getStringList('$my-elvYards');

    if (elvYards != null) return elvYards;

    final endpoint = '${appConfig.geolocationApiUrl}/api/yards/getAllYards';

    final response = await resilientClient.get(Uri.parse(endpoint));

    final yardCodes = (json.decode(response.body) as List<dynamic>)
        .map((e) => (e as Map<String, dynamic>)['yardCode'] as String)
        .toList();

    await prefs.setStringList('$my-elvYards', yardCodes);
    return yardCodes;
  }

  Future<void> updateV5Document({
    required String filePath,
    required int quoteId,
    required int batchQuoteId,
    required int vehicleId,
  }) async {
    final response = await documentNodeMutationUpdateV5DocumentMutation.execute(
      resilientClient,
      Mutation$UpdateV5DocumentMutation.fromJson,
      variables: Variables$Mutation$UpdateV5DocumentMutation(
        input: Input$DocumentUploadRequestInput(
          mediaPath: filePath,
          batchQuoteId: batchQuoteId,
          vehicleId: vehicleId,
          quoteId: quoteId,
        ),
      ),
    );

    if (response.hasErrors()) {
      throw Exception(response.errors);
    }
  }

  Future<void> updateAccountDocument({
    required String filePath,
    required Enum$DocumentUploadTypeEnum imageType,
    required int quoteId,
    required int batchQuoteId,
    required VerificationTypeEnum documentType,
    required VerificationSubTypeEnum documentSubType,
    required int vehicleId,
  }) async {
    final response = await documentNodeMutationUpdateAccountDocument.execute(
      resilientClient,
      Mutation$UpdateAccountDocument.fromJson,
      variables: Variables$Mutation$UpdateAccountDocument(
        input: Input$AccountDocumentUploadRequestInput(
          documentUploadTypeEnum: imageType,
          mediaPath: filePath,
          batchQuoteId: batchQuoteId,
          vehicleId: vehicleId,
          quoteId: quoteId,
          documentTypeEnum: Enum$DocumentTypeEnum.fromJson(documentType.label),
          documentSubTypeEnum:
              Enum$DocumentSubTypeEnum.fromJson(documentSubType.label),
        ),
      ),
    );

    if (response.hasErrors()) {
      throw Exception(response.errors);
    }
  }

  Future<void> updateBatteryStatus({
    required int quoteId,
    required bool hasBattery,
  }) async {
    final response =
        await documentNodeMutationUpdateBatteryStatusMutation.execute(
      resilientClient,
      Mutation$UpdateBatteryStatusMutation.fromJson,
      variables: Variables$Mutation$UpdateBatteryStatusMutation(
        quoteId: quoteId,
        hasBattery: hasBattery,
      ),
    );

    if (response.hasErrors()) {
      throw Exception(response.errors);
    }
  }

  Future<void> updateNonConformingPartDocument({
    required int quoteId,
    required int batchQuoteId,
    required String partName,
  }) async {
    final response =
        await documentNodeMutationUpdateNonConformingPartMutation.execute(
      resilientClient,
      Mutation$UpdateNonConformingPartMutation.fromJson,
      variables: Variables$Mutation$UpdateNonConformingPartMutation(
        quoteId: quoteId,
        batchQuoteId: batchQuoteId,
        partName: partName,
      ),
    );

    if (response.hasErrors()) {
      throw Exception(response.errors);
    }
  }

  Future<ApiResponse<int>> updateCATDocument({
    required int quoteId,
    required int vehicleId,
    required VehicleCatDetailModel cat,
    String? territory,
  }) async {
    final response = await documentNodeMutationUpdateCATMutation.execute(
      resilientClient,
      Mutation$UpdateCATMutation.fromJson,
      variables: Variables$Mutation$UpdateCATMutation(
        quoteId: quoteId,
        vehicleId: vehicleId,
        territory: territory,
        input: Input$VehicleCatDetailRequestInput(
          catalyticFill: cat.catalyticFill,
          matchProbability: cat.matchProbability,
          sealNumber: cat.sealNumber,
          serialNumber: cat.serialNumber,
          vehicleCatId: cat.vehicleCatId,
          location: cat.location ?? '',
          catClassification: cat.catClassification ?? '',
          catValue: cat.catValue ?? 0,
          isManual: cat.isManual,
          catId: cat.catId,
          techemetPriceCountSheetDetailId: cat.techemetPriceCountSheetDetailId,
        ),
      ),
    );

    if (response.hasErrors()) {
      return ApiResponse(
        null,
        isOk: false,
        errorMessage: response.errors?.map((x) => x.message).join(',') ?? '',
        status: ResponseStatus.badRequest,
      );
    }

    // Return uploaded path of image
    return ApiResponse(response.data!.updateCat);
  }

  Future<void> deleteCat(int vehicleId, int vehicleCatId) async {
    final response = await documentNodeMutationDeleteCatMutation.execute(
      resilientClient,
      Mutation$DeleteCatMutation.fromJson,
      variables: Variables$Mutation$DeleteCatMutation(
        vehicleId: vehicleId,
        vehicleCatId: vehicleCatId,
      ),
    );

    if (response.hasErrors()) {
      throw Exception(response.errors);
    }
    return;
  }

  Future<void> deleteNonConformingPart({
    required int batchQuoteId,
    required String partName,
  }) async {
    final response =
        await documentNodeMutationDeleteNonConformingPartMutation.execute(
      resilientClient,
      Mutation$DeleteNonConformingPartMutation.fromJson,
      variables: Variables$Mutation$DeleteNonConformingPartMutation(
        batchQuoteId: batchQuoteId,
        partName: partName,
      ),
    );

    if (response.hasErrors()) {
      throw Exception(response.errors);
    }
    return;
  }

  Future<bool> isImageExists(String path) async {
    try {
      final endpoint = appConfig.mediaApi;
      final token = await FirebaseLogin.getToken();
      final response = await resilientClient.get(
        Uri.parse('$endpoint/$path'),
        headers: {'Authorization': 'Bearer $token'},
      );
      return response.statusCode == 200;
    } catch (err) {
      return true;
    }
  }

  Future<XFile?> getExistingImage(String path) async {
    final endpoint = appConfig.mediaApi;
    final token = await FirebaseLogin.getToken();
    final response = await resilientClient.get(
      Uri.parse('$endpoint/$path'),
      headers: {'Authorization': 'Bearer $token'},
    );
    if (response.statusCode != 200) {
      return null;
    }
    final xfile = XFile.fromData(
      response.bodyBytes,
      name: 'image.png',
      mimeType: 'image/png',
    );
    return xfile;
  }

  Future<File?> getServerImageData(String path) async {
    final endpoint = appConfig.mediaApi;
    final token = await FirebaseLogin.getToken();
    final response = await resilientClient.get(
      Uri.parse('$endpoint/$path'),
      headers: {'Authorization': 'Bearer $token'},
    );
    if (response.statusCode != 200) {
      return null;
    }
    final tempDir = await getTemporaryDirectory();
    final file = File(
      '${tempDir.path}/${DateTime.now().millisecondsSinceEpoch}_image.png',
    );
    await file.writeAsBytes(response.bodyBytes);
    return file;
  }

  Future<ApiResponse<String>> updateInspectionStatus({
    required int quoteId,
  }) async {
    final response =
        await documentNodeMutationUpdateInspectionToInProgressMutation.execute(
      resilientClient,
      Mutation$UpdateInspectionToInProgressMutation.fromJson,
      variables: Variables$Mutation$UpdateInspectionToInProgressMutation(
        quoteId: quoteId,
      ),
    );

    if (response.hasErrors()) {
      return ApiResponse(
        null,
        isOk: false,
        errorMessage: response.errors?.map((x) => x.message).join(',') ?? '',
        status: ResponseStatus.badRequest,
      );
    }
    return ApiResponse('Success');
  }
}
