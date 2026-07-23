import 'package:emr_one_core/eo_constants.dart';
import 'package:emr_one_door_access/emr_one_door_access.dart';
import 'package:flutter/material.dart';

class DoorConfigurationScreen extends StatelessWidget {
  const DoorConfigurationScreen({
    required this.configurationController,
    super.key,
  });
  final ConfigurationController configurationController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Edit Door Configuration')),
      body: Padding(
        padding: const EdgeInsets.all(Insets.gutter),
        child: DoorConfigurationForm(
          configurationController: configurationController,
          door: null,
          accessControllerId: '',
          schedules: const [],
        ),
      ),
    );
  }
}
