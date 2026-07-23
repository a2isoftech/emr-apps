import 'package:emr_one_inform/models/asset.dart';

class Yard {
  Yard({
    this.yardCode,
    this.name,
    this.assets,
  });

  factory Yard.fromJson(Map<String, dynamic> json) => _$YardFromJson(json);

  final String? yardCode;
  final String? name;
  final List<Asset>? assets;

  String get displayName {
    return '$yardCode : $name';
  }

  Map<String, dynamic> toJson() => _$YardToJson(this);
}

Yard _$YardFromJson(Map<String, dynamic> json) => Yard(
      yardCode: json['yardCode'] as String?,
      name: json['name'] as String?,
      assets: (json['assets'] as List<dynamic>?)
          ?.map((e) => Asset.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$YardToJson(Yard instance) => <String, dynamic>{
      'yardCode': instance.yardCode,
      'name': instance.name,
      'assets': instance.assets,
    };
