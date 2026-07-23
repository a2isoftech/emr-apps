import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_door_access/emr_one_door_access.dart';
import 'package:emr_one_door_access/routing/door_access_route_registry.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CreateScheduleScreen extends StatefulWidget {
  const CreateScheduleScreen({
    required this.accessControllerId,
    required this.siteId,
    required this.doorAccessService,
    super.key,
  });

  final DoorAccessService doorAccessService;
  final String accessControllerId;
  final String siteId;

  @override
  State<CreateScheduleScreen> createState() => _CreateScheduleScreenState();
}

class _CreateScheduleScreenState extends State<CreateScheduleScreen> {
  final ScheduleInput schedule = ScheduleInput();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsetsGeometry.all(Insets.gutter),
      child: Consumer<ManageScheduleController>(
        builder: (context, controller, child) {
          controller.init(schedule, widget.accessControllerId);
          return SingleChildScrollView(
            padding: const EdgeInsets.all(Insets.gutter),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextField(
                  decoration: const InputDecoration(labelText: 'Token'),
                  onChanged: (v) => schedule.token = v,
                ),
                const SizedBox(height: Insets.gutter),
                TextField(
                  decoration: const InputDecoration(labelText: 'Schedule Name'),
                  onChanged: (v) => schedule.scheduleName = v,
                ),
                const SizedBox(height: Insets.gutter * 2),
                Text('Events', style: theme.textTheme.headlineMedium),
                const SizedBox(height: Insets.gutter / 2),
                Column(
                  children: [
                    for (int i = 0; i < schedule.events.length; i++)
                      EventCard(
                        event: schedule.events[i],
                        index: i,
                        onRemove: () => controller.removeEvent(i),
                        controller: controller,
                      ),
                  ],
                ),
                const SizedBox(height: Insets.gutter / 2),
                OutlinedButton.icon(
                  icon: const Icon(Icons.add),
                  label: const Text('Add Event'),
                  onPressed: controller.addEvent,
                ),
                const SizedBox(height: Insets.gutter * 2),
                EmrFormButtons(
                  controller: controller,
                  formKey: formKey,
                  onSuccessfulSave: () {
                    context.goNamed(
                      DoorAccessRouteRegistry.routeDoorControllers,
                      params: {'siteId': widget.siteId},
                    );
                  },
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
