import 'dart:convert';

import 'package:emr_core_api/graphql/mutations/inventory/elv/dismantle/dismantle.dart';
import 'package:emr_core_api/graphql/queries/inventory/elv/elv.dart';
import 'package:emr_core_api/graphql/queries/inventory/location/get_locations.graphql.dart';
import 'package:emr_core_api/graphql/queries/reference_data/elv/dismantle/dismantle.dart';
import 'package:emr_core_api/graphql/schema.graphql.dart';
import 'package:emr_one_core/config/app_config.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_elv_dismantling/models/models.dart';
import 'package:emr_sharedtypes/models/yard.dart';
import 'package:http/http.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DismantlingService {
  DismantlingService({
    required this.resilientHttpClient,
    required this.appConfig,
  });
  final BaseClient resilientHttpClient;
  final AppConfig appConfig;

  Future<DismantlingSearchResponse> getVehiclesForDismantling(
    int firstCount,
    String yardCode,
    String searchText, {
    String? afterCursor,
  }) async {
    final response = await documentNodeQuerySearchELVInventory.execute(
      resilientHttpClient,
      Query$SearchELVInventory.fromJson,
      variables: Variables$Query$SearchELVInventory(
        first: firstCount,
        after: afterCursor,
        input: Input$SearchELVInventoryInput(
          query: searchText,
          yardCodes: [yardCode],
          vehicleStatuses: [
            Enum$VehicleStatus.DISMANTLING,
            Enum$VehicleStatus.INSPECTED,
          ],
        ),
      ),
    );
    if (response.hasErrors()) {
      throw Exception(response.errors);
    }
    final nodes = response.data?.searchELVInventory?.nodes ?? [];
    final vehicles = nodes
        .where((x) => x != null && x.toJson()['__typename'] == 'Vehicle')
        .map((x) => DismantlingVehicle.fromJson(x!.toJson()))
        .toList();
    final pageInfo = EmrQueryGraphQLPageInfo(
      hasPreviousPage:
          response.data?.searchELVInventory?.pageInfo.hasPreviousPage ?? false,
      hasNextPage:
          response.data?.searchELVInventory?.pageInfo.hasNextPage ?? false,
      startCursor: response.data?.searchELVInventory?.pageInfo.startCursor,
      endCursor: response.data?.searchELVInventory?.pageInfo.endCursor,
    );
    return DismantlingSearchResponse(vehicles, pageInfo);
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

    final response = await resilientHttpClient.get(Uri.parse(endpoint));

    final yardCodes = (json.decode(response.body) as List<dynamic>)
        .map((e) => (e as Map<String, dynamic>)['yardCode'] as String)
        .toList();

    await prefs.setStringList('$my-elvYards', yardCodes);
    return yardCodes;
  }

  Future<DismantlingVehicle> addPartsToVehicle(
    String vehicleId,
    List<Enum$PartType> partsToAdd,
    String yardCode,
  ) async {
    final partsToAddInputList = partsToAdd
        .map(
          (partType) => Input$PartActionInput(
            type: partType,
          ),
        )
        .toList();
    final response = await documentNodeMutationAddPartsToVehicle.execute(
      resilientHttpClient,
      Mutation$AddPartsToVehicle.fromJson,
      variables: Variables$Mutation$AddPartsToVehicle(
        input: Input$VehiclePartsActionInput(
          vehicleId: vehicleId,
          parts: partsToAddInputList,
          yardCode: yardCode,
        ),
      ),
    );
    if (response.hasErrors()) {
      throw Exception(response.errors);
    }
    return DismantlingVehicle.fromJson(
      response.data?.addPartsToVehicle.toJson() ?? {},
    );
  }

  Future<DismantlingVehicle> deletePartsFromVehicle(
    String vehicleId,
    List<Enum$PartType> partsToDelete,
    String yardCode,
  ) async {
    final partsToDeleteInputList = partsToDelete
        .map((partType) => Input$PartActionInput(type: partType))
        .toList();
    final response = await documentNodeMutationDeletePartsFromVehicle.execute(
      resilientHttpClient,
      Mutation$DeletePartsFromVehicle.fromJson,
      variables: Variables$Mutation$DeletePartsFromVehicle(
        input: Input$VehiclePartsActionInput(
          vehicleId: vehicleId,
          parts: partsToDeleteInputList,
          yardCode: yardCode,
        ),
      ),
    );
    if (response.hasErrors()) {
      throw Exception(response.errors);
    }
    return DismantlingVehicle.fromJson(
      response.data?.deletePartsFromVehicle.toJson() ?? {},
    );
  }

  Future<DismantlingVehicle> undoDismantledVehicleParts(
    String vehicleId,
    List<Enum$PartType> partsToUndoDismantle,
    String yardCode,
  ) async {
    final partsToUndoDismantleInputList = partsToUndoDismantle
        .map((partType) => Input$PartActionInput(type: partType))
        .toList();
    final response =
        await documentNodeMutationUndoDismantledVehicleParts.execute(
      resilientHttpClient,
      Mutation$UndoDismantledVehicleParts.fromJson,
      variables: Variables$Mutation$UndoDismantledVehicleParts(
        input: Input$VehiclePartsActionInput(
          vehicleId: vehicleId,
          parts: partsToUndoDismantleInputList,
          yardCode: yardCode,
        ),
      ),
    );
    if (response.hasErrors()) {
      throw Exception(response.errors);
    }
    return DismantlingVehicle.fromJson(
      response.data?.undoDismantledVehicleParts.toJson() ?? {},
    );
  }

  Future<DismantlingVehicle> dismantleVehicleParts(
    String vehicleId,
    List<PartToMoveDetail> partToMoveDetails,
    String yardCode,
  ) async {
    final partsToMoveInputList = partToMoveDetails
        .map(
          (partToMoveDetail) => Input$PartActionInput(
            type: partToMoveDetail.partType,
            partCountToMove: partToMoveDetail.partCountToMove,
            partDetails: Input$PartDetailsInput(
              carBodyWeight: partToMoveDetail.carBodyWeight,
              catSealNumber: partToMoveDetail.catSealNumber,
              catSerialNumber: partToMoveDetail.catSerialNumber,
              inventoryLocationCode: partToMoveDetail.inventoryLocationCode,
            ),
          ),
        )
        .toList();
    final response = await documentNodeMutationDismantleVehicleParts.execute(
      resilientHttpClient,
      Mutation$DismantleVehicleParts.fromJson,
      variables: Variables$Mutation$DismantleVehicleParts(
        input: Input$VehiclePartsActionInput(
          vehicleId: vehicleId,
          parts: partsToMoveInputList,
          yardCode: yardCode,
        ),
      ),
    );
    if (response.hasErrors()) {
      throw Exception(response.errors);
    }
    return DismantlingVehicle.fromJson(
      response.data?.dismantleVehicleParts.toJson() ?? {},
    );
  }

  Future<DismantlingVehicle> updateVehicleStatus(
    String vehicleId,
    Enum$VehicleStatus vehicleStatus,
  ) async {
    final response = await documentNodeMutationUpdateVehicleStatus.execute(
      resilientHttpClient,
      Mutation$UpdateVehicleStatus.fromJson,
      variables: Variables$Mutation$UpdateVehicleStatus(
        input: Input$UpdateItemInputOfVehicleStatusInput(
          itemId: vehicleId,
          fieldValue: vehicleStatus,
        ),
      ),
    );
    if (response.hasErrors()) {
      throw Exception(response.errors);
    }
    return DismantlingVehicle.fromJson(
      response.data?.setVehicleStatus.toJson() ?? {},
    );
  }

  Future<Map<Enum$PartType, String>?>
      getDefaultVehiclePartInventoryLocationCodes(String territoryCode) async {
    final response =
        await documentNodeQueryGetVehiclePartInventoryCodes.execute(
      resilientHttpClient,
      Query$GetVehiclePartInventoryCodes.fromJson,
      variables: Variables$Query$GetVehiclePartInventoryCodes(
        territoryCode: territoryCode,
      ),
    );
    if (response.hasErrors()) {
      throw Exception(response.errors);
    }
    final data = response.data?.vehiclePartInventoryCodes.data;
    if (data != null) {
      return <Enum$PartType, String>{
        for (final d in data) d.key: d.value.inventoryLocationCode,
      };
    }
    return null;
  }

  Future<List<VehiclePartInventoryLocation>> searchInventoryLocations(
    String searchText,
    String yardId,
  ) async {
    final response = await documentNodeQueryGetLocations.execute(
      resilientHttpClient,
      Query$GetLocations.fromJson,
      variables: Variables$Query$GetLocations(
        input: Input$InventoryLocationsInput(
          query: searchText,
          yardId: yardId,
        ),
      ),
    );
    if (response.hasErrors()) {
      throw Exception(response.errors);
    }
    final nodes = response.data?.inventoryLocations?.nodes ?? [];
    return nodes
        .map((n) => VehiclePartInventoryLocation.fromJson(n.toJson()))
        .toList();
  }
}
