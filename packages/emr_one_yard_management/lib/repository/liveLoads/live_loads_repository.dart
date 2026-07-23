import 'dart:convert';
import 'dart:typed_data';

import 'package:emr_one_core/config/app_config.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_yard_management/graphql/queries/liveLoads.graphql.dart';
import 'package:emr_one_yard_management/models/liveLoads/live_loads_filter_model.dart';
import 'package:emr_one_yard_management/models/liveLoads/live_loads_model.dart';
import 'package:emr_one_yard_management/models/liveLoads/live_loads_print_wrap_model.dart';
import 'package:http/http.dart';

class LiveLoadsRepository {
  static Future<List<LiveLoadsModel>> getLiveLoads(
    BaseClient httpClient,
    AppConfig config,
    LiveLoadsFilterModel filterModel,
  ) async {
    final response = await documentNodeQueryliveLoads.execute(
      httpClient,
      Query$liveLoads.fromJson,
      variables: Variables$Query$liveLoads(
        filterModel: Input$LiveLoadsQueryModelInput(
          search: Input$LiveLoadsSearchInput(
            yardCode: filterModel.search?.yard ?? '',
            customer: filterModel.search?.customer,
            startDate: filterModel.search?.startDate,
            endDate: filterModel.search?.endDate,
          ),
        ),
      ),
      url: Uri.parse(config.yardManagementGraphqlUrl),
    );

    if (response.hasErrors() || response.data == null) {
      return [];
    }

    return response.data!.liveLoads!
        .map((e) => LiveLoadsModel.fromJson(e!.toJson()))
        .toList();
  }

  static Future<Uint8List?> printLiveLoads(
    BaseClient httpClient,
    AppConfig config,
    LiveLoadsPrintWrapModel model,
  ) async {
    final json = jsonEncode({
      'documentType': 'LiveLoadsSheet',
      'documentData': {'liveLoadsData': model.toJson()},
      'returnPdf': true,
    });
    final url = Uri.parse('${config.pdfPiPrintUrl}/api/print');
    final response = await httpClient.post(url, body: json);
    if (response.statusCode == 200) {
      return response.bodyBytes;
    }
    return null;
  }
}
