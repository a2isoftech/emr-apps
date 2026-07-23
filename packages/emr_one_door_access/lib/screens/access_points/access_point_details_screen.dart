import 'package:collection/collection.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_door_access/emr_one_door_access.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

class AccessPointDetailsScreen extends StatefulWidget {
  const AccessPointDetailsScreen({
    required this.doorAccessService,
    required this.accessPointId,
    required this.siteId,
    super.key,
  });

  final DoorAccessService doorAccessService;
  final String accessPointId;
  final String siteId;

  @override
  State<AccessPointDetailsScreen> createState() =>
      _AccessPointDetailsScreenState();
}

class _AccessPointDetailsScreenState extends State<AccessPointDetailsScreen> {
  late final TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final screenWidth = context.screenWidth();
    final formKey = GlobalKey<FormState>();
    return FutureBuilder(
      builder: (BuildContext ctx, AsyncSnapshot<List<AccessPoint>> snapshot) {
        if (ConnectionState.done == snapshot.connectionState) {
          if (snapshot.data != null) {
            final groupScheduleLinks =
                snapshot.data?.firstOrNull?.groupScheduleLinks ?? [];
            return Padding(
              padding: const EdgeInsetsGeometry.all(Insets.gutter),
              child: Consumer<ManageAccessPointController>(
                builder: (context, controller, child) {
                  _controller.text = controller.numberOfSeconds.toString();
                  final accessPoint = snapshot.data!.firstOrNull;
                  controller.init(
                    accessPoint?.accessControllerId ?? '',
                    accessPoint?.entity ?? '',
                  );
                  return Form(
                    key: formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Access point : ',
                              style: theme.textTheme.labelLarge!.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              accessPoint?.name ?? '',
                              style: theme.textTheme.labelLarge,
                            ),
                            const SizedBox(width: Insets.gutter),
                            EmrFormButtons(
                              controller: controller,
                              formKey: formKey,
                              buttonText: 'Unlock Access Point',
                              successMessage:
                                  'Door unlocked for '
                                  '${controller.numberOfSeconds} seconds.',
                              onSuccessfulSave: () {},
                            ),
                            Text(' for  ', style: theme.textTheme.labelMedium),
                            SizedBox(
                              width: 70, // fits 4 digits
                              height: 50,
                              child: TextField(
                                controller: _controller,
                                keyboardType: TextInputType.number,
                                maxLength: 4,
                                decoration: const InputDecoration(
                                  counterText: '',
                                  border: OutlineInputBorder(),
                                ),
                                inputFormatters: [
                                  FilteringTextInputFormatter.digitsOnly,
                                  LengthLimitingTextInputFormatter(4),
                                ],
                                onChanged: controller.setSeconds,
                              ),
                            ),
                            Text(
                              '  seconds',
                              style: theme.textTheme.labelMedium,
                            ),
                          ],
                        ),
                        const Divider(),
                        const SizedBox(height: Insets.gutter),
                        Text('Groups', style: theme.textTheme.headlineMedium),
                        const Divider(),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: groupScheduleLinks.map((s) {
                            final userFriendlyStrings =
                                s.userFriendlyStrings ?? [];
                            return Padding(
                              padding: const EdgeInsets.only(
                                bottom: Insets.gutter,
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  // GROUP NAME
                                  SizedBox(
                                    width: screenWidth / 2,
                                    child: Text(
                                      s.adGroup.name,
                                      style: theme.textTheme.titleMedium
                                          ?.copyWith(
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                  ),
                                  const SizedBox(width: Insets.gutter),
                                  // BULLETED LIST
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,

                                      children: userFriendlyStrings
                                          .map(
                                            (item) => Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                    vertical: 2,
                                                  ),
                                              child: Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  const Text('• '),
                                                  Expanded(
                                                    child: Text(
                                                      item,
                                                      style: theme
                                                          .textTheme
                                                          .bodyMedium,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          )
                                          .toList(),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          }).toList(),
                        ),
                        const Divider(),
                        Text('Events', style: theme.textTheme.headlineMedium),
                        const Divider(),
                        Expanded(
                          child: EventsGrid(
                            events:
                                snapshot
                                    .data!
                                    .firstOrNull
                                    ?.doorAccessAttemptEvents ??
                                [],
                            isUserMode: false,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            );
          }
        }
        return processingIndicator();
      },
      future: widget.doorAccessService.accessPointsService.getAccessPoints(
        accessPointId: widget.accessPointId,
      ),
    );
  }
}
