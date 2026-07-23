import 'package:emr_account_registration/signup.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Triage extends StatelessWidget with FullExtent {
  Triage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<JourneyController>(
      context,
      listen: false,
    );
    if (controller.accountService.userInfoService
            .getPartyAccountNumber()
            .isNotEmpty &&
        controller.accountService.userInfoService.hasUserInfo) {
      if (controller.accountService.userInfoService.userInfo.isProspect) {
        context.goToAlmostDone();
      } else {
        context.goToHome();
      }
    } else {
      context.goToContactInfo();
    }

    return processingIndicator();
  }
}
