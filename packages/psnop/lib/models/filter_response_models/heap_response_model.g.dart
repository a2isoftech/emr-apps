// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'heap_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HeapResponseModel _$HeapResponseModelFromJson(Map<String, dynamic> json) =>
    HeapResponseModel(
      heapNo: (json['heapNo'] as num).toInt(),
      heapShortName: json['heapShortName'] as String,
      heapDesc: json['heapDesc'] as String,
      heapDisplayName: json['heapDisplayName'] as String,
    );

Map<String, dynamic> _$HeapResponseModelToJson(HeapResponseModel instance) =>
    <String, dynamic>{
      'heapNo': instance.heapNo,
      'heapShortName': instance.heapShortName,
      'heapDesc': instance.heapDesc,
      'heapDisplayName': instance.heapDisplayName,
    };
