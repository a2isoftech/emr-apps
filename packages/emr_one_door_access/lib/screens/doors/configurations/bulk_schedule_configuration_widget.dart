import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_door_access/emr_one_door_access.dart';
import 'package:flutter/material.dart';

class BulkScheduleConfigurationWidget extends StatefulWidget {
  const BulkScheduleConfigurationWidget({
    required this.controller,
    required this.formKey,
    required this.doors,
    super.key,
  });

  final GlobalKey<FormState> formKey;
  final List<DoorSearchResult> doors;
  final BulkScheduleConfigurationController controller;

  @override
  State<BulkScheduleConfigurationWidget> createState() =>
      _BulkScheduleConfigurationWidgetState();
}

class _BulkScheduleConfigurationWidgetState
    extends State<BulkScheduleConfigurationWidget> {
  @override
  Widget build(BuildContext context) {
    if (widget.controller.isLoading) {
      return const Center(child: CircularProgressIndicator());
    }
    final distinctScheduleConfigs = widget.doors
        .where((e) => e.scheduleConfigId != null)
        .fold<Map<String, String>>({}, (map, item) {
          map[item.scheduleConfigId!] = item.scheduleConfigName ?? 'Unknown';
          return map;
        });

    final distinctPriorityConfigs = widget.doors
        .where((e) => e.priorityConfigId != null)
        .fold<Map<String, String>>({}, (map, item) {
          map[item.priorityConfigId!] = item.priorityConfigName ?? 'Unknown';
          return map;
        });

    return Form(
      key: widget.formKey,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            EmrPickerFormField(
              labelText: 'Priority Configuration',
              items: (_) => Future.value(
                distinctPriorityConfigs.entries
                    .map((v) => (key: v.key, value: v.value))
                    .toList(),
              ),
              itemTitleText: (item) => item.value,
              binding: widget.controller.priorityConfigId,
              validator: Validators.required,
            ),

            const SizedBox(height: Insets.gutter),
            EmrPickerFormField(
              labelText: 'Schedule Configuration',
              items: (_) => Future.value(
                distinctScheduleConfigs.entries
                    .map((v) => (key: v.key, value: v.value))
                    .toList(),
              ),
              itemTitleText: (item) => item.value,
              binding: widget.controller.scheduleConfigId,
              validator: Validators.required,
            ),

            const SizedBox(height: Insets.gutter),

            Column(
              children: widget.doors.map((door) {
                final isSelected = widget.controller.selectedDoors.any(
                  (x) => door.doorExternalId == x.doorExternalId,
                );

                return CheckboxListTile(
                  value: isSelected,
                  controlAffinity: ListTileControlAffinity.leading,
                  title: Text(
                    '${door.accessControllerName} - ${door.doorName} - '
                    '${door.doorExternalId}',
                  ),
                  subtitle: door.siteName != null ? Text(door.siteName!) : null,
                  onChanged: (value) {
                    if (value ?? false) {
                      widget.controller.addDoor(door);
                    } else {
                      widget.controller.removeDoor(door);
                    }
                  },
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
