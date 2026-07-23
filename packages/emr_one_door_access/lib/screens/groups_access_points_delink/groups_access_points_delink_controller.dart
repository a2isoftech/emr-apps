import 'package:collection/collection.dart';
import 'package:emr_one_door_access/emr_one_door_access.dart';

class GroupsAccessPointsDeLinkController extends DoorAccessBaseController {
  GroupsAccessPointsDeLinkController({required this.doorAccessService});

  final DoorAccessService doorAccessService;
  GroupsAccessPointsDeLinkFormData? _formData;
  List<AccessController> _controllers = [];
  List<AdGroup> _groups = [];
  List<String>? _groupIds = [];
  List<MapEntry<String, String>> accessPoints = [];
  List<MapEntry<String, String>> schedules = [];
  GroupsAccessPointsDeLinkFormData get data =>
      _formData ??
      GroupsAccessPointsDeLinkFormData(
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
    final groups = await doorAccessService.groupsService.getAllGroups();
    final result = groups.map((v) => MapEntry(v.id, v.name)).toList();
    return (_groupIds ?? []).isEmpty
        ? result
        : result.where((x) => _groupIds!.contains(x.key)).toList();
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

  void _populateAccessPoints(List<String>? accessPointIds) {
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
    List<String>? grpIds,
    List<String>? accessPointIds,
  ) async {
    _groupIds = grpIds;
    _controllers = controllers;
    _groups = (grpIds ?? []).isEmpty
        ? groups
        : groups.where((x) => grpIds!.contains(x.id)).toList();
    final selectedGroupEntry = MapEntry(
      _groups.firstOrNull?.id ?? '',
      _groups.firstOrNull?.name ?? '',
    );

    _populateAccessPoints(accessPointIds);

    accessPoints = accessPoints
        .where((g) => (accessPointIds ?? []).contains(g.key))
        .toList();

    final selectedAccessPointEntry = MapEntry(
      accessPoints.firstOrNull?.key ?? '',
      accessPoints.firstOrNull?.value ?? '',
    );

    _formData = GroupsAccessPointsDeLinkFormData(
      selectedGroup: selectedGroupEntry,
      selectedAccessPointId: selectedAccessPointEntry,
    );
    _populateSchedules();
    return true;
  }

  @override
  Future<(bool, String)> update() async {
    if (data.accessPointId.value.key.isEmpty ||
        (data.groupId.value?.key ?? '').isEmpty) {
      toggleProcessing();
      return (false, 'Invalid access point / group');
    }
    try {
      final response = await doorAccessService.accessControllersService
          .delinkGroupAndAccessPoint(
            accessPointId: data.accessPointId.value.key,
            groupId: data.groupId.value!.key,
          );

      if (response) {
        return (true, '');
      }
      return (false, 'DeLink could not be saved.');
    } catch (err) {
      toggleProcessing();
      return (false, 'An error occurred while saving the Delink : $err.');
    }
  }
}
