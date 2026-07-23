import 'package:json_annotation/json_annotation.dart';

part 'standing_order_container.g.dart';

@JsonSerializable(fieldRename: FieldRename.none)
class StandingOrderContainer {
  StandingOrderContainer({
    this.customerLocationContainers,
    this.startLocationContainers,
  });

  factory StandingOrderContainer.fromJson(Map<String, dynamic> json) =>
      _$StandingOrderContainerFromJson(json);

  Map<String, dynamic> toJson() => _$StandingOrderContainerToJson(this);

  List<String>? customerLocationContainers;
  List<String>? startLocationContainers;
}
