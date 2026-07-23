import 'package:emr_one_transport/data/models/common/enum.dart';
import 'package:emr_one_transport/data/models/common/location_info.dart';
import 'package:emr_one_transport/data/models/common/product_family.dart';
import 'package:emr_one_transport/data/models/jobs/customer_details.dart';
import 'package:emr_one_transport/data/models/jobs/haulier_details.dart';
import 'package:emr_one_transport/data/models/jobs/job_trailers.dart';
import 'package:emr_one_transport/data/models/standing_order/standing_order_container.dart';
import 'package:json_annotation/json_annotation.dart';

part 'standing_order_request_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.none)
class StandingOrderRequestModel {
  StandingOrderRequestModel({
    this.id,
    this.standingOrderId,
    this.territoryCode,
    this.applicableDays,
    this.effectiveDate,
    this.expiryDate,
    this.recurringFrequency,
    this.repeatPerDay,
    this.daysInAdvance,
    this.isProcessed,
    this.jobType,
    this.dispatchYard,
    this.active,
    this.dispatcherNotes,
    this.officeNotes,
    this.customerLocation,
    this.startLocation,
    this.endLocation,
    this.haulier,
    this.containers,
    this.customer,
    this.trailer,
    this.productFamily,
    this.proposedDurationMinutes = 0,
  });

  factory StandingOrderRequestModel.fromJson(Map<String, dynamic> json) =>
      _$StandingOrderRequestModelFromJson(json);

  Map<String, dynamic> toJson() => _$StandingOrderRequestModelToJson(this);

  String? id;
  String? standingOrderId;
  String? territoryCode;
  List<String>? applicableDays;
  DateTime? effectiveDate;
  DateTime? expiryDate;
  String? recurringFrequency;
  int? repeatPerDay;
  int? daysInAdvance;
  bool? isProcessed = false;
  JobType? jobType;
  String? dispatchYard;
  ProductFamily? productFamily;
  JobTrailers? trailer;
  int proposedDurationMinutes;
  bool? active;
  String? dispatcherNotes;
  String? officeNotes;
  CustomerDetails? customer;
  LocationInfo? customerLocation;
  LocationInfo? startLocation;
  LocationInfo? endLocation;
  HaulierDetails? haulier;
  StandingOrderContainer? containers;
}
