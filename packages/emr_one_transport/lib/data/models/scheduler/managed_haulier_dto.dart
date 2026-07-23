import 'package:emr_one_transport/data/models/scheduler/haulier_bucket.dart';
import 'package:emr_one_transport/data/models/scheduler/scheduler_truck.dart';
import 'package:json_annotation/json_annotation.dart';

part 'managed_haulier_dto.g.dart';

@JsonSerializable(fieldRename: FieldRename.none)
class ManagedHaulierDto extends HaulierBucket {
  ManagedHaulierDto({
    required this.trucks,
    required super.haulierType,
    required super.haulierCode,
  });

  factory ManagedHaulierDto.fromJson(Map<String, dynamic> json) =>
      _$ManagedHaulierDtoFromJson(json);
  Map<String, dynamic> toJson() => _$ManagedHaulierDtoToJson(this);

  List<SchedulerTruck> trucks;
}
