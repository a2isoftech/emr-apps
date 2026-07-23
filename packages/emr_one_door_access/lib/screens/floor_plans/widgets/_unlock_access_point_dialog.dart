import 'package:emr_one_core/utilities/emr_modal.dart';
import 'package:emr_one_door_access/emr_one_door_access.dart';
import 'package:flutter/material.dart';

class UnlockAccessPointDialog extends StatefulWidget {
  const UnlockAccessPointDialog({
    required this.controller,
    required this.hotspot,
    super.key,
  });

  final FloorPlanController controller;
  final Hotspot hotspot;

  @override
  State<UnlockAccessPointDialog> createState() =>
      _UnlockAccessPointDialogState();
}

class _UnlockAccessPointDialogState extends State<UnlockAccessPointDialog> {
  final reasonController = TextEditingController();

  final isReasonEmpty = ValueNotifier<bool>(true);

  @override
  void initState() {
    super.initState();
    reasonController.addListener(() {
      isReasonEmpty.value = reasonController.text.trim().isEmpty;
    });
  }

  @override
  Widget build(BuildContext context) {
    var isSubmitting = false;
    return StatefulBuilder(
      builder: (context, setState) {
        return AlertDialog(
          title: const Text('Unlock Access Point'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: reasonController,
                decoration: const InputDecoration(
                  labelText: 'Reason',
                  border: OutlineInputBorder(),
                  isDense: true,
                  hintText: 'Please provide a reason',
                ),
                maxLines: 3,
              ),
              if (isSubmitting) ...[
                const SizedBox(height: 16),
                const Center(child: CircularProgressIndicator()),
              ],
            ],
          ),
          actions: [
            TextButton(
              onPressed: isSubmitting
                  ? null
                  : () {
                      Navigator.pop(context);
                    },
              child: const Text('Cancel'),
            ),
            ValueListenableBuilder<bool>(
              valueListenable: isReasonEmpty,
              builder: (context, isEmpty, _) {
                return TextButton(
                  onPressed: isEmpty || isSubmitting
                      ? null
                      : () async {
                          setState(() {
                            isSubmitting = true;
                          });

                          final result = await widget.controller
                              .unlockAccessPoint(
                                widget.hotspot,
                                reasonController.text,
                              );

                          if (!context.mounted) {
                            return;
                          }

                          if (result.$1) {
                            await EmrModal.showMessageBar(
                              context,
                              'Access point unlocked',
                            );
                          } else {
                            await EmrModal.showMessageBar(
                              context,
                              result.$2,
                              messageType: MessageBarTypes.error,
                            );
                          }

                          if (!context.mounted) {
                            return;
                          }
                          Navigator.pop(context);
                        },
                  child: const Text('Unlock'),
                );
              },
            ),
          ],
        );
      },
    );
  }
}
