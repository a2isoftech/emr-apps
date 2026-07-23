import 'package:emr_one_inform/screens/job_page/job_page_common.dart';
import 'package:flutter/material.dart';

class JobPageNative extends JobPageCommon {
  JobPageNative({
    required super.scheduledItemId,
    required super.isPreview,
    required super.isDigitalSignatureRequired,
    required super.isAppBarRequired,
    required super.emailsToNotify,
    super.instanceId,
    super.templateId,
    super.jobData,
    super.key,
  });

  @override
  Widget? pageHeader(BuildContext context) => null;
}
