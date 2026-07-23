import 'dart:typed_data';

import 'package:emr_one_inform/job/completed_jobs/service/icompleted_job_service.dart';
import 'package:emr_one_inform/screens/base/base_controller.dart';

class PdfViewerPageController extends BaseController {
  PdfViewerPageController({required this.completedJobService});

  final ICompletedJobService completedJobService;

  Future<Uint8List> getPdfDocument(
    String workOrderId,
    String companyCode,
  ) {
    final url = workOrderId.toUpperCase().startsWith('WR')
        ? 'api/instance/workrequest/pdf/'
        : 'api/instance/workorder/pdf/';
    return completedJobService.downloadPDF(url, workOrderId, companyCode);
  }
}
