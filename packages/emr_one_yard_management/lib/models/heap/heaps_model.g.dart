// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'heaps_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HeapsModel _$HeapsModelFromJson(Map<String, dynamic> json) => HeapsModel(
      heapNo: (json['heapNo'] as num).toInt(),
      depotNo: json['depotNo'] as String,
      heapDesc: json['heapDesc'] as String,
      heapShortName: json['heapShortName'] as String,
      gradeCode: json['gradeCode'] as String,
      heapDisplayName: json['heapDisplayName'] as String,
      uomId: (json['uomId'] as num?)?.toInt(),
    );

Map<String, dynamic> _$HeapsModelToJson(HeapsModel instance) =>
    <String, dynamic>{
      'heapNo': instance.heapNo,
      'depotNo': instance.depotNo,
      'heapDesc': instance.heapDesc,
      'heapShortName': instance.heapShortName,
      'gradeCode': instance.gradeCode,
      'heapDisplayName': instance.heapDisplayName,
      'uomId': instance.uomId,
    };
