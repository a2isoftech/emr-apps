import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class InspectionUtility {
  static bool isSmallScreen(BuildContext context) {
    final shortestSide = MediaQuery.of(context).size.shortestSide;
    return !kIsWeb && shortestSide < 600;
  }
}
