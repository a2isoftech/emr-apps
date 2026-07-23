import 'package:emr_one_transport/core/constants/string_constants.dart';
import 'package:emr_one_transport/data/helpers/string_helper.dart';
import 'package:emr_one_transport/data/models/common/account.dart';
import 'package:emr_one_transport/data/models/common/enum.dart';
import 'package:emr_one_transport/data/models/common/list_details.dart';
import 'package:emr_one_transport/data/models/hauliers/haulier.dart';
import 'package:emr_one_transport/data/models/user_preferences/dispatch_yards.dart';
import 'package:emr_one_transport/data/services/haulier_service.dart';
import 'package:emr_one_transport/data/services/joblist_service.dart';

class JobListSearchDataController {
  JobListSearchDataController({
    required this.service,
    required this.haulierService,
  });
  final JobListService service;
  final HaulierService haulierService;

  List<ListDetails> allJobTypes = [];
  List<ListDetails> allJobStatuses = [];
  List<ListDetails> allJobSources = [];
  List<ListDetails> allContainerTypes = [];
  List<ListDetails> allTrailerTypes = [];
  List<ListDetails> allStartLocation = [];
  List<ListDetails> allEndLocation = [];
  List<ListDetails> allActionLocation = [];
  List<ListDetails> allDeleteReasons = [];
  List<DispatchYards> allYards = [];
  List<String> allFromToDateRanges = [];
  List<ListDetails> hasJobContainerImagesOptions = [];
  List<Haulier> allHauliers = [];
  List<ListDetails> allProductFamilies = [];
  List<ListDetails> allProducts = [];

  Future<void> getFilterValues() async {
    allJobTypes = JobType.values.map((e) {
      return ListDetails(code: e.apiValue, description: e.toString());
    }).toList();
    allJobTypes.sort((a, b) => a.description!.compareTo(b.description!));

    allJobSources = JobSource.values.map((e) {
      return ListDetails(code: e.getFilterValues, description: e.toString());
    }).toList();
    allJobSources.sort((a, b) => a.description!.compareTo(b.description!));

    allJobStatuses = JobStatus.values.map((e) {
      return ListDetails(code: e.toString(), description: e.toString());
    }).toList();
    allJobStatuses.sort((a, b) => a.description!.compareTo(b.description!));

    hasJobContainerImagesOptions = [
      const ListDetails(
        code: StringConstants.yes,
        description: StringConstants.trueString,
      ),
      const ListDetails(
        code: StringConstants.no,
        description: StringConstants.falseString,
      ),
    ];

    allFromToDateRanges = [
      StringConstants.yesterdayjobs,
      StringConstants.todayJobs,
      StringConstants.tomorrowsJobs,
      StringConstants.previousweekJobs,
      StringConstants.thisweekJobs,
      StringConstants.nextweekJobs,
      StringConstants.lastthreeMonthJobs,
      StringConstants.lastsixMonthJobs,
      StringConstants.lasttwelweMonthJobs,
      StringConstants.lasteighteenMonthJobs,
    ];
    await Future.wait([
      _getContainerTypes(),
      _getTrailerTypes(),
      _getDispatchYardsForUser(),
      _getDeleteReasons(),
      _getProductFamilies(),
    ]);
  }

  Future<void> _getContainerTypes() async {
    allContainerTypes = await service.getContainerTypes();
  }

  Future<void> _getTrailerTypes() async {
    allTrailerTypes = await service.getTrailerTypes();
  }

  Future<void> _getDispatchYardsForUser() async {
    allYards = await service.getDispatchYardsForUser();
  }

  Future<void> _getDeleteReasons() async {
    allDeleteReasons = await service.getDeleteReasons();
  }

  Future<void> getHauliers(String searchTerm) async {
    allHauliers = await haulierService.searchHauliers(searchTerm);
  }

  Future<void> _getProductFamilies() async {
    allProductFamilies = await service.getProductTypes();
  }

  Future<void> getProductsBySearchTerm(String searchTerm) async {
    allProducts = await service.getProductsBySearchTerm(searchTerm);
  }

  Future<void> searchPartyLocations(String searchTerm, String location) async {
    var partylocations = <Account>[];
    partylocations = await service.partySearchByAccountOrName(searchTerm);

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
