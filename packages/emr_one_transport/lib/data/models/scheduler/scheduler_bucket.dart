// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:emr_one_transport/data/models/scheduler/internal_haulier_dto.dart';
import 'package:emr_one_transport/data/models/scheduler/managed_haulier_dto.dart';
import 'package:emr_one_transport/data/models/scheduler/thirdparty_haulier_dto.dart';
import 'package:json_annotation/json_annotation.dart';

part 'scheduler_bucket.g.dart';

@JsonSerializable(fieldRename: FieldRename.none)
class SchedulerBucket {
  SchedulerBucket({
    required this.managedHauliers,
    required this.thirdPartyHauliers,
    this.internalHaulier,
  });

  factory SchedulerBucket.fromJson(Map<String, dynamic> json) =>
      _$SchedulerBucketFromJson(json);

  Map<String, dynamic> toJson() => _$SchedulerBucketToJson(this);

  InternalHaulierDto? internalHaulier;
  List<ManagedHaulierDto> managedHauliers;
  List<ThirdpartyHaulierDto> thirdPartyHauliers;
}
