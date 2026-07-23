import 'package:emr_one_transport/core/constants/string_constants.dart';
import 'package:emr_one_transport/data/helpers/string_helper.dart';
import 'package:emr_one_transport/data/models/common/account.dart';
import 'package:emr_one_transport/data/models/common/enum.dart';
import 'package:emr_one_transport/data/models/common/list_details.dart';
import 'package:emr_one_transport/data/models/hauliers/haulier.dart';
import 'package:emr_one_transport/data/models/user_preferences/dispatch_yards.dart';
import 'package:emr_one_transport/data/services/haulier_service.dart';
import 'package:emr_one_transport/data/services/joblist_service.dart';
import 'package:emr_one_transport/data/services/user_settings_service.dart';

class PlannerDataController {
  PlannerDataController({
    required this.jobService,
    required this.userSettingsService,
    required this.haulierService,
  });

  final JobListService jobService;
  final UserSettingsService userSettingsService;
  final HaulierService haulierService;

  List<ListDetails> allJobTypes = [];
  List<ListDetails> allContainerTypes = [];
  List<ListDetails> allTrailerTypes = [];
  List<ListDetails> allStartLocation = [];
  List<ListDetails> allEndLocation = [];
  List<ListDetails> allActionLocation = [];
  List<DispatchYards> allYards = [];
  List<String> allFromToDateRanges = [];
  List<ListDetails> allPlanTypes = [];
  List<Haulier> allHauliers = [];
  List<ListDetails> allProductFamilies = [];
  List<ListDetails> allProducts = [];
  List<ListDetails> allJobStatuses = [];

  Future<void> getFilterValues() async {
    allJobTypes = JobType.values.map((e) {
      return ListDetails(code: e.apiValue, description: e.toString());
    }).toList();
    allJobTypes.sort((a, b) => a.description!.compareTo(b.description!));

    allPlanTypes = FlowType.values.map((e) {
      return ListDetails(
        code: e.getflowtype,
        description: displayFlowType(e.getflowtype),
      );
    }).toList();
    allPlanTypes.sort((a, b) => a.description!.compareTo(b.description!));

    allJobStatuses = PlanJobStatus.values.map((e) {
      return ListDetails(code: e.apiValue, description: e.toString());
    }).toList();
    allJobStatuses.sort((a, b) => a.description!.compareTo(b.description!));

    await Future.wait([
      _getContainerTypes(),
      _getTrailerTypes(),
      _getDispatchYard(),
      _getProductTypes(),
    ]);

    allFromToDateRanges = [
      StringConstants.yesterdaysPlan,
      StringConstants.todaysPlan,
      StringConstants.tomorrowsPlan,
      StringConstants.previousWeekPlans,
      StringConstants.thisWeekPlans,
      StringConstants.nextWeekPlans,
      StringConstants.lastThreeMonthPlans,
      StringConstants.lastSixMonthPlans,
      StringConstants.lastTwelveMonthPlans,
      StringConstants.lastEighteenMonthPlans,
    ];
  }

  Future<void> _getContainerTypes() async {
    allContainerTypes = await jobService.getContainerTypes();
  }

  Future<void> _getTrailerTypes() async {
    allTrailerTypes = await jobService.getTrailerTypes();
  }

  Future<void> _getDispatchYard() async {
    allYards = await jobService.getDispatchYardsForUser();
  }

  Future<void> getHauliers(String searchTerm) async {
    allHauliers = await haulierService.searchHauliers(searchTerm);
  }

  Future<void> _getProductTypes() async {
    allProductFamilies = await jobService.getProductTypes();
  }

  Future<void> getProductsBySearchTerm(String searchTerm) async {
    allProducts = await jobService.getProductsBySearchTerm(searchTerm);
  }

  Future<void> searchPartyLocations(String searchTerm, String location) async {
    var partylocations = <Account>[];
    partylocations = await jobService.partySearchByAccountOrName(searchTerm);

    var responselocations = <ListDetails>[];
    responselocations = partylocations.map((locn) {
      return ListDetails(
        description: StringHelper.buildAccountAddress(locn),
        code: locn.locationCode,
      );
    }).toList();
    if (location == StringConstants.start) {
      allStartLocation = responselocations;
    } else if (location == StringConstants.end) {
      allEndLocation = responselocations;
    } else if (location == StringConstants.action) {
      allActionLocation = responselocations;
    }
  }
}
