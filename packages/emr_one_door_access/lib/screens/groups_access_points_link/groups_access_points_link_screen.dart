import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_door_access/emr_one_door_access.dart';
import 'package:emr_one_door_access/routing/door_access_route_registry.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

class GroupsAccessPointsLinkScreen extends StatelessWidget {
  const GroupsAccessPointsLinkScreen({
    required this.controller,
    required this.doorAccessService,
    required this.formKey,
    this.groupId,
    this.accessPointId,
    this.isInPopup = false,
    super.key,
  });

  final GroupsAccessPointsLinkController controller;
  final GlobalKey<FormState> formKey;
  final String? groupId;
  final String? accessPointId;
  final bool? isInPopup;
  final DoorAccessService doorAccessService;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      builder:
          (
            BuildContext ctx,
            AsyncSnapshot<(List<AccessController>, List<AdGroup>)> snapshot,
          ) {
            if (ConnectionState.done == snapshot.connectionState) {
              if (snapshot.data != null) {
                return Padding(
                  padding: const EdgeInsetsGeometry.all(Insets.gutter),
                  child:
                      ChangeNotifierProvider<
                        GroupsAccessPointsLinkController
                      >.value(
                        value: controller,
                        child: Consumer<GroupsAccessPointsLinkController>(
                          builder: (context, controller, child) {
                            controller.init(
                              snapshot.data!.$1,
                              snapshot.data!.$2,
                              groupId,
                              accessPointId,
                            );
                            return Form(
                              key: formKey,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  EmrPickerFormField(
                                    labelText: 'Access Point',
                                    items: (query) async {
                                      return Future.value(
                                        controller.accessPoints,
                                      );
                                    },
                                    itemTitleText: (item) => item.value,
                                    binding: controller.data.accessPointId,
                                    validator: Validators.required,
                                  ),

                                  EmrPickerFormField(
                                    labelText: 'Group',
                                    items: controller.groups,
                                    itemTitleText: (item) => item.value,
                                    binding: controller.data.groupId,
                                    validator: Validators.required,
                                  ),

                                  ValueListenableBuilder(
                                    valueListenable:
                                        controller.data.accessPointId,
                                    builder: (context, apId, _) {
                                      return EmrMultiPickerFormField(
                                        labelText: 'Schedule',
                                        items: (query) async {
                                          return Future.value(
                                            controller.getSchedules(apId),
                                          );
                                        },
                                        itemTitleText: (item) => item.value,
                                        binding: controller.data.schedules,
                                        validator: Validators.required,
                                      );
                                    },
                                  ),

                                  if (!(isInPopup ?? false)) ...{
                                    EmrFormButtons(
                                      controller: controller,
                                      formKey: formKey,
                                      onSuccessfulSave: () {
                                        context.goNamed(
                                          DoorAccessRouteRegistry.routeSites,
                                        );
                                      },
                                    ),
                                  },
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                );
              }
            }
            return processingIndicator();
          },
      future: GroupsAccessPointsLinkController.load(doorAccessService),
    );
  }
}
