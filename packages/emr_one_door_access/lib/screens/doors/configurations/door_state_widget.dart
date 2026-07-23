import 'package:emr_one_core/eo_constants.dart';
import 'package:emr_one_door_access/emr_one_door_access.dart';
import 'package:flutter/material.dart';

class DoorStateWidget extends StatelessWidget {
  const DoorStateWidget({required this.future, super.key});
  final Future<DoorAndPriorityState> future;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<DoorAndPriorityState>(
      future: future,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        }

        if (snapshot.hasError) {
          return Center(
            child: Text(
              'Error: ${snapshot.error}',
              style: const TextStyle(color: Colors.red),
            ),
          );
        }

        if (!snapshot.hasData) {
          return const Center(child: Text('No data found'));
        }

        final state = snapshot.data!;

        return Card(
          margin: const EdgeInsets.all(Insets.gutter),
          child: Padding(
            padding: const EdgeInsets.all(Insets.gutter),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  /// Door State
                  Row(
                    children: [
                      const Icon(Icons.door_front_door),
                      const SizedBox(width: Insets.gutter / 2),
                      Text(
                        'Door Mode: ${state.doorState.doorMode}',
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: Insets.gutter),

                  const Text(
                    'Priority States',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),

                  const SizedBox(height: Insets.gutter),

                  if (state.priorityStates.isEmpty)
                    const Text('No priority states')
                  else
                    ...state.priorityStates.map(
                      (priority) => Card(
                        elevation: 1,
                        margin: const EdgeInsets.symmetric(vertical: 6),
                        child: ListTile(
                          leading: const Icon(Icons.priority_high),
                          title: Text(priority.priorityLevel),
                          subtitle: Text('Action: ${priority.doorAction}'),
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
