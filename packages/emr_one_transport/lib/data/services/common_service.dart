import 'dart:typed_data';

import 'package:emr_one_core/networking/http/resilient_http_client.dart';
import 'package:emr_one_transport/core/api_response.dart';
import 'package:emr_one_transport/core/constants/string_constants.dart';
import 'package:emr_one_transport/data/models/common/account_email.dart';
import 'package:emr_one_transport/data/models/common/list_details.dart';
import 'package:emr_one_transport/data/models/common/open_job_report.dart';
import 'package:emr_one_transport/data/models/common/region.dart';
import 'package:emr_one_transport/data/models/common/send_haulier_report_request.dart';
import 'package:emr_one_transport/data/models/common/send_yard_report_request.dart';
import 'package:emr_one_transport/data/models/user_preferences/dispatch_yards.dart';
import 'package:emr_one_transport/data/services/api_service.dart';
import 'package:file_saver/file_saver.dart';

class CommonService {
  CommonService({
    required this.httpClient,
  }) : _apiService = ApiService(httpClient: httpClient);
  final ResilientHttpClient httpClient;
  final ApiService _apiService;

  Future<List<ListDetails>> getListByType(String type) async {
    final apiResponse = await _apiService.getList<ListDetails>(
      StringConstants.kGetListDetails,
      fromJsonT: ListDetails.fromJson,
      queryParams: {
        'type': type,
      },
    );

    if (apiResponse.isSuccess && apiResponse.data != null) {
      return apiResponse.data ?? [];
    }
    return [];
  }

  Future<List<DispatchYards>> getDispatchYardsForUser() async {
    final apiResponse = await _apiService.getList<DispatchYards>(
      StringConstants.kgetDispatchYardsForUserUrl,
      fromJsonT: DispatchYards.fromJson,
    );

    if (apiResponse.isSuccess && apiResponse.data != null) {
      return apiResponse.data!;
    }
    return [];
  }

  Future<List<DispatchYards>> getAccessibleYardsForUser() async {
    final apiResponse = await _apiService.getList<DispatchYards>(
      StringConstants.kgetAccessibleYardsForUserUrl,
      fromJsonT: DispatchYards.fromJson,
    );

    if (apiResponse.isSuccess && apiResponse.data != null) {
      return apiResponse.data!;
    }
    return [];
  }

  Future<List<Region>> getAllRegions() async {
    final apiResponse = await _apiService.getList<Region>(
      StringConstants.kgetAllRegionUrl,
      fromJsonT: Region.fromJson,
    );

    if (apiResponse.isSuccess && apiResponse.data != null) {
      return apiResponse.data!;
    }
    return [];
  }

  Future<ApiResponse<Uint8List>> downloadHaulierReport(
    Map<String, dynamic> queryParam,
  ) async {
    final response = await _apiService.getFileBytes(
      StringConstants.haulierReportUrl,
      queryParams: queryParam,
    );
    if (response.isSuccess) {
      await FileSaver.instance.saveFile(
        name: StringConstants.haulierReportFileName,
        bytes: response.data,
        mimeType: MimeType.pdf,
      );
    }
    return response;
  }

  Future<ApiResponse<Uint8List>> downloadYardReport(
    Map<String, dynamic> queryParam,
  ) async {
    final response = await _apiService.getFileBytes(
      StringConstants.yardReportUrl,
      queryParams: queryParam,
    );
    if (response.isSuccess) {
      await FileSaver.instance.saveFile(
        name: StringConstants.yardReportFileName,
        bytes: response.data,
        mimeType: MimeType.pdf,
      );
    }
    return response;
  }

  Future<ApiResponse<Uint8List>> downloadOpenJobsReport(
    OpenJobReport body,
  ) async {
    final response = await _apiService.postFileBytes(
      StringConstants.openJobsReportUrl,
      body: body,
    );
    if (response.isSuccess) {
      await FileSaver.instance.saveFile(
        name: StringConstants.openJobsReportFileName,
        bytes: response.data,
        mimeType: MimeType.microsoftExcel,
      );
    }
    return response;
  }

  Future<List<AccountEmail>> getPartyContactDetails(String haulierCode) async {
    final apiResponse = await _apiService.getList<AccountEmail>(
      '${StringConstants.kgetPartyAccountContactEmail}$haulierCode',
      fromJsonT: AccountEmail.fromJson,
    );

    if (apiResponse.isSuccess && apiResponse.data != null) {
      return apiResponse.data!;
    }
    return [];
  }

  Future<ApiResponse<bool>> sendHaulierReport(
    SendHaulierReportRequest request,
  ) async {
    return _apiService.post(
      StringConstants.sendHaulierReportUrl,
      body: request,
    );
  }

  Future<ApiResponse<bool>> sendYardReport(
    SendYardReportRequest request,
  ) async {
    return _apiService.post(
      StringConstants.sendYardReportUrl,
      body: request,
    );
  }

  Future<ApiResponse<Uint8List>> getQRCodeFileBytes(
    String endpoint, {
    Map<String, dynamic>? queryParams,
  }) async {
    return _apiService.getFileBytes(endpoint, queryParams: queryParams);
  }
}
