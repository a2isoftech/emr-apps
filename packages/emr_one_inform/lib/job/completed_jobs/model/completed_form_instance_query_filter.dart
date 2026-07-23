class CompletedFormInstanceQueryFilter {
  CompletedFormInstanceQueryFilter({
    this.workOrderId,
    this.yardCode,
    this.startDate,
    this.endDate,
    this.filterForUser,
    this.assetCode,
    this.submittedBy,
  });

  factory CompletedFormInstanceQueryFilter.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$CompletedFormInstanceQueryFilterFromJson(json);

  final String? workOrderId;
  final String? yardCode;
  final DateTime? startDate;
  final DateTime? endDate;
  final bool? filterForUser;
  final String? assetCode;
  final String? submittedBy;

  Map<String, dynamic> toJson() =>
      _$CompletedFormInstanceQueryFilterToJson(this);
}

CompletedFormInstanceQueryFilter _$CompletedFormInstanceQueryFilterFromJson(
  Map<String, dynamic> json,
) =>
    CompletedFormInstanceQueryFilter(
      workOrderId: json['workOrderId'] as String?,
      yardCode: json['yardCode'] as String?,
      startDate: json['startDate'] == null
          ? null
          : DateTime.parse(json['startDate'] as String),
      endDate: json['endDate'] == null
          ? null
          : DateTime.parse(json['startDate'] as String),
      assetCode: json['assetCode'] as String?,
      submittedBy: json['submittedBy'] as String?,
    );

Map<String, dynamic> _$CompletedFormInstanceQueryFilterToJson(
  CompletedFormInstanceQueryFilter instance,
) =>
    <String, dynamic>{
      'workOrderId': instance.workOrderId,
      'yardCode': instance.yardCode,
      'startDate': instance.startDate?.toIso8601String(),
      'endDate': instance.endDate?.toIso8601String(),
      'assetCode': instance.assetCode,
      'submittedBy': instance.submittedBy,
    };
