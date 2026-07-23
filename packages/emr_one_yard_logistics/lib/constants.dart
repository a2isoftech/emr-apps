import 'package:emr_one_core/widgets/chips/emr_status_chip.dart';
import 'package:flutter/material.dart';

class YlConstants {
  static const warningIcon = Icon(
    Icons.error,
    color: EmrStatusChip.warningColor,
  );

  static const verifiedIcon = Icons.check_circle_outline;
  static const verifiedIconColour = Colors.green;

  static const questionIcon = Icons.help_outline;
  static const questionIconColour = Colors.blue;

  static const disabledIcon = Icons.block;
  static const disabledIconColour = Colors.grey;

  static const int gridCrossAxisCount = 3;
  static const double gridAspectRatio = 1.2;

  static const double imageSpinnerSize = 32;

  static const int imageLoadAnimDurationMs = 500;

  static const double cardRadius = 8;

  static ButtonStyle get calStyle =>
      ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));

  static const lotCardWidth = 300.0;
  static const lotCardHeight = 450.0;
  static const lotCardAspectRatio = 12.5 / 9.0;
  static const lotCardPhotoRightMargin = 64.0;
  static const lotCardBaseHeight = 206.0;
  static const lotCardStatusIconLeftMargin = 232.0;
  static const lotCardStatusIconBottomMargin = 10.0;

  static const epLotOuterCasing = 'ExtendedProperties/OuterCasing';
  static const epLotInnerComposition = 'ExtendedProperties/InnerComposition';
  static const epLotOuterDiameter = 'ExtendedProperties/OuterDiameter';
  static const epLotCircumference = 'ExtendedProperties/Circumference';
  static const epLotDryCopperPercentage =
      'ExtendedProperties/DryCopperPercentage';
  static const epLotLeadPercentage = 'ExtendedProperties/LeadPercentage';
  static const epLotAluminiumPercentage =
      'ExtendedProperties/AluminiumPercentage';
  static const epLotGreasyCopperPercentage =
      'ExtendedProperties/GreasyCopperPercentage';

  static const lotDryCopperPercentage = 'Dry Copper';
  static const lotLeadPercentage = 'Lead';
  static const lotGreasyCopperPercentage = 'Greasy Copper';
  static const lotAluminiumPercentage = 'Aluminium';

  static const String viewYardLogisticsPermission = 'viewYardLogistics';

  static const String percentageWord = 'percentage';

  static const String jointsCodeInitials = 'TAQJT';

  static const String noInner = 'NO_INNER';
}
