// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_lot.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateLot _$CreateLotFromJson(Map<String, dynamic> json) => CreateLot(
      code: json['code'] as String,
      ticketInfo:
          TicketInfo.fromJson(json['ticketInfo'] as Map<String, dynamic>),
      lotType: $enumDecode(_$LotTypeEnumMap, json['lotType']),
    );

Map<String, dynamic> _$CreateLotToJson(CreateLot instance) => <String, dynamic>{
      'code': instance.code,
      'ticketInfo': instance.ticketInfo,
      'lotType': _$LotTypeEnumMap[instance.lotType]!,
    };

const _$LotTypeEnumMap = {
  LotType.unknown: 0,
  LotType.sticks: 1,
  LotType.joints: 2,
};
