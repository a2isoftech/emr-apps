import 'package:emr_one_transport/data/models/common/location_info.dart';
import 'package:emr_one_transport/data/models/common/product_family.dart';
import 'package:emr_one_transport/data/models/common/provisional_cost_details.dart';
import 'package:emr_one_transport/data/models/common/useractioninfo.dart';
import 'package:emr_one_transport/data/models/jobs/customer_details.dart';
import 'package:emr_one_transport/data/models/jobs/driver_event.dart';
import 'package:emr_one_transport/data/models/jobs/haulier_details.dart';
import 'package:emr_one_transport/data/models/jobs/job_completion_details.dart';
import 'package:emr_one_transport/data/models/jobs/job_containers.dart';
import 'package:emr_one_transport/data/models/jobs/job_trailers.dart';
import 'package:json_annotation/json_annotation.dart';

part 'job_list.g.dart';

@JsonSerializable(fieldRename: FieldRename.none)
class JobList {
  JobList();

  factory JobList.fromJson(Map<String, dynamic> json) =>
      _$JobListFromJson(json);

  Map<String, dynamic> toJson() => _$JobListToJson(this);

  String? id;
  int? jobNumber;
  String? territoryCode;
  DateTime? scheduledDate;
  DateTime? notBefore;
  DateTime? dueDate;
  String? flowType;
  String? dispatchYard;
  String? source;
  String? sourceId;
  String? jobType;
  String? jobStatus;
  bool? active;
  String? dispatcherNotes;
  String? officeNotes;
  String? driverNotes;
  int? duration;
  int? progressMinutes;
  int? groupId;
  bool? isEnforceJobSequence;
  bool? isSyncedFromTrade2;
  bool? isLocked;
  String? clonedFromJobId;
  bool? hasJobContainerImages;
  bool? hasJobContainerImagesProcessed;
  ProductFamily? productFamily;
  CustomerDetails? customer;
  LocationInfo? customerLocation;
  LocationInfo? startLocation;
  LocationInfo? endLocation;
  HaulierDetails? haulier;
  JobContainers? containers;
  JobTrailers? trailer;
  ProvisionalCostDetails? provisionalCost;
  UserActionInfo? created;
  UserActionInfo? modified;
  List<DriverEvent>? delays;
  JobCompletionDetails? jobCompletionDetails;
}
