import 'package:flutter/material.dart';

class GroupsAccessPointsLinkFormData {
  GroupsAccessPointsLinkFormData({
    required MapEntry<String, String> selectedGroup,
    required MapEntry<String, String> selectedAccessPointId,
  }) {
    groupId = ValueNotifier(selectedGroup);
    accessPointId = ValueNotifier(selectedAccessPointId);
    schedules = ValueNotifier([]);
  }

  late final ValueNotifier<MapEntry<String, String>?> groupId;
  late final ValueNotifier<MapEntry<String, String>> accessPointId;
  late final ValueNotifier<List<MapEntry<String, String>>> schedules;

  //TODO: remove if no plan to add multi select
  late ValueNotifier<List<MapEntry<String, String>>> groupIds =
      ValueNotifier<List<MapEntry<String, String>>>([]);
  late ValueNotifier<List<MapEntry<String, String>>> accessPointIds =
      ValueNotifier<List<MapEntry<String, String>>>([]);
}
