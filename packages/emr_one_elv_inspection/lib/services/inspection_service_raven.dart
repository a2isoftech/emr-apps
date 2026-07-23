import 'dart:io';

import 'package:emr_core_api/graphql/graphql.dart';
import 'package:emr_core_api/graphql/mutations/elv/inspection/inspection_mutations.dart';
import 'package:emr_core_api/graphql/queries/elv/inspection/inspection_queries.dart';
import 'package:emr_core_api/graphql/queries/inventory/techemat/search_techemat_cats.graphql.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_elv_core/models/api_response.dart';
import 'package:emr_one_elv_core/models/enums/enums.dart';
import 'package:emr_one_elv_core/models/inspection_search_input_model.dart';
import 'package:emr_one_elv_inspection/enums/enum.dart';
import 'package:emr_one_elv_inspection/enums/inspection_image_enum.dart';
import 'package:emr_one_elv_inspection/enums/non_conforming_part_enum.dart';
import 'package:emr_one_elv_inspection/models/pagination_response_model.dart';
import 'package:emr_one_elv_inspection/models/raven_migration/catalytic_converter_configuration.dart';
import 'package:emr_one_elv_inspection/models/raven_migration/inputs/get_vehicle_for_inspection_input.dart';
import 'package:emr_one_elv_inspection/models/raven_migration/inspection_vehicle_quote.dart';
import 'package:emr_one_elv_inspection/models/raven_migration/non_conforming_part.dart';
import 'package:emr_one_elv_inspection/models/raven_migration/outputs/set_catalytic_converter_result.dart';
import 'package:emr_one_elv_inspection/models/raven_migration/search_response_model.dart';
import 'package:emr_one_elv_inspection/models/raven_migration/techemat_manual_cat.dart';
import 'package:emr_one_elv_inspection/models/raven_migration/techemet_search_response.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';

class InspectionServiceRaven {
  InspectionServiceRaven({
    required this.resilientClient,
    required this.mediaApiBaseUrl,
  });
  final ResilientHttpClient resilientClient;
  final String mediaApiBaseUrl;

  Future<ApiResponse<List<SearchResponseModel>>> getInspectionVehicles({
    required InspectionSearchInput input,
    int first = 20,
  }) async {
    final response = await documentNodeQuerysearchVehiclesForInspection.execute(
      resilientClient,
      Query$searchVehiclesForInspection.fromJson,
      variables: Variables$Query$searchVehiclesForInspection(
        first: first,
        yardCode: input.yardCode,
        searchText: input.searchText,
      ),
    );

    if (response.hasErrors()) {
      EmrLogger.error(
        'Error occurred when searching vehicles for elv inspection',
        source: 'InspectionServiceRaven.getInspectionVehicles()',
        stackTrace: StackTrace.current,
        params: {'YardCode': input.yardCode, 'SearchText': input.searchText},
        error: Exception(response.errors?.map((e) => e.message).join('. ')),
      );
      return ApiResponse.serverFault();
    }

    final vehicles = response.data!.searchVehiclesForInspection!.nodes!
        .map((x) => SearchResponseModel.fromJson(x.toJson()))
        .toList();

    return ApiResponse(vehicles);
  }

  Future<ApiResponse<InspectionVehicleQuote>> getVehicleForInspection(
    GetVehicleForInspectionInput input,
  ) async {
    final response = await documentNodeQueryGetVehicleForInspection.execute(
      resilientClient,
      Query$GetVehicleForInspection.fromJson,
      variables: Variables$Query$GetVehicleForInspection(
        vehicleKey: input.vehicleKey,
        yardCode: input.yardCode,
        elvQuotationId:
            'elvQuotations/${input.territoryCode}/${input.quoteNumber}',
      ),
    );

    if (response.hasErrors()) {
      EmrLogger.error(
        'Error occurred when getting vehicle for elv inspection',
        source: 'InspectionServiceRaven.getVehicleForInspection()',
        stackTrace: StackTrace.current,
        params: {
          'YardCode': input.yardCode,
          'QuoteNumber': input.quoteNumber,
          'VehicleKey': input.vehicleKey,
        },
        error: Exception(response.errors?.map((e) => e.message).join('. ')),
      );
      return ApiResponse.serverFault();
    }

    try {
      final inspectionVehicleQuote = InspectionVehicleQuote.fromJson(
        response.data!.vehicleForInspection.toJson(),
      );
      return ApiResponse(inspectionVehicleQuote);
    } on Exception catch (exception) {
      EmrLogger.error(
        'Error occurred when parsing response when trying to get vehicle for '
        'elv inspection',
        source: 'InspectionServiceRaven.getVehicleForInspection()',
        stackTrace: StackTrace.current,
        params: {
          'YardCode': input.yardCode,
          'QuoteNumber': input.quoteNumber,
          'VehicleKey': input.vehicleKey,
        },
        error: exception,
      );
      return ApiResponse.serverFault();
    }
  }

  Future<XFile?> getExistingImage(String path) async {
    final token = await FirebaseLogin.getToken();
    final response = await resilientClient.get(
      Uri.parse('$mediaApiBaseUrl/$path'),
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
    final token = await FirebaseLogin.getToken();
    final response = await resilientClient.get(
      Uri.parse('$mediaApiBaseUrl/$path'),
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

  Future<void> updateVehicleDocument(
    InspectionImageEnum imageType,
    String imagePath,
    String elvQuotationId,
    String vehicleKey, {
    bool? isVinUnreadable,
  }) async {
    final response = await documentNodeMutationUpdateDoc.execute(
      resilientClient,
      Mutation$UpdateDoc.fromJson,
      variables: Variables$Mutation$UpdateDoc(
        documentType: Enum$VehicleDocumentType.fromJson(
          inspectionImageToJson(imageType),
        ),
        elvQuotationId: elvQuotationId,
        vehicleKey: vehicleKey,
        imagePath: imagePath,
        isVinUnreadable: isVinUnreadable,
      ),
    );

    if (response.hasErrors()) {
      EmrLogger.error(
        'Error occurred when updating vehicle document for elv inspection',
        source: 'InspectionServiceRaven.updateVehicleDocument()',
        stackTrace: StackTrace.current,
        params: {
          'ImageType': imageType.name,
          'ElvQuotationId': elvQuotationId,
          'ImagePath': imagePath,
          'VehicleKey': vehicleKey,
        },
        error: Exception(response.errors?.map((e) => e.message).join('. ')),
      );
      return;
    }
  }

  Future<NonConformingPart?> addNonConformingPart(
    String elvQuotationId,
    String vehicleKey,
    NonConformingPartEnum partName,
    List<String> partPhotos,
  ) async {
    final response = await documentNodeMutationAddNonConformingPart.execute(
      resilientClient,
      Mutation$AddNonConformingPart.fromJson,
      variables: Variables$Mutation$AddNonConformingPart(
        elvQuotationId: elvQuotationId,
        vehicleKey: vehicleKey,
        partName: partName.name.toUpperCase(),
        partPhotoUrls: partPhotos,
      ),
    );

    if (response.hasErrors()) {
      EmrLogger.error(
        'Error occurred when adding non conforming part for elv inspection',
        source: 'InspectionServiceRaven.addNonConformingPart()',
        stackTrace: StackTrace.current,
        params: {
          'PartName': partName.name.toUpperCase(),
          'ElvQuotationId': elvQuotationId,
          'PartPhotoUrls': partPhotos.join(', '),
          'VehicleKey': vehicleKey,
        },
        error: Exception(response.errors?.map((e) => e.message).join('. ')),
      );
      return null;
    }

    final part = response.data?.addNonConformingPart;
    if (part != null) {
      return NonConformingPart.fromJson(part.toJson());
    }
    return null;
  }

  Future<NonConformingPart?> updateNonConformingPartPhoto(
    String elvQuotationId,
    String vehicleKey,
    String partKey,
    List<String> partPhotos,
  ) async {
    final response = await documentNodeMutationUpdateNonConformingPart.execute(
      resilientClient,
      Mutation$UpdateNonConformingPart.fromJson,
      variables: Variables$Mutation$UpdateNonConformingPart(
        elvQuotationId: elvQuotationId,
        vehicleKey: vehicleKey,
        partKey: partKey,
        partPhotoUrls: partPhotos,
      ),
    );

    if (response.hasErrors()) {
      EmrLogger.error(
        'Error occurred when updating non conforming part for elv inspection',
        source: 'InspectionServiceRaven.updateNonConformingPartPhoto()',
        stackTrace: StackTrace.current,
        params: {
          'PartKey': partKey,
          'ElvQuotationId': elvQuotationId,
          'PartPhotoUrls': partPhotos.join(', '),
          'VehicleKey': vehicleKey,
        },
        error: Exception(response.errors?.map((e) => e.message).join('. ')),
      );
      return null;
    }

    final part = response.data?.updateNonConformingPart;
    if (part != null) {
      return NonConformingPart.fromJson(part.toJson());
    }
    return null;
  }

  Future<bool> deleteNonConformingPart(
    String elvQuotationId,
    String vehicleKey,
    String partKey,
  ) async {
    final response = await documentNodeMutationDeleteNonConformingPart.execute(
      resilientClient,
      Mutation$DeleteNonConformingPart.fromJson,
      variables: Variables$Mutation$DeleteNonConformingPart(
        elvQuotationId: elvQuotationId,
        vehicleKey: vehicleKey,
        partKey: partKey,
      ),
    );

    if (response.hasErrors()) {
      EmrLogger.error(
        'Error occurred when deleting non conforming part for elv inspection',
        source: 'InspectionServiceRaven.deleteNonConformingPart()',
        stackTrace: StackTrace.current,
        params: {
          'PartKey': partKey,
          'ElvQuotationId': elvQuotationId,
          'VehicleKey': vehicleKey,
        },
        error: Exception(response.errors?.map((e) => e.message).join('. ')),
      );
      return false;
    }

    return true;
  }

  Future<bool> updateBatteryStatus(
    String elvQuotationId,
    String vehicleKey,
    List<String> batteryPhotoPaths, {
    required bool hasBattery,
  }) async {
    final response = await documentNodeMutationUpdateBatteryStatus.execute(
      resilientClient,
      Mutation$UpdateBatteryStatus.fromJson,
      variables: Variables$Mutation$UpdateBatteryStatus(
        elvQuotationId: elvQuotationId,
        vehicleKey: vehicleKey,
        hasBattery: hasBattery,
        batteryPhotoPaths: batteryPhotoPaths,
      ),
    );

    if (response.hasErrors()) {
      EmrLogger.error(
        'Error occurred when updating battery status for elv inspection',
        source: 'InspectionServiceRaven.updateBatteryStatus()',
        stackTrace: StackTrace.current,
        params: {
          'HasBattery': hasBattery.toString(),
          'ElvQuotationId': elvQuotationId,
          'batteryPhotoPaths': batteryPhotoPaths.join(', '),
          'VehicleKey': vehicleKey,
        },
        error: Exception(response.errors?.map((e) => e.message).join('. ')),
      );
      return false;
    }
    return true;
  }

  Future<SetCatalyticConverterResult> addCatalyticConverter(
    String elvQuotationId,
    String vehicleKey,
    CatalyticConverterClassificationEnum classification,
    PartLocationEnum partLocation, {
    String techemetCatId = '',
    String imagePath = '',
  }) async {
    final response = await documentNodeMutationAddCat.execute(
      resilientClient,
      Mutation$AddCat.fromJson,
      variables: Variables$Mutation$AddCat(
        elvQuotationId: elvQuotationId,
        vehicleKey: vehicleKey,
        classification: Enum$CatalyticConverterClassification.fromJson(
          catalyticConverterClassificationEnumToJson(classification),
        ),
        partLocation: Enum$PartLocation.fromJson(
          partLocationToJson(partLocation),
        ),
        techemetCatId: techemetCatId,
        partPhotos: imagePath.isEmpty ? [] : [imagePath],
      ),
    );

    if (response.hasErrors()) {
      final errorMessage = response.errors?.map((e) => e.message).join('. ');
      EmrLogger.error(
        'Error occurred when adding catalytic converter for elv inspection',
        source: 'InspectionServiceRaven.addCatalyticConverter()',
        stackTrace: StackTrace.current,
        params: {
          'ElvQuotationId': elvQuotationId,
          'VehicleKey': vehicleKey,
          'Classification': classification.name,
          'PartLocation': partLocation.name,
        },
        error: Exception(errorMessage),
      );
      return SetCatalyticConverterResult(
        success: false,
        errorMessage: errorMessage,
      );
    }

    final responseData = response.data?.addCatalyticConverter;
    if (responseData != null) {
      if (responseData
          is Mutation$AddCat$addCatalyticConverter$$ElvInspectionError) {
        EmrLogger.error(
          'Error occurred when adding catalytic converter for elv inspection',
          source: 'InspectionServiceRaven.addCatalyticConverter()',
          stackTrace: StackTrace.current,
          params: {
            'ElvQuotationId': elvQuotationId,
            'VehicleKey': vehicleKey,
            'Classification': classification.name,
            'PartLocation': partLocation.name,
          },
          error: Exception(responseData.message),
        );
        return SetCatalyticConverterResult(
          success: false,
          errorMessage: responseData.message,
        );
      } else {
        final responseDataJson = responseData.toJson();
        final catalyticConverter = CatalyticConverterConfiguration.fromJson(
          responseDataJson['catalyticConverter'] as Map<String, dynamic>,
        );
        final price = responseDataJson['price'] as Map<String, dynamic>;
        return SetCatalyticConverterResult(
          success: true,
          catalyticConverter: catalyticConverter,
          price: price['price'] as double,
        );
      }
    }

    return SetCatalyticConverterResult(success: false);
  }

  Future<bool> deleteCatalyticConverter(
    String elvQuotationId,
    String vehicleKey,
    String partKey,
  ) async {
    final response = await documentNodeMutationDeleteCat.execute(
      resilientClient,
      Mutation$DeleteCat.fromJson,
      variables: Variables$Mutation$DeleteCat(
        elvQuotationId: elvQuotationId,
        vehicleKey: vehicleKey,
        partKey: partKey,
      ),
    );

    if (response.hasErrors()) {
      EmrLogger.error(
        'Error occurred when deleting catalytic converter for elv inspection',
        source: 'InspectionServiceRaven.deleteCatalyticConverter()',
        stackTrace: StackTrace.current,
        params: {
          'PartKey': partKey,
          'ElvQuotationId': elvQuotationId,
          'VehicleKey': vehicleKey,
        },
        error: Exception(response.errors?.map((e) => e.message).join('. ')),
      );
      return false;
    }

    return true;
  }

  Future<SetCatalyticConverterResult> updateCatalyticConverter(
    String elvQuotationId,
    String vehicleKey,
    String partKey,
    CatalyticConverterClassificationEnum classification,
    PartLocationEnum partLocation,
  ) async {
    final response = await documentNodeMutationUpdateCat.execute(
      resilientClient,
      Mutation$UpdateCat.fromJson,
      variables: Variables$Mutation$UpdateCat(
        elvQuotationId: elvQuotationId,
        vehicleKey: vehicleKey,
        partKey: partKey,
        classification: Enum$CatalyticConverterClassification.fromJson(
          catalyticConverterClassificationEnumToJson(classification),
        ),
        partLocation: Enum$PartLocation.fromJson(
          partLocationToJson(partLocation),
        ),
      ),
    );

    if (response.hasErrors()) {
      EmrLogger.error(
        'Error occurred when updating catalytic converter for elv inspection',
        source: 'InspectionServiceRaven.updateCatalyticConverter()',
        stackTrace: StackTrace.current,
        params: {
          'ElvQuotationId': elvQuotationId,
          'VehicleKey': vehicleKey,
          'Classification': classification.name,
          'PartLocation': partLocation.name,
          'PartKey': partKey,
        },
        error: Exception(response.errors?.map((e) => e.message).join('. ')),
      );
      return SetCatalyticConverterResult(success: false);
    }

    final responseData = response.data?.updateCatalyticConverter;
    if (responseData != null) {
      final responseDataJson = responseData.toJson();
      final catalyticConverter = CatalyticConverterConfiguration.fromJson(
        responseDataJson['catalyticConverter'] as Map<String, dynamic>,
      );
      final price = responseDataJson['price'] as Map<String, dynamic>;
      return SetCatalyticConverterResult(
        success: true,
        catalyticConverter: catalyticConverter,
        price: price['price'] as double,
      );
    }

    return SetCatalyticConverterResult(success: false);
  }

  Future<PaginationResponseModel<TechemetManualCat>?> manualCatsSearch({
    required String yardCode,
    String? filter,
    int? first,
    int? last,
    String? before,
    String? after,
  }) async {
    final response = await documentNodeQuerySearchTechematCats.execute(
      resilientClient,
      Query$SearchTechematCats.fromJson,
      variables: Variables$Query$SearchTechematCats(
        first: first,
        last: last,
        before: before,
        after: after,
        input: Input$SearchTechematCatsInput(
          query: filter,
          yardCodes: [yardCode],
        ),
        order: [
          Input$ResultSortInput(
            techemetPriceCountSheetDetailId: Enum$SortEnumType.DESC,
          ),
        ],
      ),
    );

    if (response.hasErrors()) {
      EmrLogger.error(
        'Error occurred when searching manual techemet cats for elv inspection',
        source: 'InspectionServiceRaven.manualCatsSearch()',
        stackTrace: StackTrace.current,
        params: {
          'YardCode': yardCode,
          'Filter': filter ?? '',
          'First': first.toString(),
          'Last': last.toString(),
          'Before': before ?? '',
          'After': after ?? '',
        },
        error: Exception(response.errors?.map((e) => e.message).join('. ')),
      );
      return null;
    }
    if (response.data?.searchTechematCats?.nodes == null) {
      return null;
    }

    final cats = response.data!.searchTechematCats!.nodes!.map(
      (x) => TechemetSearchResponse.fromJson(x.toJson()),
    );

    final manualCats = cats
        .map(
          (cat) => TechemetManualCat(
            id: cat.id,
            fill: cat.fill,
            unitCost: cat.unitCost,
            unitCostPaid: cat.unitCostPaid,
            make: cat.make,
            model: cat.model,
            serial: cat.serial,
            sealNo: cat.sealNo,
          ),
        )
        .toList();

    return PaginationResponseModel<TechemetManualCat>(
      data: manualCats,
      facets: {},
      totalCount: response.data!.searchTechematCats!.totalCount,
      pageInfo: EmrQueryGraphQLPageInfo(
        hasPreviousPage:
            response.data!.searchTechematCats!.pageInfo.hasPreviousPage,
        hasNextPage: response.data!.searchTechematCats!.pageInfo.hasNextPage,
        startCursor: response.data!.searchTechematCats!.pageInfo.startCursor,
        endCursor: response.data!.searchTechematCats!.pageInfo.endCursor,
      ),
    );
  }
}
