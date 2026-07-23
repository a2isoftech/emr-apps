class ExportPdfForCompletedJobsFilter {
  ExportPdfForCompletedJobsFilter({required this.workOrderIds});
  factory ExportPdfForCompletedJobsFilter.fromJson(Map<String, dynamic> json) =>
      _$exportPdfForCompletedJobsFilterFromJson(json);

  final List<String> workOrderIds;

  Map<String, dynamic> toJson() => exportPdfForCompletedJobsFilterToJson(this);
}

ExportPdfForCompletedJobsFilter _$exportPdfForCompletedJobsFilterFromJson(
  Map<String, dynamic> json,
) =>
    ExportPdfForCompletedJobsFilter(
      workOrderIds: (json['workOrderIds'] as List<String>).toList(),
    );

Map<String, dynamic> exportPdfForCompletedJobsFilterToJson(
  ExportPdfForCompletedJobsFilter instance,
) =>
    <String, dynamic>{
      'workOrderIds': instance.workOrderIds,
    };
