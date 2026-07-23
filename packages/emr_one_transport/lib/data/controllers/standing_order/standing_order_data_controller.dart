import 'package:emr_one_transport/core/constants/string_constants.dart';
import 'package:emr_one_transport/data/helpers/string_helper.dart';
import 'package:emr_one_transport/data/models/common/account.dart';
import 'package:emr_one_transport/data/models/common/enum.dart';
import 'package:emr_one_transport/data/models/common/list_details.dart';
import 'package:emr_one_transport/data/models/user_preferences/dispatch_yards.dart';
import 'package:emr_one_transport/data/services/joblist_service.dart';
import 'package:emr_one_transport/data/services/standing_order_service.dart';

class StandingOrderDataController {
  StandingOrderDataController({
    required this.standingOrderService,
    required this.jobListService,
  });
  final StandingOrderService standingOrderService;
  final JobListService jobListService;

  List<ListDetails> allJobTypes = [];
  List<ListDetails> allStatuses = [];
  List<ListDetails> allContainerTypes = [];
  List<ListDetails> allTrailerTypes = [];
  List<ListDetails> allStartLocation = [];
  List<ListDetails> allEndLocation = [];
  List<ListDetails> allActionLocation = [];
  List<ListDetails> allDeleteReasons = [];
  List<DispatchYards> allYards = [];

  Future<void> getFilterValues() async {
    allJobTypes = JobType.values.map((e) {
      return ListDetails(
        code: e.apiValue,
        description: e.toString(),
      );
    }).toList();
    allJobTypes.sort((a, b) => a.description!.compareTo(b.description!));

    allStatuses = StandingOrderStatus.values.map((e) {
      return ListDetails(
        code: e.toString(),
        description: e.toString(),
      );
    }).toList();

    await Future.wait([
      _getContainerTypes(),
      _getTrailerTypes(),
      _getDispatchYardsForUser(),
      _getDeleteReasons(),
    ]);
  }

  Future<void> _getContainerTypes() async {
    allContainerTypes = await jobListService.getContainerTypes();
  }

  Future<void> _getTrailerTypes() async {
    allTrailerTypes = await jobListService.getTrailerTypes();
  }

  Future<void> _getDispatchYardsForUser() async {
    allYards = await jobListService.getDispatchYardsForUser();
  }

  Future<void> _getDeleteReasons() async {
    allDeleteReasons = await jobListService.getDeleteReasons();
  }

  Future<void> searchPartyLocations(String searchTerm, String location) async {
    var partylocations = <Account>[];
    partylocations =
        await jobListService.partySearchByAccountOrName(searchTerm);

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
