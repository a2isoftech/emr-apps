import 'package:emr_one_core/eo_constants.dart';
import 'package:emr_one_core/utilities/emr_modal.dart';
import 'package:emr_one_core/widgets/form_fields/emr_switch_form_field.dart';
import 'package:emr_one_door_access/emr_one_door_access.dart';
import 'package:flutter/material.dart';

class AlertPanel extends StatelessWidget {
  const AlertPanel({
    required this.controller,
    required this.pollForAlerts,
    required this.pollingSeconds,
    required this.updatePolling,
    super.key,
  });

  final FloorPlanController controller;
  final bool pollForAlerts;
  final int pollingSeconds;
  final void Function(int seconds) updatePolling;
  @override
  Widget build(BuildContext context) {
    var pollingSec = pollingSeconds;
    return Container(
      width: 320,
      padding: const EdgeInsets.all(Insets.gutter / 2),
      decoration: BoxDecoration(
        border: Border(right: BorderSide(color: Colors.grey.shade300)),
      ),
      child: pollForAlerts
          ? Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Access Alerts',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),

                const SizedBox(height: Insets.gutter / 2),

                /// POLLING INTERVAL FIELD
                Row(
                  children: [
                    const Text('Poll (sec):'),
                    const SizedBox(width: Insets.gutter / 2),
                    SizedBox(
                      width: 80,
                      child: TextFormField(
                        initialValue: pollingSeconds.toString(),
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                          isDense: true,
                          border: OutlineInputBorder(),
                        ),
                        onChanged: (value) {
                          final val = int.tryParse(value);
                          if (val != null) {
                            pollingSec = val;
                          }
                        },
                      ),
                    ),
                    IconButton(
                      onPressed: () async {
                        updatePolling(pollingSec);
                        await EmrModal.showMessageBar(
                          context,
                          'Polling interval set to $pollingSec'
                          ' seconds',
                        );
                      },
                      icon: const Icon(Icons.update),
                    ),
                    EmrSwitchFormField(
                      binding: controller.syncEventsFirst,
                      labelText: 'Sync Events',
                    ),
                  ],
                ),

                const SizedBox(height: Insets.gutter / 2),

                /// ALERT LIST
                Expanded(
                  child: controller.alerts.isEmpty
                      ? const Center(child: Text('No alerts'))
                      : ListView.builder(
                          itemCount: controller.alerts.length,
                          itemBuilder: (context, index) {
                            final alert = controller.alerts[index];

                            return Card(
                              color: Colors.red.shade50,
                              child: ListTile(
                                leading: alert.restricted
                                    ? const Icon(
                                        Icons.warning,
                                        color: Colors.orange,
                                      )
                                    : const Icon(
                                        Icons.dangerous,
                                        color: Colors.red,
                                      ),
                                title: Text(alert.userName),
                                subtitle: Text(alert.accessPointName),

                                /// REMOVE BUTTON
                                trailing: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                      _formatTime(alert.time),
                                      style: const TextStyle(fontSize: 12),
                                    ),
                                    IconButton(
                                      icon: const Icon(Icons.close),
                                      onPressed: () {
                                        controller.removeAlert(alert);
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                ),
              ],
            )
          : const Text('Alerts here'),
    );
  }

  String _formatTime(DateTime dt) {
    return '${dt.hour}:${dt.minute.toString().padLeft(2, '0')}';
  }
}
