import 'package:emr_one_transport/data/models/scheduler/scheduler_haulier.dart';
import 'package:emr_one_transport/data/models/scheduler/scheduler_yard.dart';
import 'package:json_annotation/json_annotation.dart';

part 'internal_haulier_dto.g.dart';

@JsonSerializable(fieldRename: FieldRename.none)
class InternalHaulierDto {
  InternalHaulierDto({required this.yards, required this.hauliers});

  factory InternalHaulierDto.fromJson(Map<String, dynamic> json) =>
      _$InternalHaulierDtoFromJson(json);

  Map<String, dynamic> toJson() => _$InternalHaulierDtoToJson(this);

  List<SchedulerYard> yards;
  List<SchedulerHaulier> hauliers;
}
