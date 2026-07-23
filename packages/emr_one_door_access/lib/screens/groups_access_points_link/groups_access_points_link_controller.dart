import 'package:collection/collection.dart';
import 'package:emr_one_door_access/emr_one_door_access.dart';

class GroupsAccessPointsLinkController extends DoorAccessBaseController {
  GroupsAccessPointsLinkController({required this.doorAccessService});

  final DoorAccessService doorAccessService;
  GroupsAccessPointsLinkFormData? _formData;
  List<AccessController> _controllers = [];
  List<AdGroup> _groups = [];
  List<MapEntry<String, String>> accessPoints = [];
  List<MapEntry<String, String>> schedules = [];
  GroupsAccessPointsLinkFormData get data =>
      _formData ??
      GroupsAccessPointsLinkFormData(
        selectedAccessPointId: const MapEntry('', ''),
        selectedGroup: const MapEntry('', ''),
      );

  void _populateSchedules() {
    schedules = [];
    for (final controller in _controllers) {
      for (final (sch as Schedule) in controller.schedules ?? []) {
        schedules.add(MapEntry(sch.token, '${controller.uri} - ${sch.name}'));
      }
    }
  }

  List<MapEntry<String, String>> getSchedules(
    MapEntry<String, String> accessPointId,
  ) {
    if (accessPointId.value.isNotEmpty) {
      final url = data.accessPointId.value.value.split('-')[0].trim();
      return schedules.where((r) => r.value.startsWith(url)).toList();
    }
    return schedules;
  }

  Future<List<MapEntry<String, String>>> groups(String _) async {
    StaticData.ignoreCache = true;
    final groups = await doorAccessService.groupsService.getAllGroups();
    final result = groups.map((v) => MapEntry(v.id, v.name)).toList();
    return result;
  }

  @override
  void reset() {
    _formData = null;
    processing = false;
  }

  static Future<(List<AccessController>, List<AdGroup>)> load(
    DoorAccessService doorAccessService,
  ) async {
    final controllers = await doorAccessService.accessControllersService
        .getAllAccessControllers();
    final groups = await doorAccessService.groupsService.getAllGroups();
    return (controllers, groups);
  }

  void _populateAccessPoints() {
    accessPoints = [];
    for (final controller in _controllers) {
      for (final (accessPoint as AccessPoint)
          in (controller.accessPointObjects ?? [])) {
        accessPoints.add(
          MapEntry(accessPoint.id, '${controller.uri} - ${accessPoint.name}'),
        );
      }
    }
  }

  Future<bool> init(
    List<AccessController> controllers,
    List<AdGroup> groups,
    String? grpId,
    String? accessPointId,
  ) async {
    _controllers = controllers;
    _groups = groups;
    final selectedGroup = _groups.firstWhereOrNull((g) => g.id == grpId);
    var selectedGroupEntry = const MapEntry('', '');
    if (selectedGroup != null) {
      selectedGroupEntry = MapEntry(selectedGroup.id, selectedGroup.name);
    }

    _populateAccessPoints();
    final selectedAccessPoint = accessPoints.firstWhereOrNull(
      (g) => g.key == accessPointId,
    );
    var selectedAccessPointEntry = const MapEntry('', '');
    if (selectedAccessPoint != null) {
      selectedAccessPointEntry = MapEntry(
        selectedAccessPoint.key,
        selectedAccessPoint.value,
      );
    }

    _formData ??= GroupsAccessPointsLinkFormData(
      selectedGroup: selectedGroupEntry,
      selectedAccessPointId: selectedAccessPointEntry,
    );

    _populateSchedules();
    return true;
  }

  @override
  Future<(bool, String)> update() async {
    if (data.accessPointId.value.key.isEmpty ||
        (data.groupId.value?.key ?? '').isEmpty ||
        data.schedules.value.isEmpty) {
      toggleProcessing();
      return (false, 'Invalid access point / group / schedule');
    }
    try {
      final response = await doorAccessService.accessControllersService
          .linkGroupAndAccessPoint(
            accessPointId: data.accessPointId.value.key,
            groupId: data.groupId.value!.key,
            schedules: data.schedules.value.map((x) => x.key).toList(),
          );

      if (response) {
        return (true, '');
      }
      return (false, 'Link could not be saved.');
    } catch (err) {
      toggleProcessing();
      return (false, 'An error occurred while saving the link : $err.');
    }
  }
}
