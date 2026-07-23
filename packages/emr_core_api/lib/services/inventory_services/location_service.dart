import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';

extension LocationService on InventoryService {
  Future<List<InventoryLocation>> getLocations({
    required String yardCode,
    required String pattern,
    String? productCode,
  }) async {
    final locations = await documentNodeQueryGetInventoryLocations.execute(
      httpClient,
      (data) {
        final result = Query$GetInventoryLocations.fromJson(data);
        return result.searchInventoryLocations?.nodes
                ?.map((x) => InventoryLocation.fromJson(x.toJson()))
                .toList() ??
            [];
      },
      variables: Variables$Query$GetInventoryLocations(
        yardCode: yardCode,
        productCode: productCode,
        pattern: pattern.isEmpty ? pattern : '*$pattern*',
      ),
    );

    return locations.data ?? [];
  }

  Future<List<PickerItem<String, String>>> pickerInventoryLocations(
    String yardCode,
    String query,
    String productCode,
  ) async {
    final locations = await documentNodeQueryserachLocation.execute(
      httpClient,
      Query$serachLocation.fromJson,
      variables: Variables$Query$serachLocation(
        input: Input$SearchInventoryLocationsInput(
          active: true,
          yardCode: yardCode,
          productCode: productCode,
          query: query,
        ),
      ),
    );

    return (locations.data?.searchInventoryLocations?.nodes ?? [])
        .map(
          (il) => PickerItem(
            il.description,
            il.code,
          ),
        )
        .where(
          (data) => (data.key.isNotEmpty) && (data.value.isNotEmpty),
        )
        .toList();
  }
}
