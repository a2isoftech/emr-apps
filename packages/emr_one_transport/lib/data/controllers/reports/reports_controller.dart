import 'package:emr_one_transport/core/api_response.dart';
import 'package:emr_one_transport/core/constants/string_constants.dart';
import 'package:emr_one_transport/data/models/reports/report_details.dart';
import 'package:emr_one_transport/data/services/reports_service.dart';
import 'package:flutter/material.dart';

class ReportsController extends ChangeNotifier {
  ReportsController({required this.reportsService});
  final ReportsService reportsService;

  List<ReportDetails> reports = [];
  ValueNotifier<String?> reportHtmlContent = ValueNotifier(null);
  bool isLoading = false;
  ApiResponse<List<ReportDetails>?> reportsListReponse =
      ApiResponse<List<ReportDetails>?>(null);
  ApiResponse<String?> htmlContentResponse = ApiResponse<String?>(null);

  Future<List<ReportDetails>?> initialize() async {
    reportsListReponse = await reportsService.getReportsList();
    if (reportsListReponse.isSuccess && reportsListReponse.data != null) {
      reports = reportsListReponse.data!;
    } else if (!reportsListReponse.isSuccess) {
      throw Exception(
        reportsListReponse.errorMessage.isNotEmpty
            ? reportsListReponse.errorMessage
            : StringConstants.error,
      );
    }
    return reportsListReponse.data;
  }

  Future<String?> getReportHtmlContent(String reportName) async {
    htmlContentResponse = await reportsService.getReportHtmlContent(reportName);
    if (htmlContentResponse.isSuccess && htmlContentResponse.data != null) {
      reportHtmlContent.value = htmlContentResponse.data;
    } else if (!htmlContentResponse.isSuccess) {
      throw Exception(
        htmlContentResponse.errorMessage.isNotEmpty
            ? htmlContentResponse.errorMessage
            : StringConstants.error,
      );
    }

    return htmlContentResponse.data;
  }

  void setLoader({bool isLoadInProgress = false}) {
    isLoading = isLoadInProgress;
    notifyListeners();
  }
}
