// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scheduler_preference.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SchedulerPreference _$SchedulerPreferenceFromJson(Map<String, dynamic> json) =>
    SchedulerPreference(
      addressFormatType:
          $enumDecode(_$AddressFormatTypeEnumMap, json['addressFormatType']),
      locationTypeEnum:
          $enumDecode(_$LocationTypeEnumEnumMap, json['locationTypeEnum']),
      truckGrouping:
          $enumDecode(_$SchedulerTruckGroupByEnumMap, json['truckGrouping']),
    );

Map<String, dynamic> _$SchedulerPreferenceToJson(
        SchedulerPreference instance) =>
    <String, dynamic>{
      'truckGrouping': _$SchedulerTruckGroupByEnumMap[instance.truckGrouping]!,
      'locationTypeEnum': _$LocationTypeEnumEnumMap[instance.locationTypeEnum]!,
      'addressFormatType':
          _$AddressFormatTypeEnumMap[instance.addressFormatType]!,
    };

const _$AddressFormatTypeEnumMap = {
  AddressFormatType.fullAddress: 'FullAddress',
  AddressFormatType.postCodeOnly: 'PostCodeOnly',
  AddressFormatType.yardCode: 'YardCode',
};

const _$LocationTypeEnumEnumMap = {
  LocationTypeEnum.startLocation: 'StartLocation',
  LocationTypeEnum.customerLocation: 'CustomerLocation',
  LocationTypeEnum.endLocation: 'EndLocation',
};

const _$SchedulerTruckGroupByEnumMap = {
  SchedulerTruckGroupBy.yard: 'Yard',
  SchedulerTruckGroupBy.haulier: 'Haulier',
};
