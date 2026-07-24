import 'package:emr_one_core/eo_constants.dart';
import 'package:emr_one_core/extensions/build_context_extensions.dart';
import 'package:emr_one_core/widgets/layouts/query_layout/emr_action.dart';
import 'package:emr_one_door_access/emr_one_door_access.dart';
import 'package:emr_one_door_access/routing/door_access_route_registry.dart';
import 'package:flutter/material.dart';

class AddNewFloorPlanAction extends EmrAction<AddNewFloorPlanIntent> {
  AddNewFloorPlanAction({
    required this.controller,
    required this.siteId,
    required this.onSuccessfulSave,
    required super.createIntent,
    super.icon = Icons.add,
    super.label = 'New Floor Plan',
    super.controlType = EmrActionControlType.button,
    super.isPrimary = true,
    bool enabled = true,
  }) {
    super.actionEnabled.value = enabled;
  }

  final FloorPlanController controller;
  final void Function() onSuccessfulSave;
  final String siteId;

  @override
  Object? invoke(
    covariant AddNewFloorPlanIntent intent, [
    BuildContext? context,
  ]) {
    openModal(
      controller,
      intent.context,
      siteId,
      onSuccessfulSave,
      isInEditMode: true,
    );
    return null;
  }

  static Future<void> openModal(
    FloorPlanController controller,
    BuildContext context,
    String siteId,
    void Function() onSuccessfulSave, {
    required bool isInEditMode,
    FloorPlan? floorPlan,
  }) async {
    final (isPhone, isNotDesktop) = context.getScreenFacts();

    if (isPhone || isNotDesktop) {
      await showDialog<void>(
        context: context,
        builder: (contextBuilder) {
          return Padding(
            padding: const EdgeInsetsGeometry.all(Insets.gutter * 2),
            child: Flex(
              direction: Axis.vertical,
              children: [
                FloorPlanEditorMobile(
                  controller: controller,
                  floorPlan: floorPlan,
                ),
                ElevatedButton(
                  child: const Text('Close'),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          );
        },
      );
    } else {
      final saved = await context.pushNamed<bool>(
        DoorAccessRouteRegistry.routeFloorPlanEditor,
        params: {'siteId': siteId},
        queryParams: {'mode': isInEditMode ? 'edit' : 'view'},
        extra: floorPlan,
      );

      if (saved ?? false) {
        onSuccessfulSave();
      }
    }
  }
}
