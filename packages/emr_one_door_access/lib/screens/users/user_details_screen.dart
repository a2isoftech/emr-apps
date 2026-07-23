import 'package:collection/collection.dart';
import 'package:emr_one_core/eo_constants.dart';
import 'package:emr_one_door_access/emr_one_door_access.dart';
import 'package:flutter/material.dart';

class UserDetailsScreen extends StatelessWidget {
  const UserDetailsScreen({
    required this.doorAccessService,
    required this.userId,
    super.key,
  });

  final DoorAccessService doorAccessService;
  final String userId;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return FutureBuilder(
      builder:
          (
            BuildContext ctx,
            AsyncSnapshot<PaginatedResponse<List<DoorAccessUser>>> snapshot,
          ) {
            if (ConnectionState.done == snapshot.connectionState) {
              if (snapshot.data != null) {
                return Padding(
                  padding: const EdgeInsetsGeometry.all(Insets.gutter),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Groups', style: theme.textTheme.headlineMedium),
                      const Divider(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:
                            (snapshot.data?.data.firstOrNull?.groupDetails ??
                                    [])
                                .map(
                                  (s) => Text(
                                    s.name,
                                    style: theme.textTheme.labelLarge,
                                  ),
                                )
                                .toList(),
                      ),
                      const Divider(),
                      Text('Events', style: theme.textTheme.headlineMedium),
                      const Divider(),
                      Expanded(
                        child: EventsGrid(
                          events:
                              snapshot
                                  .data!
                                  .data
                                  .firstOrNull
                                  ?.doorAccessAttemptEvents ??
                              [],
                          isUserMode: true,
                        ),
                      ),
                    ],
                  ),
                );
              }
            }
            return processingIndicator();
          },
      future: doorAccessService.usersService.getUserDetails(userIds: [userId]),
    );
  }
}
