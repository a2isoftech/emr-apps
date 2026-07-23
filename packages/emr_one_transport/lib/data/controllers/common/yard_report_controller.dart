import 'package:emr_one_core/extensions/date_extensions.dart';
import 'package:emr_one_transport/core/constants/string_constants.dart';
import 'package:emr_one_transport/data/models/common/action_result.dart';
import 'package:emr_one_transport/data/models/common/enum.dart';
import 'package:emr_one_transport/data/models/common/send_yard_report_request.dart';
import 'package:emr_one_transport/data/models/user_preferences/dispatch_yards.dart';
import 'package:emr_one_transport/data/services/api_service.dart';
import 'package:emr_one_transport/data/services/common_service.dart';
import 'package:flutter/material.dart';

class YardReportController extends ChangeNotifier {
  YardReportController({
    required this.commonService,
    required this.apiService,
  });
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final ApiService apiService;
  final CommonService commonService;
  final availableYardsNotifier = ValueNotifier<List<DispatchYards>>([]);

  final selectedYards = ValueNotifier<List<DispatchYards>>([]);

  final startDate = ValueNotifier<DateTime>(DateTime.now().dateOnly);
  final endDate = ValueNotifier<DateTime>(DateTime.now().dateOnly);
  final additionalEmails = ValueNotifier<String?>(null);

  bool isLoading = false;

  Future<void> init(DispatchYards? yard) async {
    initForm();
    availableYardsNotifier.value = await fetchUserDispatchYards();
    if (yard != null) {
      selectedYards.value = [yard];
    }
  }

  void initForm() {
    startDate.value = DateTime.now();
    endDate.value = DateTime.now();
    selectedYards.value.clear();
    availableYardsNotifier.value.clear();
    additionalEmails.value = '';
  }

  Future<List<DispatchYards>> fetchUserDispatchYards() async {
    final response = await apiService.getList(
      StringConstants.kschedulergetUserYardsUrl,
      fromJsonT: DispatchYards.fromJson,
    );
    if (response.isSuccess) {
      response.data!.removeWhere((e) => e.isDispatchYard == false);
    }
    return response.data ?? [];
  }

  Future<ActionResult> sendOrDownloadYardReport() async {
    if (!(formKey.currentState?.validate() ?? false)) {
      return ActionResult(
        status: ActionStatus.formValidationFailed,
      );
    }

    if ((additionalEmails.value ?? '').isEmpty) {
      return _downloadYardReport();
    }
    return _sendYardreport();
  }

  Future<ActionResult> _downloadYardReport() async {
    final queryParam = {
      'yardCodes': selectedYards.value.map((e) => e.yardCode),
      'startDateUtc': startDate.value.dateOnly.toUtc().toIso8601String(),
      'endDateUtc': DateTime(
        endDate.value.year,
        endDate.value.month,
        endDate.value.day,
        23,
        59,
        59,
      ).toUtc().toIso8601String(),
    };
    final result = await commonService.downloadYardReport(queryParam);
    if (result.isSuccess) {
      return ActionResult(status: ActionStatus.apiSuccess);
    } else {
      return ActionResult(
        status: ActionStatus.apiFailure,
        errorMessage: result.errorMessage,
      );
    }
  }

  Future<ActionResult> _sendYardreport() async {
    final param = SendYardReportRequest(
      startDateUtc: startDate.value.dateOnly.toUtc(),
      endDateUtc: DateTime(
        endDate.value.year,
        endDate.value.month,
        endDate.value.day,
        23,
        59,
        59,
      ).toUtc(),
      emailTo: additionalEmails.value
              ?.split(';')
              .map((e) => e.trim())
              .where((e) => e.isNotEmpty)
              .toList() ??
          List.empty(),
      yardCodes: selectedYards.value.map((e) => e.yardCode ?? '').toList(),
      ccCurrentUser: true,
    );

    final result = await commonService.sendYardReport(param);
    if (result.isSuccess) {
      return ActionResult(status: ActionStatus.apiSuccess);
    } else {
      return ActionResult(
        status: ActionStatus.apiFailure,
        errorMessage: result.errorMessage,
      );
    }
  }
}
