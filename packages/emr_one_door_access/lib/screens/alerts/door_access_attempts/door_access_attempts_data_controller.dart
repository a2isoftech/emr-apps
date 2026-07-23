import 'package:emr_one_door_access/emr_one_door_access.dart';

class DoorAccessAttemptsDataController {
  DoorAccessAttemptsDataController({required this.doorAccessService});
  final DoorAccessService doorAccessService;

  late List<ListValue> allAccessControllers = [];
  late List<ListValue> allSites = [];
  late List<ListValue> allUsers = [];
  late List<ListValue> eventTypes = [];

  Future<void> getFilterValues() async {
    allAccessControllers =
        (await doorAccessService.accessControllersService
                .getAllAccessControllers())
            .map((e) => ListValue(value: e.id, text: '${e.name}-${e.uri}'))
            .toList();

    allSites = (await doorAccessService.sitesService.getAllSites())
        .map((e) => ListValue(value: e.id, text: e.name))
        .toList();

    allUsers = (await doorAccessService.usersService.getAllUsers())
        .map((e) => ListValue(text: e.name, value: e.id))
        .toList();

    eventTypes = [
      ListValue(text: 'Access Denied', value: 'Denied'),
      ListValue(text: 'Access Granted', value: 'AccessGranted'),
      ListValue(text: 'Schedule Updated', value: 'ScheduleUpdated'),
    ];
  }
}
