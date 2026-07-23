import 'package:emr_one_door_access/emr_one_door_access.dart';

class AccessCredentialsDataController {
  AccessCredentialsDataController({required this.doorAccessService});
  final DoorAccessService doorAccessService;

  late List<ListValue> allAccessControllers = [];
  late List<ListValue> allGroups = [];

  Future<void> getFilterValues() async {
    allAccessControllers =
        (await doorAccessService.accessControllersService
                .getAllAccessControllers())
            .map((e) => ListValue(value: e.id, text: '${e.name}-${e.uri}'))
            .toList();

    allGroups = (await doorAccessService.groupsService.getAllGroups())
        .map((e) => ListValue(value: e.id, text: e.name))
        .toList();
  }
}
