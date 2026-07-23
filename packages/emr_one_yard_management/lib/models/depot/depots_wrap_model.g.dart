// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'depots_wrap_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DepotsWrapModel _$DepotsWrapModelFromJson(Map<String, dynamic> json) =>
    DepotsWrapModel(
      depots: (json['depots'] as List<dynamic>)
          .map((e) => DepotsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DepotsWrapModelToJson(DepotsWrapModel instance) =>
    <String, dynamic>{
      'depots': instance.depots,
    };
