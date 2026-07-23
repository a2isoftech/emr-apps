import 'package:emr_one_transport/data/models/common/location_info.dart';
import 'package:emr_one_transport/data/models/common/product_family.dart';
import 'package:emr_one_transport/data/models/jobs/customer_details.dart';
import 'package:emr_one_transport/data/models/plans/haulier_schedule_detail.dart';
import 'package:emr_one_transport/data/models/plans/plan_container.dart';
import 'package:emr_one_transport/data/models/plans/plan_trailer.dart';
import 'package:emr_sharedtypes/uom/uom_value.dart';
import 'package:json_annotation/json_annotation.dart';

part 'plan_response.g.dart';

@JsonSerializable(fieldRename: FieldRename.none)
class PlanResponse {
  PlanResponse(
    this.id,
    this.territoryCode,
    this.planNumber,
    this.planDate,
    this.productFamily,
    this.flowType,
    this.loads,
    this.dispatchYard,
    this.uomValue,
    this.due,
    this.jobType,
    this.officeNotes,
    this.customer,
    this.customerLocation,
    this.startLocation,
    this.endLocation,
    this.haulierScheduleDetails,
    this.dispatcherNotes,
    this.containers, {
    this.jobStatusCount,
    this.active = false,
  });

  factory PlanResponse.fromJson(Map<String, dynamic> json) =>
      _$PlanResponseFromJson(json);

  Map<String, dynamic> toJson() => _$PlanResponseToJson(this);

  String id;
  String territoryCode;
  int planNumber;
  DateTime? planDate;
  ProductFamily? productFamily;
  String? flowType;
  int loads;
  String dispatchYard;
  UomValue? uomValue;
  String? due;
  String? jobType;
  String? officeNotes;
  CustomerDetails customer;
  LocationInfo customerLocation;
  LocationInfo startLocation;
  LocationInfo endLocation;
  List<HaulierScheduleDetail> haulierScheduleDetails;
  String? dispatcherNotes;
  PlanContainer? containers;
  PlanTrailer? trailer;
  bool active;
  Map<String, int>? jobStatusCount;
}
