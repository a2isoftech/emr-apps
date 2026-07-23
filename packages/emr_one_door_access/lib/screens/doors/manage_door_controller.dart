import 'package:emr_one_door_access/emr_one_door_access.dart';
import 'package:flutter/material.dart';

class ManageDoorController extends ChangeNotifier {
  ManageDoorController({required this.doorAccessService});

  final DoorAccessService doorAccessService;
}
