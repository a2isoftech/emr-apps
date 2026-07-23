import 'package:emr_one_inform/globals.dart';
import 'package:emr_one_inform/repository/shared_preferences/ipreference_repository.dart';
import 'package:emr_one_inform/screens/base/base_controller.dart';
import 'package:emr_one_inform/services/interfaces/ilanding_page_service.dart';

class JobPageController extends BaseController {
  JobPageController({
    required this.landingPageService,
    required this.userPreferencesRepository,
  });

  final ILandingPageService landingPageService;
  final IUserPreferencesRepository userPreferencesRepository;
  bool isBusy = false;

  Future<void> refreshJobCounts() async {
    final yard = await userPreferencesRepository.getYard();
    InformJobs.allJobsCounts =
        await landingPageService.getAllJobsCount(yardCode: yard!.yardCode);
  }
}
