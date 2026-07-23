import 'package:emr_one_elv_core/constants.dart';
import 'package:flutter/material.dart';

class SmallScreenCheck {
  bool isSmallScreen(BuildContext context) =>
      MediaQuery.of(context).size.width < ElvConstants.smallScreenBreakpoint;
}
