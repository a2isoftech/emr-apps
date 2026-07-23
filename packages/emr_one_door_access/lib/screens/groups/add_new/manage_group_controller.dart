import 'package:emr_one_door_access/emr_one_door_access.dart';

class ManageGroupController extends DoorAccessBaseController {
  ManageGroupController({required this.doorAccessService});

  final DoorAccessService doorAccessService;
  AdGroup? selectedAdGroup;

  @override
  void reset() {
    processing = false;
  }

  void setAdGroup(AdGroup adGroup) {
    selectedAdGroup = adGroup;
    notifyListeners();
  }

  Future<List<AdGroup>> searchGroups(String searchQuery) async {
    return doorAccessService.groupsService.searchAdGroups(
      searchQuery: searchQuery,
    );
  }

  @override
  Future<(bool, String)> update() async {
    if (selectedAdGroup == null) {
      toggleProcessing();
      return (false, 'No group selected');
    }
    final response = await doorAccessService.groupsService.pullNewGroupFromAAD(
      groupId: selectedAdGroup!.id,
    );
    if (response) {
      return (true, '');
    }
    return (false, 'Group could not be added.');
  }
}
