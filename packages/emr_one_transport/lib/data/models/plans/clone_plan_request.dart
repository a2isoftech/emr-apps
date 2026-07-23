import 'package:emr_one_transport/data/models/common/product_family.dart';
import 'package:emr_one_transport/data/models/plans/plan_container.dart';
import 'package:json_annotation/json_annotation.dart';

part 'clone_plan_request.g.dart';

@JsonSerializable(fieldRename: FieldRename.none)
class ClonePlanRequest {
  ClonePlanRequest(
    this.planNumber,
    this.planDate,
    this.loads,
    this.productFamily,
    this.containers,
    this.selectedDaysToClone,
  );

  factory ClonePlanRequest.fromJson(Map<String, dynamic> json) =>
      _$ClonePlanRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ClonePlanRequestToJson(this);

  final int planNumber;
  final DateTime planDate;
  final int loads;
  final ProductFamily? productFamily;
  PlanContainer containers;
  List<String> selectedDaysToClone;
}
