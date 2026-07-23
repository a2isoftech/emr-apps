import 'package:emr_account_registration/signup.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_portal/portal.dart';
import 'package:flutter/material.dart';

class RetailPortalWidget extends StatelessWidget with FullExtent {
  RetailPortalWidget({
    required this.userInfo,
    required this.model,
    super.key,
  });

  final HomePageModel model;
  final AccountUserInfo userInfo;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        EmrPortalCard(
          model: model,
          userInfo: userInfo,
        ),
        verticalSpacer(),
        verticalSpacer(),
        HomePageButtons(
          model: model,
        ),
      ],
    );
  }
}
