// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'haulier.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Haulier _$HaulierFromJson(Map<String, dynamic> json) => Haulier(
      code: json['code'] as String,
      name: json['name'] as String,
      isManaged: json['isManaged'] as bool? ?? false,
      isThirdParty: json['isThirdParty'] as bool? ?? false,
    );

Map<String, dynamic> _$HaulierToJson(Haulier instance) => <String, dynamic>{
      'code': instance.code,
      'name': instance.name,
      'isManaged': instance.isManaged,
      'isThirdParty': instance.isThirdParty,
    };
