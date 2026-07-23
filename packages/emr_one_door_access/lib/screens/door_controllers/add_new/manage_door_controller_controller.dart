import 'package:collection/collection.dart';
import 'package:emr_one_door_access/emr_one_door_access.dart';
import 'package:flutter/material.dart';

class ManageDoorControllerController extends DoorAccessBaseController {
  ManageDoorControllerController({required this.doorAccessService});

  final DoorAccessService doorAccessService;

  EditDoorControllerFormData? _formData;

  EditDoorControllerFormData get data =>
      _formData ?? EditDoorControllerFormData();

  AccessController? accessController;

  static List<KeyValuePair<String, String>>? _sites;

  @override
  void reset() {
    _formData = null;
    processing = false;
  }

  Future<AccessController?> init(AccessController? accessController) async {
    try {
      this.accessController = accessController;

      await sites('');

      _formData = EditDoorControllerFormData(
        name: accessController?.name,
        password: accessController?.password,
        url: accessController?.uri,
        username: accessController?.username,
      );

      if ((accessController?.site ?? '').isNotEmpty) {
        final site = (_sites ?? []).firstWhereOrNull(
          (x) => x.key == accessController!.site,
        );

        if (site != null) {
          _formData!.siteId = ValueNotifier<KeyValuePair<String, String>>(site);
        }
      }
    } catch (err) {
      debugPrint(err.toString());
    }

    return accessController;
  }

  Future<List<KeyValuePair<String, String>>> sites(String _) async {
    if (_sites == null) {
      final data = await doorAccessService.sitesService.getAllSites();

      _sites = data.map((v) => (key: v.id, value: v.name)).toList();
    }
    return Future.value(_sites);
  }

  @override
  Future<(bool, String)> update() async {
    if (accessController == null) {
      if ((data.url.value ?? '').isEmpty ||
          (data.username.value ?? '').isEmpty ||
          (data.password.value ?? '').isEmpty ||
          (data.siteId.value.key.isEmpty) ||
          (data.name.value ?? '').isEmpty) {
        toggleProcessing();
        return (false, 'Invalid or null data supplied');
      }
    }

    final allAccessControllers = await doorAccessService
        .accessControllersService
        .getAllAccessControllers();

    if (allAccessControllers.any(
      (s) =>
          s.name.toLowerCase() == data.name.value?.toLowerCase() &&
          (accessController == null || s.id != accessController?.id),
    )) {
      toggleProcessing();
      return (
        false,
        'Access controller with name (${data.name.value}) already exists.',
      );
    }

    final response = accessController == null
        ? await doorAccessService.accessControllersService
              .createAccessController(
                name: data.name.value!,
                password: data.password.value!,
                siteId: data.siteId.value.key,
                url: data.url.value!,
                username: data.username.value!,
              )
        : await doorAccessService.accessControllersService
              .updateAccessController(
                name: data.name.value,
                password: data.password.value,
                siteId: data.siteId.value.key,
                id: accessController!.id,
                username: data.username.value,
              );

    if (response) {
      return (true, '');
    }
    return (false, 'Access controller could not be saved.');
  }
}
