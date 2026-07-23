import 'package:json_annotation/json_annotation.dart';

part 'plan_container.g.dart';

@JsonSerializable(fieldRename: FieldRename.none)
class PlanContainer {
  PlanContainer(
    this.customerLocationContainers,
    this.startLocationContainers,
  );

  factory PlanContainer.fromJson(Map<String, dynamic> json) =>
      _$PlanContainerFromJson(json);

  Map<String, dynamic> toJson() => _$PlanContainerToJson(this);

  final List<String> customerLocationContainers;
  final List<String> startLocationContainers;
}
