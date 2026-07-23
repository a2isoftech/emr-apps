import 'package:emr_one_core/extensions/build_context_extensions.dart';
import 'package:emr_one_core/widgets/layouts/query_layout/emr_action.dart';
import 'package:emr_one_door_access/emr_one_door_access.dart';
import 'package:emr_one_door_access/routing/door_access_route_registry.dart';
import 'package:flutter/material.dart';

class AddNewScheduleAction extends EmrAction<AddNewScheduleIntent> {
  AddNewScheduleAction({
    required this.siteId,
    required this.accessControllerId,
    required super.createIntent,
    super.icon = Icons.add,
    super.label = 'New Schedule',
    super.controlType = EmrActionControlType.button,
    super.isPrimary = true,
    bool enabled = true,
  }) {
    super.actionEnabled.value = enabled;
  }

  final String siteId;
  final String accessControllerId;

  @override
  Object? invoke(
    covariant AddNewScheduleIntent intent, [
    BuildContext? context,
  ]) {
    context?.goNamed(
      DoorAccessRouteRegistry.routeAddSchedule,
      params: {'siteId': siteId, 'accessControllerId': accessControllerId},
    );
    return null;
  }
}
