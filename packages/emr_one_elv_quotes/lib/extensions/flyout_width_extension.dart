import 'package:emr_one_elv_core/constants.dart';
import 'package:flutter/material.dart';

extension FlyoutWidth on BuildContext {
  double elvFlyoutWidth() {
    return MediaQuery.of(this).size.width < ElvConstants.flyoutBreakPoint
        ? MediaQuery.of(this).size.width
        : ElvConstants.vehicleLookUpWidth;
  }
}
