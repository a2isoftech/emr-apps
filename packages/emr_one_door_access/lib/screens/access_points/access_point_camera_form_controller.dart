import 'package:emr_one_door_access/emr_one_door_access.dart';
import 'package:flutter/material.dart';

class AccessPointCameraFormController extends DoorAccessBaseController {
  AccessPointCameraFormController({required this.doorAccessService});
  final DoorAccessService doorAccessService;

  final formKey = GlobalKey<FormState>();

  String accessPointId = '';
  final cameraName = ValueNotifier<String>('');
  final ipAddress = ValueNotifier<String>('');
  final snapshotUrl = ValueNotifier<String>('');
  final username = ValueNotifier<String>('');
  final password = ValueNotifier<String>('');

  void init(String accessPointId, Camera? camera) {
    if (this.accessPointId == accessPointId) {
      return;
    }

    cameraName.value = camera?.cameraName ?? '';
    ipAddress.value = camera?.ipAddress ?? '';
    snapshotUrl.value = camera?.snapshotUrl ?? '';
    username.value = camera?.username ?? '';
    password.value = camera?.password ?? '';
    this.accessPointId = accessPointId;
  }

  @override
  Future<(bool, String)> update() async {
    try {
      final response = await doorAccessService.accessPointsService
          .addCameraToAccessPoint(
            input: SaveAccessPointCameraInput(
              accessPointId: accessPointId,
              cameraName: cameraName.value,
              ipAddress: ipAddress.value,
              snapshotUrl: snapshotUrl.value,
              username: username.value,
              password: password.value,
            ),
          );

      if (response) {
        return (true, '');
      }
      return (false, 'Camera could not be set for access point.');
    } catch (err) {
      toggleProcessing();
      return (
        false,
        'An error occurred while setting camera for access point'
            ' : $err.',
      );
    }
  }

  @override
  void dispose() {
    cameraName.dispose();
    ipAddress.dispose();
    snapshotUrl.dispose();
    username.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  void reset() {
    // TODO: implement reset
  }
}
