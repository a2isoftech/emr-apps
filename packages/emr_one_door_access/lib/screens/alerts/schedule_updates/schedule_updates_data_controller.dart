import 'package:emr_one_door_access/emr_one_door_access.dart';

class ScheduleUpdatesDataController {
  ScheduleUpdatesDataController({required this.doorAccessService});
  final DoorAccessService doorAccessService;

  late List<ListValue> allAccessControllers = [];
  late List<ListValue> allSites = [];

  Future<void> getFilterValues() async {
    allAccessControllers =
        (await doorAccessService.accessControllersService
                .getAllAccessControllers())
            .map((e) => ListValue(value: e.id, text: '${e.name}-${e.uri}'))
            .toList();

    allSites = (await doorAccessService.sitesService.getAllSites())
        .map((e) => ListValue(value: e.id, text: e.name))
        .toList();
  }
}
