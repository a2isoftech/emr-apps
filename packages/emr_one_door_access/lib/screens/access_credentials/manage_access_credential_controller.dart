import 'package:emr_one_door_access/emr_one_door_access.dart';
import 'package:flutter/material.dart';

class ManageAccessCredentialController extends ChangeNotifier {
  ManageAccessCredentialController({required this.doorAccessService});

  final error = 'Access credential could not be synced';

  final DoorAccessService doorAccessService;

  Future<(bool success, String error)> syncAccessCredential(String id) async {
    final success = await doorAccessService.accessControllersService
        .syncAccessCredential(id);

    if (!success) {
      return (false, error);
    }

    StaticData.ignoreCache = true;

    return (true, '');
  }
}
