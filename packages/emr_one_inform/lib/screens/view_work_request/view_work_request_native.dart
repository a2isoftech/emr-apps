import 'package:emr_one_inform/screens/view_work_request/view_work_request_common.dart';
import 'package:flutter/material.dart';

class ViewWorkRequestNative extends ViewWorkRequestCommon {
  ViewWorkRequestNative({
    super.key,
    super.startDate,
    super.endDate,
    super.assetCode,
  });

  @override
  Widget? pageHeader(BuildContext context) => null;
}
