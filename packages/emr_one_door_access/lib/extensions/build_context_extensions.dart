import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';

extension BuildContextExtensions on BuildContext {
  double screenWidth() => MediaQuery.of(this).size.width;
  double screenHeight() => MediaQuery.of(this).size.height;

  double qrCodeHeight() =>
      (screenWidth() < screenHeight() ? screenWidth() : screenHeight()) -
      Insets.gutter;

  (bool, bool) getScreenFacts() {
    final windowType = getWindowType(this);
    final isPhone = windowType < EmrOneConstants.appDefaultSizeBreakpoint;
    final isNotDesktop =
        windowType < EmrOneConstants.appDefaultLargeSizeBreakpoint;
    return (isPhone, isNotDesktop);
  }

  bool isInPortraitMode() => screenHeight() > screenWidth();
}
