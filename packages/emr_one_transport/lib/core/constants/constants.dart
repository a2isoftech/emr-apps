import 'package:intl/intl.dart';

class Constants {
  static DateFormat dateFormat = DateFormat('yyyy-MM-dd');
  static DateFormat monthDayFormat = DateFormat('MMM d, h:mm a');
  static DateFormat timeFormat = DateFormat('h:mm a');

  static const double iconSizeXS = 10;
  static const double iconSizeS = 16;
  static const double iconSizeSM = 18;
  static const double iconSizeM = 20;
  static const double iconSizeML = 26;
  static const double iconSizeL = 30;

  static const double fontSizeXS = 8;
  static const double fontSizeS = 10;
  static const double fontSizeM = 12;
  static const double fontSizeL = 14;
  static const double fontSizeXL = 16;
  static const double fontSizeXXL = 20;

  //Internal Scheduler grid
  static const double schedulerCellWidth = 33;
  static const double schedulerCellHeight = 40;
  static const double schedulerTruckColumnWidth = 130;
  static const double progressBarHeight = 5;
  static const double groupJobLinkHeight = 15;
  static const double yardCellHeight = 40;
  static const double timeLineCellHeight = 30;
  static const double opacityOfJobCellsWhileDragging = 0.2;

  static const int schedulerTotalColumns =
      97; //noOfslots in one hour * 24hrs + 1 vrm column

  //Third party scheduler grid
  static const double thirdPartySummaryCellWidth = 380;
  static const double thirdPartySummaryCellHeight = 60;

  static const int maxContainersAllowed = 9;

  // Info Window positioning constants
  static const double infoWindowWidth = 220;
  static const double infoWindowArrowHeight = 10;
  static const double infoWindowPadding = 8;
  static const double infoWindowDefaultHeight = 200;
  static const double infoWindowGapBetweenWindowAndMarker = 0;

  static const int truckTrackingMaxDateRangeDays = 7;

  // Truck Locator time constraints
  static const int truckDefaultDateRangeMinutes = 30;
  static const int jobsDefaultDateRangeHours = 24;
  static const int autoRefreshIntervalSeconds = 6;

  // Map Configuration
  static const double defaultMapLatitude = 54.26035979618083;
  static const double defaultMapLongitude = -1.9159850589894533;
  static const double defaultContainerMapZoom = 12;
  static const double defaultTruckMapZoom = 14;

  // Map Marker Label
  static const int defaultMarkerLabelTrimLength = 6;
}
