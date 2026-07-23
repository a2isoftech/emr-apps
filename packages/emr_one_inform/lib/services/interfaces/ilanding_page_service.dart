import 'package:emr_one_inform/models/company_preference.dart';
import 'package:emr_one_inform/models/schedule_task_models.dart';
import 'package:emr_one_inform/models/yard_details.dart';

abstract class ILandingPageService {
  Future<JobsCount?> getAllJobsCount({
    String? yardCode,
    DateTime? startDate,
    DateTime? endDate,
    bool? filterForUser,
  });

  Future<YardDetails?> getYardDetails(String yardCode);
  Future<Preference?> getPreferenceForCompanyCode(String companyCode);
}
