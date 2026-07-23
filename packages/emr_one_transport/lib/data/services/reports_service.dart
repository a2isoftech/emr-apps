import 'package:emr_one_transport/core/api_response.dart';
import 'package:emr_one_transport/core/constants/string_constants.dart';
import 'package:emr_one_transport/data/models/reports/report_details.dart';
import 'package:emr_one_transport/data/services/api_service.dart';

class ReportsService {
  ReportsService({
    required this.apiService,
  });
  final ApiService apiService;

  Future<ApiResponse<List<ReportDetails>>> getReportsList() async {
    final apiResponse = await apiService.getList<ReportDetails>(
      StringConstants.kReportsList,
      fromJsonT: ReportDetails.fromJson,
    );
    return apiResponse;
  }

  Future<ApiResponse<String>> getReportHtmlContent(String reportName) async {
    final apiResponse = await apiService.get<String>(
      '${StringConstants.kReportsList}/$reportName',
      fromJsonT: (response) => response.toString(),
    );

    return apiResponse;
  }
}
