import 'package:json_annotation/json_annotation.dart';

part 'truck_filter_state.g.dart';

@JsonSerializable(fieldRename: FieldRename.none)
class TruckFilterState {
  TruckFilterState({this.selectedYardCodes});

  factory TruckFilterState.fromJson(Map<String, dynamic> json) =>
      _$TruckFilterStateFromJson(json);

  List<String>? selectedYardCodes;

  Map<String, dynamic> toJson() => _$TruckFilterStateToJson(this);
}
