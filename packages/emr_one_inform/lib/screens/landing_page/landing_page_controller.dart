import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_forms_engine/emr_one_forms_engine.dart';
import 'package:emr_one_inform/globals.dart';
import 'package:emr_one_inform/models/yard.dart';
import 'package:emr_one_inform/repository/shared_preferences/ipreference_repository.dart';
import 'package:emr_one_inform/screens/base/base_controller.dart';
import 'package:emr_one_inform/services/interfaces/ilanding_page_service.dart';
import 'package:package_info_plus/package_info_plus.dart';

class LandingPageController extends BaseController {
  LandingPageController({
    required this.landingPageService,
    required this.userPreferencesRepository,
    required this.formsEngine,
  });

  final ILandingPageService landingPageService;
  final IUserPreferencesRepository userPreferencesRepository;
  final FormsEngine formsEngine;

  Future<Yard?> getSavedYard() async {
    return userPreferencesRepository.getYard();
  }

  Future<void> init() async {
    formsEngine.setCurrentUser(
      UserInfoService.instance!.userInfo.name,
      UserInfoService.instance!.userInfo.id,
    );
    PackageInfo? appversion;
    await PackageInfo.fromPlatform().then(
      (value) => appversion = value,
    );

    formsEngine.setInFormsVersion(
      '${appversion!.version} (${appversion!.buildNumber})',
    );
    final yard = await userPreferencesRepository.getYard();
    if (yard == null) return;
    final jobsCount = await landingPageService.getAllJobsCount(
      yardCode: yard.yardCode,
      startDate: DateTime.now().toUtc(),
      endDate: DateTime.now().toUtc(),
      filterForUser: true,
    );
    InformJobs.allJobsCounts = jobsCount;
    InformJobs.yardDetails =
        await landingPageService.getYardDetails(yard.yardCode!);
    if (InformJobs.yardDetails != null) {
      InformJobs.preference = await landingPageService
          .getPreferenceForCompanyCode(InformJobs.yardDetails!.companyCode!);
    }

    notifyListeners();
  }

  Future<void> updateCount() async {
    final yard = await userPreferencesRepository.getYard();
    if (yard == null) return;
    final jobsCount = await landingPageService.getAllJobsCount(
      yardCode: yard.yardCode,
      startDate: DateTime.now().toUtc(),
      endDate: DateTime.now().toUtc(),
      filterForUser: true,
    );
    InformJobs.allJobsCounts = jobsCount;

    notifyListeners();
  }
}
