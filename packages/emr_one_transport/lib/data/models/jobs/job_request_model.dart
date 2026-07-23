import 'package:emr_one_transport/data/models/common/enum.dart';
import 'package:emr_one_transport/data/models/common/location_info.dart';
import 'package:emr_one_transport/data/models/common/product_family.dart';
import 'package:emr_one_transport/data/models/common/provisional_cost_details.dart';
import 'package:emr_one_transport/data/models/jobs/customer_details.dart';
import 'package:emr_one_transport/data/models/jobs/haulier_details.dart';
import 'package:emr_one_transport/data/models/jobs/job_containers.dart';
import 'package:emr_one_transport/data/models/jobs/job_trailers.dart';
import 'package:json_annotation/json_annotation.dart';

part 'job_request_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.none)
class JobRequestModel {
  JobRequestModel({
    required this.isExactSchedule,
    this.id,
    this.scheduledDate,
    this.proposedDueDate,
    this.dispatchYard,
    this.source,
    this.jobType,
    this.jobStatus,
    this.proposedDurationMinutes,
    this.isLocked,
    this.dispatcherNotes,
    this.officeNotes,
    this.productFamily,
    this.customer,
    this.customerLocation,
    this.startLocation,
    this.endLocation,
    this.haulier,
    this.containers,
    this.trailer,
    this.provisionalCost,
    this.numberOfJobsToBeCreated,
    this.timeZoneId,
  });

  factory JobRequestModel.fromJson(Map<String, dynamic> json) =>
      _$JobRequestModelFromJson(json);

  Map<String, dynamic> toJson() => _$JobRequestModelToJson(this);

  String? id = '';
  int? jobNumber = 0;
  DateTime? scheduledDate;
  DateTime? notBefore;
  DateTime? proposedDueDate;
  String? dispatchYard;
  String? source;
  JobType? jobType;
  JobStatus? jobStatus;
  String? dispatcherNotes;
  String? officeNotes;
  String? driverNotes;
  int? proposedDurationMinutes;
  bool? isLocked = false;
  String? clonedFromJobId;
  ProductFamily? productFamily;
  CustomerDetails? customer;
  LocationInfo? customerLocation;
  LocationInfo? startLocation;
  LocationInfo? endLocation;
  HaulierDetails? haulier;
  JobContainers? containers;
  JobTrailers? trailer;
  ProvisionalCostDetails? provisionalCost;
  int? numberOfJobsToBeCreated;
  String? timeZoneId;
  bool isExactSchedule;
}
