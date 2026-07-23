import 'package:emr_one_inform/job/completed_jobs/service/completed_job_service.dart';
import 'package:intl/intl.dart';
import 'package:universal_html/html.dart';

class CompletedJobsServiceWeb extends CompletedJobsService {
  CompletedJobsServiceWeb({required super.httpClient});

  @override
  Future<String> exportPDFs(List<String> workOrderIds) async {
    final base64String = await downloadZipFile(workOrderIds);
    final dateTimeStamp =
        DateFormat('yyyy-MM-dd_HH-mm-ss').format(DateTime.now());
    final fileName = 'Export-$dateTimeStamp.zip';

    final anchor = AnchorElement(
      href: 'data:application/octet-stream;base64,$base64String',
    )
      ..target = 'blank'
      ..download = fileName;

    document.body?.append(anchor);
    anchor.click();
    anchor.remove();

    return fileName;
  }
}
