import 'dart:async';

import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_inform/graphql/queries/GetCompanyPreferenceByCompanyCode.graphql.dart';
import 'package:emr_one_inform/graphql/queries/getJobsCount.graphql.dart';
import 'package:emr_one_inform/graphql/queries/getYardDetails.graphql.dart';
import 'package:emr_one_inform/models/company_preference.dart';
import 'package:emr_one_inform/models/schedule_task_models.dart';
import 'package:emr_one_inform/models/yard_details.dart';
import 'package:emr_one_inform/services/interfaces/ilanding_page_service.dart';

class LandingPageService implements ILandingPageService {
  LandingPageService({
    required this.httpClient,
  });
  final ResilientHttpClient httpClient;

  @override
  Future<JobsCount?> getAllJobsCount({
    String? yardCode,
    DateTime? startDate,
    DateTime? endDate,
    bool? filterForUser,
  }) async {
    final results = await documentNodeQueryGetJobsCount.execute(
      httpClient,
      Query$GetJobsCount.fromJson,
      variables: Variables$Query$GetJobsCount(
        yardCode: yardCode!,
        startDate: startDate?.toIso8601String(),
        endDate: endDate?.toIso8601String(),
        filterForUser: filterForUser,
      ),
    );

    if (results.hasErrors() || results.data == null) {
      return null;
    }

    final counts = results.data!.jobFormsForYard.countsOnly;

    return JobsCount.fromJson(counts.toJson());
  }

  @override
  Future<YardDetails?> getYardDetails(String yardCode) async {
    final results = await documentNodeQueryGetYardDetails.execute(
      httpClient,
      Query$GetYardDetails.fromJson,
      variables: Variables$Query$GetYardDetails(code: yardCode),
    );

    if (results.hasErrors() || results.data == null) {
      return null;
    }

    return YardDetails.fromJson(results.data!.yardDetails.toJson());
  }

  @override
  Future<Preference?> getPreferenceForCompanyCode(String companyCode) async {
    final result = await documentNodeQueryGetCompanyPreference.execute(
      httpClient,
      Query$GetCompanyPreference.fromJson,
      variables: Variables$Query$GetCompanyPreference(companyCode: companyCode),
    );

    if (result.hasErrors() ||
        result.data?.companyPreference.preference == null) {
      return null;
    }

    return Preference.fromJson(
      result.data!.companyPreference.preference.toJson(),
    );
  }
}
