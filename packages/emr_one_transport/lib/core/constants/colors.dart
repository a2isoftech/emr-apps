import 'package:flutter/material.dart';

abstract class TransportAppColors {
  static const Color greyTextColor = Color.fromRGBO(0, 0, 0, 0.5);
  static const Color greyCardBg = Color.fromRGBO(222, 215, 218, 1);
  static const Color darkBg = Color.fromRGBO(47, 47, 47, 1);
  static const Color blueBg = Color.fromRGBO(18, 84, 137, 1);
  static const Color calypso = Color.fromARGB(255, 242, 78, 98);
  static const Color redSavina = Color(0xFFF00028);

  static Color whiteTextColor = Colors.white;
  static Color selectedDateTextColor = whiteTextColor;

  //Scheduler screen colors

  static const Color jobTypeBoxColor = Color.fromRGBO(174, 160, 170, 1);
  static const Color boxShadowColor = Color.fromRGBO(0, 0, 0, 0.16);
  static const Color warningColor = Color.fromRGBO(255, 135, 79, 1);
  static const Color selectedDateColor = Color.fromRGBO(93, 175, 15, 1);
  static const Color selectedDateBorderColor = Color.fromRGBO(132, 189, 0, 1);
  static const Color timIntervalHourDotColor = Color.fromRGBO(130, 18, 137, 1);

  static const Color emptyCellColor = Color.fromRGBO(245, 245, 245, 1);
  static Color schedulerGridLineColor = Colors.grey.shade400;
  static const Color abandonedJobCellColor = Color.fromRGBO(73, 73, 73, 1);
  static const Color abandonedJobCellColorLight = Color.fromRGBO(
    182,
    182,
    182,
    1,
  );
  static const Color jobTimelineConnectorColor = Color.fromRGBO(
    174,
    160,
    170,
    1,
  );

  static const Color vorCellColor = Color.fromRGBO(0, 0, 0, 0.3);
  static const Color vorCellStrokeColor = Color.fromRGBO(0, 0, 0, 0.1);
  static const Color yardCellColor = Color.fromRGBO(0, 0, 0, 1);
  static const Color truckCellColor = Color(0xFFC0E2F0);
  static const Color cellAcceptanceColor = Color.fromRGBO(111, 157, 206, 1);
  static const Color selectedJobBg = Color.fromRGBO(196, 73, 23, 1);

  static const Color inProgressJobColor = Color.fromRGBO(43, 157, 206, 1);
  static const Color pendingJobColor = Color.fromRGBO(1, 57, 112, 1);

  static const Color progressBarGreenFg = Color.fromRGBO(174, 215, 135, 1);
  static const Color progressBarGreenBg = Color.fromRGBO(132, 189, 0, 0.1);

  static const Color progressBarDelayFg = Color.fromRGBO(255, 205, 114, 1);
  static const Color progressBarDelayBg = Color.fromRGBO(237, 206, 44, 0.3);
  static const Color jobPastBg = Color(0xfff4c4cc);

  // Job Overview screen colors

  static const Color hoverOverCardColor = Color.fromARGB(255, 201, 241, 253);
  static const Color selectedCardColor = Color.fromARGB(255, 48, 184, 222);
  static const Color jobStatusOnCardColor = Color.fromARGB(255, 93, 65, 176);
  static const Color bottomSheetModalColor = Color.fromARGB(255, 197, 225, 247);
  static const Color errorDisplayColor = Colors.red;
  static const Color displayGreenColor = Colors.green;
  static Color containersBoxBorderColor = Colors.grey.shade200;
  static Color dividerColor = Colors.grey.shade300;

  static Color displayGreyColor = Colors.grey;
  static Color dispatherEventBgColor = Colors.amber.shade100;
  static Color driverEventBgColor = Colors.blue.shade100;
  static Color dispatherIconColor = Colors.orange.shade900;
  static Color driverIconColor = Colors.blue.shade900;
  static Color dispatherTextColor = Colors.orange;
  static Color driverTextColor = Colors.blue;
  static Color imageTextColor = Colors.lightBlue.shade900;
  static const Color expantionTileColor = Color(0xFFf7f5f6);
  static const Color delayBanner = Color(0xFFFFC14F);

  // Asset Locator Marker colors
  static Color customerMarkerColor = Colors.green.shade600;
  static Color yardMarkerColor = Colors.blue.shade400;
  static Color customerMarkerOutlineColor = Colors.green.shade800;
  static Color yardMarkerOutlineColor = Colors.blue.shade800;
  static Color customerStatBgColor = Colors.green.shade100;
  static Color yardStatBgColor = Colors.blue.shade100;

  // Map route and tracking colors
  static const Color mapRouteColor = Color.fromARGB(255, 66, 133, 244);
  static const Color markerTextBgColor = Color.fromARGB(230, 0, 0, 0); 
  static const Color polylineTooltipShadowColor = Color.fromRGBO(0, 0, 0, 0.3);

  // Tracking Modal and overlay colors
  static const Color modalBarrierColor = Color.fromARGB(127, 0, 0, 0);
  static const Color tooltipBackgroundColor = Color.fromARGB(217, 0, 0, 0);

  // Truck Tracking UI colors
  static const Color truckStoppedBgColor = Color.fromARGB(255, 255, 193, 7);
  static Color truckMovingBgColor = Colors.green.shade100;
  static Color truckStoppedStatusBgColor = Colors.red.shade100;
  static Color truckInfoCardBgColor = Colors.grey.shade100;
  static const Color shadowColor = Color.fromRGBO(0, 0, 0, 0.15);
  static const Color darkModalBarrierColor = Color.fromRGBO(0, 0, 0, 0.5);

  // Truck marker outline colors (darker shades of control panel stat bg colors)
  static Color truckMovingMarkerOutlineColor = Colors.blue.shade800;
  static Color truckStoppedMarkerOutlineColor = Colors.orange.shade800;

  // Job path visualization colors
  static const Color jobStartMarkerColor = Color.fromARGB(255, 76, 175, 80);
  static const Color jobEndMarkerColor = Color.fromARGB(255, 244, 67, 54);
  static Color jobStartMarkerOutlineColor = Colors.green.shade800;
  static Color jobEndMarkerOutlineColor = Colors.red.shade800;
  static Color jobPathDefaultColor = Colors.blue.shade600;
  static Color selectedJobHighlightBgColor = Colors.blue.shade50;

  // Map marker label colors
  static const Color labelPillBackgroundColor = Color(0xCC000000);

  // Custom Info Window colors
  static const Color infoWindowBackgroundColor = Colors.white;
  static const Color infoWindowTextColor = Color(0xDD000000); // Colors.black87
  static const Color infoWindowShadowColor = Color.fromRGBO(0, 0, 0, 0.2);
  static const Color infoWindowArrowShadowColor = Color.fromRGBO(0, 0, 0, 0.1);
  static Color infoWindowCloseIconColor = Colors.grey.shade600;

  /// Predefined job path colors for visual distinction between jobs
  static const List<Color> jobPathColors = [
    Color.fromARGB(255, 66, 133, 244),  // Blue
    Color.fromARGB(255, 156, 39, 176),  // Purple
    Color.fromARGB(255, 0, 150, 136),   // Teal
    Color.fromARGB(255, 255, 152, 0),   // Orange
    Color.fromARGB(255, 233, 30, 99),   // Pink
    Color.fromARGB(255, 139, 195, 74),  // Light Green
    Color.fromARGB(255, 121, 85, 72),   // Brown
    Color.fromARGB(255, 0, 188, 212),   // Cyan
  ];
}
