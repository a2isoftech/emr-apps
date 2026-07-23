import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:http/http.dart';

class LocationService {
  LocationService({
    required BaseClient httpClient,
    required String apiUrl,
  })  : _httpClient = httpClient,
        _apiUrl = apiUrl;

  final BaseClient _httpClient;
  final String _apiUrl;

  Future<List<Query$Locations$inventoryLocations$nodes>> getLocations({
    required Input$InventoryLocationsInput input,
    required int count,
  }) async {
    final response = await documentNodeQueryLocations.execute(
      _httpClient,
      url: Uri.tryParse(_apiUrl),
      Query$Locations.fromJson,
      variables: Variables$Query$Locations(
        first: count,
        input: input,
        order: [
          Input$InventoryLocationSortInput(code: Enum$SortEnumType.ASC),
        ],
      ),
    );

    if (response.hasErrors()) {
      throw Exception(response.errors);
    }

    return response.data?.inventoryLocations?.nodes ?? [];
  }

  Future<Query$Location$inventoryLocation?> getLocation(
    String id,
  ) async {
    final response = await documentNodeQueryLocation.execute(
      _httpClient,
      url: Uri.tryParse(_apiUrl),
      Query$Location.fromJson,
      variables: Variables$Query$Location(
        id: id,
      ),
    );
    if (response.hasErrors()) {
      throw Exception(response.errors);
    }
    return response.data?.inventoryLocation;
  }

  Future<GraphQLResponse<void>> addMedia(
    String id,
    List<String> media,
  ) async =>
      documentNodeMutationAddLocationMedia.execute(
        _httpClient,
        url: Uri.tryParse(_apiUrl),
        Mutation$AddLocationMedia.fromJson,
        variables: Variables$Mutation$AddLocationMedia(
          locationMediaInput:
              Input$InventoryLocationMediaInput(id: id, media: media),
        ),
      );

  Future<GraphQLResponse<void>> deleteMedia(
    String id,
    List<String> media,
  ) async =>
      documentNodeMutationDeleteLocationMedia.execute(
        _httpClient,
        url: Uri.tryParse(_apiUrl),
        Mutation$DeleteLocationMedia.fromJson,
        variables: Variables$Mutation$DeleteLocationMedia(
          locationMediaInput:
              Input$InventoryLocationMediaInput(id: id, media: media),
        ),
      );
}
