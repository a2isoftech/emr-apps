import 'dart:typed_data';

import 'package:emr_one_inform/job/completed_jobs/model/completed_form_instance_query_filter.dart';
import 'package:emr_one_inform/job/completed_jobs/model/completed_job.dart';
import 'package:emr_one_inform/models/paginated_result.dart';

abstract class ICompletedJobService {
  Future<PaginatedResult<List<CompletedJob>?>> getCompletedJobs(
    CompletedFormInstanceQueryFilter filter,
    int first,
    String? after,
  );

  Future<Uint8List> downloadPDF(
    String url,
    String workOrderId,
    String companyCode,
  );

  Future<String> exportPDFs(List<String> workOrderIds);

  Future<void> validateBySignature(
    String workOrderId,
    Uint8List stream,
    String notes,
  );
}
