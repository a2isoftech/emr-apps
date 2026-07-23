import 'package:emr_one_transport/data/models/common/location_info.dart';
import 'package:emr_one_transport/data/models/common/product_family.dart';
import 'package:emr_one_transport/data/models/jobs/customer_details.dart';
import 'package:emr_one_transport/data/models/jobs/delete_job_request.dart';
import 'package:emr_one_transport/data/models/plans/haulier_schedule_detail.dart';
import 'package:emr_one_transport/data/models/plans/plan_container.dart';
import 'package:emr_one_transport/data/models/plans/plan_trailer.dart';
import 'package:emr_sharedtypes/uom/uom_value.dart';
import 'package:json_annotation/json_annotation.dart';

part 'plan_request.g.dart';

@JsonSerializable(fieldRename: FieldRename.none)
class PlanRequest {
  PlanRequest(
    this.planDate,
    this.productFamily,
    this.loads,
    this.dispatchYard,
    this.due,
    this.jobType,
    this.dispatcherNotes,
    this.officeNotes,
    this.customer,
    this.customerLocation,
    this.startLocation,
    this.endLocation,
    this.haulierScheduleDetails,
    this.containers,
    this.trailer,
    this.selectedDaysToClone, {
    this.active = true,
    this.jobsToDelete = const [],
    this.uomValue,
  });

  factory PlanRequest.fromJson(Map<String, dynamic> json) =>
      _$PlanRequestFromJson(json);

  Map<String, dynamic> toJson() => _$PlanRequestToJson(this);

  DateTime? planDate;
  ProductFamily? productFamily;
  UomValue? uomValue;
  int loads;
  String dispatchYard;
  String due;
  String jobType;
  String dispatcherNotes;
  String officeNotes;
  CustomerDetails customer;
  LocationInfo customerLocation;
  LocationInfo startLocation;
  LocationInfo endLocation;
  List<HaulierScheduleDetail> haulierScheduleDetails;
  PlanContainer? containers;
  PlanTrailer? trailer;
  List<String> selectedDaysToClone;
  bool active;
  List<DeleteJobRequest> jobsToDelete;
}
