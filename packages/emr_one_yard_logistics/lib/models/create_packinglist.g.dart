// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_packinglist.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreatePackingList _$CreatePackingListFromJson(Map<String, dynamic> json) =>
    CreatePackingList(
      yardCode: json['yardCode'] as String,
      accountCode: json['accountCode'] as String,
      accountName: json['accountName'] as String,
    );

Map<String, dynamic> _$CreatePackingListToJson(CreatePackingList instance) =>
    <String, dynamic>{
      'yardCode': instance.yardCode,
      'accountCode': instance.accountCode,
      'accountName': instance.accountName,
    };
