// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ewc_control.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EwcControl _$EwcControlFromJson(Map<String, dynamic> json) => EwcControl(
      enabled: json['enabled'] as bool? ?? false,
      commoditySourceTypeId: json['commoditySourceTypeId'] as String?,
      commoditySourceType: json['commoditySourceType'] == null
          ? null
          : CommoditySourceTypes.fromJson(
              json['commoditySourceType'] as Map<String, dynamic>),
      enablePartyWasteStream: json['enablePartyWasteStream'] as bool? ?? false,
    );

Map<String, dynamic> _$EwcControlToJson(EwcControl instance) =>
    <String, dynamic>{
      'enabled': instance.enabled,
      'commoditySourceTypeId': instance.commoditySourceTypeId,
      'enablePartyWasteStream': instance.enablePartyWasteStream,
      'commoditySourceType': instance.commoditySourceType,
    };
