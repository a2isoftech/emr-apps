import 'package:emr_one_transport/core/constants/string_constants.dart';
import 'package:emr_one_transport/data/models/common/list_details.dart';
import 'package:emr_one_transport/data/models/user_preferences/dispatch_yards.dart';
import 'package:emr_one_transport/data/services/common_service.dart';

class ContainerLocatorDataController {
  ContainerLocatorDataController({required this.service});

  final CommonService service;

  List<DispatchYards> allYards = [];
  List<ListDetails> allContainerTypes = [];
  List<String> allStatuses = [];

  Future<void> getFilterValues() async {
    final results = await Future.wait([
      service.getDispatchYardsForUser(),
      service.getListByType('containerTypes'),
    ]);
    allYards = results[0] as List<DispatchYards>;
    allContainerTypes = results[1] as List<ListDetails>;

    // CurrentLocation.Status values using constants
    allStatuses = [
      StringConstants.containerLocationStatusCustomer,
      StringConstants.containerLocationStatusTruck,
      StringConstants.containerLocationStatusYard,
    ];
  }
}
