import 'package:emr_one_transport/data/models/common/enum.dart';
import 'package:json_annotation/json_annotation.dart';

part 'scheduler_preference.g.dart';

@JsonSerializable()
class SchedulerPreference {
  const SchedulerPreference({
    required this.addressFormatType,
    required this.locationTypeEnum,
    required this.truckGrouping,
  });

  factory SchedulerPreference.defaultPreference() {
    return const SchedulerPreference(
      truckGrouping: SchedulerTruckGroupBy.yard,
      locationTypeEnum: LocationTypeEnum.startLocation,
      addressFormatType: AddressFormatType.fullAddress,
    );
  }

  factory SchedulerPreference.fromJson(Map<String, dynamic> json) =>
      _$SchedulerPreferenceFromJson(json);

  final SchedulerTruckGroupBy truckGrouping;
  final LocationTypeEnum locationTypeEnum;

  final AddressFormatType addressFormatType;

  Map<String, dynamic> toJson() => _$SchedulerPreferenceToJson(this);
}
