import 'dart:io';

// import 'package:emr_one_core/config/app_config.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_inform/graphql/queries/GetWorkRequests.graphql.dart';
import 'package:emr_one_inform/graphql/schema.graphql.dart';
import 'package:emr_one_inform/models/work_request.dart';
import 'package:emr_one_inform/models/work_request_query_filter.dart';

abstract class IViewWorkRequestService {
  Future<File> exportPDFs(List<String> workOrderIds);
  Future<List<WorkRequest>> getWorkRequests({
    required WorkRequestQueryFilter workRequestQueryFilter,
  });
}

class ViewWorkRequestService implements IViewWorkRequestService {
  ViewWorkRequestService({
    required this.httpClient,
  });

  final ResilientHttpClient httpClient;

  @override
  Future<List<WorkRequest>> getWorkRequests({
    required WorkRequestQueryFilter workRequestQueryFilter,
  }) async {
    final result = await documentNodeQueryGetWorkRequests.execute(
      httpClient,
      Query$GetWorkRequests.fromJson,
      variables: Variables$Query$GetWorkRequests(
        filter: Input$WorkRequestQueryFilterInput(
          refreshFromD365: workRequestQueryFilter.refreshFromD365,
          assetCode: workRequestQueryFilter.assetCode,
          depotCode: workRequestQueryFilter.depotCode,
          description: workRequestQueryFilter.description,
          endDate: workRequestQueryFilter.endDate?.toIso8601String(),
          lifeCycleState: workRequestQueryFilter.lifeCycleState,
          startDate: workRequestQueryFilter.startDate?.toIso8601String(),
          workRequestId: workRequestQueryFilter.workRequestId,
          yardCode: workRequestQueryFilter.yardCode,
        ),
      ),
    );

    if (result.hasErrors() || result.data?.workRequests == null) {
      return [];
    }

    return result.data!.workRequests.map(_mapWorkRequest).toList();
  }

  WorkRequest _mapWorkRequest(Query$GetWorkRequests$workRequests data) =>
      WorkRequest(
        assetCode: data.assetCode,
        assetId: data.assetId,
        companyCode: data.companyCode,
        isActive: data.isActive,
        requestState: data.requestState,
        requestType: data.requestType,
        serviceLevel: data.serviceLevel,
        workRequestId: data.workRequestId,
        actualEndDate: data.actualEndDate == null
            ? null
            : DateTime.parse(data.actualEndDate!),
        actualStartDate: DateTime.parse(data.actualStartDate),
        additionalDescription: data.additionalDescription,
        createdDate:
            data.createdDate == null ? null : DateTime.parse(data.createdDate!),
        depotNo: data.depotNo,
        description: data.description,
        faultSymptoms: data.faultSymptoms,
        jobTradeId: data.jobTradeId,
        jobType: data.jobType,
        jobTypeVariant: data.jobTypeVariant,
        modifiedDate: data.modifiedDate == null
            ? null
            : DateTime.parse(data.modifiedDate!),
        notes: data.notes,
        productionStopDate: data.productionStopDate == null
            ? null
            : DateTime.parse(data.productionStopDate!),
        startedByPersonnelNumber: data.startedByPersonnelNumber,
        yardCode: data.yardCode,
        workGroupId: data.workRequestId,
        workOrderId: data.workOrderId,
      );

  @override
  Future<File> exportPDFs(List<String> workOrderIds) {
    throw UnimplementedError();
  }
}
