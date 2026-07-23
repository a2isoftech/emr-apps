import 'package:emr_one_core/eo_constants.dart';
import 'package:emr_one_door_access/emr_one_door_access.dart';
import 'package:flutter/material.dart';

class DoorConfigurationForm extends StatefulWidget {
  const DoorConfigurationForm({
    required this.accessControllerId,
    required this.configurationController,
    required this.door,
    required this.schedules,
    super.key,
  });
  final ConfigurationController configurationController;
  final String accessControllerId;
  final Door? door;
  final List<Schedule> schedules;

  @override
  State<DoorConfigurationForm> createState() => _DoorConfigurationFormState();
}

class _DoorConfigurationFormState extends State<DoorConfigurationForm> {
  @override
  void initState() {
    super.initState();
    widget.configurationController.init(
      widget.accessControllerId,
      widget.door,
      widget.schedules,
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SafeArea(
      child: SingleChildScrollView(
        child: Form(
          key: widget.configurationController.formKey,
          child: Column(
            children: [
              ValidationSummary(
                errors: widget.configurationController.validationErrors,
              ),

              const Divider(height: 1),
              Text(
                'Door Priority Configuration',
                style: theme.textTheme.headlineMedium,
              ),
              const Divider(height: 1),
              PriorityConfigurationForm(
                controller: widget
                    .configurationController
                    .priorityConfigurationController,
              ),

              const SizedBox(height: Insets.gutter * 2),

              const Divider(height: 1),
              Text(
                'Door Schedule Configuration',
                style: theme.textTheme.headlineMedium,
              ),
              const Divider(height: 1),
              ScheduleConfigurationForm(
                controller: widget
                    .configurationController
                    .scheduleConfigurationController,
                availableSchedules: widget.schedules,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
