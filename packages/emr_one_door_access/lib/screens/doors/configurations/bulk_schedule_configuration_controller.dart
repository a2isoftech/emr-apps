import 'package:emr_one_door_access/emr_one_door_access.dart';
import 'package:flutter/foundation.dart';

class BulkScheduleConfigurationController extends ChangeNotifier {
  BulkScheduleConfigurationController({required this.doorAccessService});

  final DoorAccessService doorAccessService;
  static KeyValuePair<String, String> defaultConfigId = (key: '', value: '');

  late ValueNotifier<KeyValuePair<String, String>> scheduleConfigId =
      ValueNotifier(defaultConfigId);

  late ValueNotifier<KeyValuePair<String, String>> priorityConfigId =
      ValueNotifier(defaultConfigId);
  final Set<DoorSearchResult> selectedDoors = {};
  bool isLoading = false;

  void addDoor(DoorSearchResult d) {
    if (!selectedDoors.any((x) => x.doorExternalId == d.doorExternalId)) {
      selectedDoors.add(d);
      notifyListeners();
    }
  }

  void removeDoor(DoorSearchResult d) {
    if (selectedDoors.any((x) => x.doorExternalId == d.doorExternalId)) {
      selectedDoors.removeWhere((x) => x.doorExternalId == d.doorExternalId);
      notifyListeners();
    }
  }

  void setToNotLoading() {
    isLoading = false;
    notifyListeners();
  }

  Future<(bool, String)> update() async {
    isLoading = true;
    notifyListeners();

    if (priorityConfigId.value.key.isEmpty) {
      return (false, 'No door priority configuration selected');
    }

    if (scheduleConfigId.value.key.isEmpty) {
      return (false, 'No door schedule configuration selected');
    }

    if (selectedDoors.isEmpty) {
      return (false, 'No door selected');
    }

    isLoading = false;
    notifyListeners();

    final result = await doorAccessService.accessControllersService
        .upsertPartialDoorConfiguration(
          input: selectedDoors
              .map(
                (d) => Input$UpsertPartialDoorConfigurationInput(
                  accessControllerId: d.accessControllerId,
                  doorExternalId: d.doorExternalId,
                  doorPriorityConfigurationToken: priorityConfigId.value.key,
                  doorScheduleConfigurationToken: scheduleConfigId.value.key,
                ),
              )
              .toList(),
        );

    if (result) {
      return (true, '');
    }

    return (false, 'Door schedule configurations could not be updated');
  }
}
