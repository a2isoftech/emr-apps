import 'package:emr_one_transport/data/models/common/location_info.dart';
import 'package:emr_one_transport/data/models/common/product_family.dart';
import 'package:emr_one_transport/data/models/common/useractioninfo.dart';
import 'package:emr_one_transport/data/models/jobs/customer_details.dart';
import 'package:emr_one_transport/data/models/jobs/haulier_details.dart';
import 'package:emr_one_transport/data/models/jobs/job_list.dart';
import 'package:emr_one_transport/data/models/jobs/job_trailers.dart';
import 'package:emr_one_transport/data/models/standing_order/standing_order_container.dart';
import 'package:json_annotation/json_annotation.dart';

part 'standing_order.g.dart';

@JsonSerializable(fieldRename: FieldRename.none)
class StandingOrder {
  StandingOrder({
    this.id,
    this.territoryCode,
    this.standingOrderNumber,
    this.applicableDays,
    this.effectiveDate,
    this.expiryDate,
    this.recurringFrequency,
    this.repeatPerDay,
    this.daysInAdvance,
    this.isProcessed,
    this.jobType,
    this.dispatchYard,
    this.duration,
    this.active,
    this.status,
    this.dispatcherNotes,
    this.officeNotes,
    this.productFamily,
    this.trailer,
    this.customer,
    this.customerLocation,
    this.startLocation,
    this.endLocation,
    this.haulier,
    this.containers,
    this.created,
    this.modified,
  });

  factory StandingOrder.fromJobList(JobList job) {
    final startLocnContainersList =
        job.containers?.startLocationContainerDetails
            ?.map((e) => e.containerType ?? '')
            .toList() ??
        [];

    final customerLocnContainersList =
        job.containers?.customerLocationContainerDetails
            ?.map((e) => e.containerType ?? '')
            .toList() ??
        [];

    return StandingOrder(
      jobType: job.jobType,
      dispatchYard: job.dispatchYard,
      dispatcherNotes: job.dispatcherNotes,
      officeNotes: job.officeNotes,
      productFamily: job.productFamily,
      duration: job.duration,
      trailer: job.trailer,
      customer: job.customer,
      customerLocation: job.customerLocation,
      startLocation: job.startLocation,
      endLocation: job.endLocation,
      haulier: job.haulier,
      territoryCode: job.territoryCode,
      containers: StandingOrderContainer(
        customerLocationContainers: customerLocnContainersList,
        startLocationContainers: startLocnContainersList,
      ),
      active: true,
    );
  }

  factory StandingOrder.fromJson(Map<String, dynamic> json) =>
      _$StandingOrderFromJson(json);

  Map<String, dynamic> toJson() => _$StandingOrderToJson(this);

  String? id;
  String? territoryCode;
  int? standingOrderNumber;
  List<String>? applicableDays;
  DateTime? effectiveDate;
  DateTime? expiryDate;
  String? recurringFrequency;
  int? repeatPerDay;
  int? daysInAdvance;
  bool? isProcessed;
  String? jobType;
  String? dispatchYard;
  int? duration;
  bool? active;
  String? status;
  String? dispatcherNotes;
  String? officeNotes;
  ProductFamily? productFamily;
  JobTrailers? trailer;
  CustomerDetails? customer;
  LocationInfo? customerLocation;
  LocationInfo? startLocation;
  LocationInfo? endLocation;
  HaulierDetails? haulier;
  StandingOrderContainer? containers;
  UserActionInfo? created;
  UserActionInfo? modified;
}
