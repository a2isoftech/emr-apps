import 'package:emr_one_core/widgets/layouts/query_layout/emr_action.dart';
import 'package:emr_one_door_access/widgets/refresh_intent.dart';
import 'package:flutter/material.dart';

/// A grid action which manually re-fetches data, for use next to an "Add
/// New" action on screens where a newly-created record may not immediately
/// appear via the automatic post-save refresh (e.g. due to backend
/// read-after-write lag).
class RefreshAction extends EmrAction<RefreshIntent> {
  RefreshAction({required this.onRefresh})
    : super(
        createIntent: (context) => const RefreshIntent(),
        label: 'Refresh',
        icon: Icons.refresh,
        isPrimary: true,
      );

  final Future<void> Function() onRefresh;

  @override
  Object? invoke(covariant RefreshIntent intent, [BuildContext? context]) {
    onRefresh();
    return null;
  }
}
