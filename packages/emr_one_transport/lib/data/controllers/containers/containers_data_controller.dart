import 'package:emr_one_transport/core/constants/string_constants.dart';
import 'package:emr_one_transport/data/models/common/enum.dart';
import 'package:emr_one_transport/data/models/common/list_details.dart';
import 'package:emr_one_transport/data/models/user_preferences/dispatch_yards.dart';
import 'package:emr_one_transport/data/services/common_service.dart';

class ContainersDataController {
  ContainersDataController({required this.service});
  final CommonService service;

  List<DispatchYards> allYards = [];
  List<ListDetails> allContainerTypes = [];
  List<String> allStatuses = [];
  List<ListDetails> allConditions = [];
  Future<void> getFilterValues() async {
    allYards = await service.getDispatchYardsForUser();
    allContainerTypes =
        await service.getListByType(StringConstants.containerTypes);
    allConditions =
        await service.getListByType(StringConstants.assetConditions);
    allStatuses = ContainerLifeCycleStatusEnum.values
        .map((e) => displayLifeCycleStatus(e.getLifeCycleStatus))
        .toList();
    allStatuses.sort();
  }
}
