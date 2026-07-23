import 'package:emr_one_inform/models/asset_maintenance_details.dart';

class Asset {
  Asset({
    required this.assetCode,
    required this.yardCode,
    required this.depotNo,
    this.name,
    this.status,
    this.active,
    this.maintenance,
  });

  factory Asset.fromJson(Map<String, dynamic> json) => _$AssetFromJson(json);
  final String assetCode;
  final String? name;
  final String yardCode;
  final String depotNo;
  final String? status;
  final bool? active;
  final AssetMaintenanceDetails? maintenance;

  Map<String, dynamic> toJson() => _$AssetToJson(this);
}

Asset _$AssetFromJson(Map<String, dynamic> json) => Asset(
      assetCode: json['assetCode'] as String,
      name: json['name'] as String?,
      yardCode: json['yardCode'] as String,
      depotNo: json['depotNo'] as String,
      status: json['status'] as String?,
      active: json['active'] as bool?,
      maintenance: json['maintenance'] == null
          ? null
          : AssetMaintenanceDetails.fromJson(
              json['maintenance'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$AssetToJson(Asset instance) => <String, dynamic>{
      'assetCode': instance.assetCode,
      'name': instance.name,
      'yardCode': instance.yardCode,
      'depotNo': instance.depotNo,
      'status': instance.status,
      'active': instance.active,
      'maintenance': instance.maintenance,
    };
