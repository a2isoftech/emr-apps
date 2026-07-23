import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_inform/constants/constants_export.dart';
import 'package:emr_one_inform/screens/view_work_request/view_work_request_common.dart';
import 'package:flutter/material.dart';

class ViewWorkRequestWeb extends ViewWorkRequestCommon {
  ViewWorkRequestWeb({
    super.key,
    super.startDate,
    super.endDate,
    super.assetCode,
  });

  @override
  PreferredSizeWidget? getAppBar(BuildContext context) => null;

  @override
  List<Widget> getActions(BuildContext context) {
    return [
      IconButton(
        onPressed: onRefresh,
        icon: Icon(Icons.refresh, color: FormAppColors.white),
      ),
      ...super.getActions(context),
    ];
  }

  @override
  Widget? getActionButton(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () => context.pushNamed(FormsRoutingName.mediaSearch),
      icon: const Icon(Icons.perm_media_outlined),
      label: Text(context.l10n.mediaLookup),
    );
  }
}
