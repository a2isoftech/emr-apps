class WorkRequestQueryFilter {
  WorkRequestQueryFilter({
    required this.refreshFromD365,
    this.workRequestId,
    this.yardCode,
    this.depotCode,
    this.assetCode,
    this.startDate,
    this.endDate,
    this.description,
    this.lifeCycleState,
  });

  factory WorkRequestQueryFilter.fromJson(Map<String, dynamic> json) =>
      _$WorkRequestQueryFilterFromJson(json);

  final String? workRequestId;
  final String? yardCode;
  final String? depotCode;
  final String? assetCode;
  final DateTime? startDate;
  final DateTime? endDate;
  final String? description;
  final int? lifeCycleState;
  final bool refreshFromD365;

  Map<String, dynamic> toJson() => _$WorkRequestQueryFilterToJson(this);
}

WorkRequestQueryFilter _$WorkRequestQueryFilterFromJson(
  Map<String, dynamic> json,
) =>
    WorkRequestQueryFilter(
      workRequestId: json['workRequestId'] as String?,
      yardCode: json['yardCode'] as String?,
      depotCode: json['depotCode'] as String?,
      assetCode: json['assetCode'] as String?,
      startDate: json['startDate'] as DateTime?,
      endDate: json['endDate'] as DateTime,
      description: json['description'] as String?,
      lifeCycleState: json['lifeCycleState'] as int?,
      refreshFromD365: json['refreshFromD365'] as bool,
    );

Map<String, dynamic> _$WorkRequestQueryFilterToJson(
  WorkRequestQueryFilter instance,
) =>
    <String, dynamic>{
      'workRequestId': instance.workRequestId,
      'yardCode': instance.yardCode,
      'depotCode': instance.depotCode,
      'assetCode': instance.assetCode,
      'startDate': instance.startDate,
      'endDate': instance.endDate,
      'description': instance.description,
      'lifeCycleState': instance.lifeCycleState,
      'refreshFromD365': instance.refreshFromD365,
    };
