import 'package:emr_one_inform/models/asset.dart';
import 'package:emr_one_inform/models/work_request_list_selections.dart';

class Depot {
  Depot({
    this.yardCode,
    this.depotNo,
    this.name,
    this.companyCode,
    this.workRequestOptions,
    this.assets,
  });

  factory Depot.fromJson(Map<String, dynamic> json) => _$DepotFromJson(json);

  final String? yardCode;
  final String? depotNo;
  final String? name;
  final String? companyCode;
  final WorkRequestListSelections? workRequestOptions;
  final List<Asset>? assets;

  Map<String, dynamic> toJson() => _$DepotToJson(this);
}

Depot _$DepotFromJson(Map<String, dynamic> json) => Depot(
      yardCode: json['yardCode'] as String?,
      depotNo: json['depotNo'] as String?,
      name: json['name'] as String?,
      companyCode: json['companyCode'] as String?,
      workRequestOptions: json['workRequestOptions'] == null
          ? null
          : WorkRequestListSelections.fromJson(
              json['workRequestOptions'] as Map<String, dynamic>,
            ),
      assets: (json['assets'] as List<dynamic>?)
          ?.map((e) => Asset.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DepotToJson(Depot instance) => <String, dynamic>{
      'yardCode': instance.yardCode,
      'depotNo': instance.depotNo,
      'name': instance.name,
      'companyCode': instance.companyCode,
      'workRequestOptions': instance.workRequestOptions,
      'assets': instance.assets,
    };
