import 'package:json_annotation/json_annotation.dart';

part 'depot_region_response_model.g.dart';

@JsonSerializable()
class RegionViewModel {
  RegionViewModel({
    required this.depotRegionName,
  });

  /// Connect the generated [_$RegionViewModelFromJson] function to the
  /// `fromJson` factory.
  factory RegionViewModel.fromJson(Map<String, dynamic> json) =>
      _$RegionViewModelFromJson(json);

  String depotRegionName;
}
