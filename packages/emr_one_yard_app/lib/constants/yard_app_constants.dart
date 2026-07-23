import 'dart:ui';

class YardAppPaths {
  static const String yardAppRootPath = '/site-ops';
  static const String ticketListPath = '/ticket-list';
  static const String ticketDetailsPath = '/ticket-details/:id';
  static const String ticketGalleryPath = '/ticket-gallery';
  static const String yardAppImageEditorPath = '/edit-image';
  static const String loadOutListPath = '/load-out';
  static const String loadOutDetailsPath = '/load-out-details';
  static const String loadOutPreChecksPath = '/load-out-prechecks';
  static const String locationListPath = '/locations';
  static const String locationDetailsPath = '/location-details/:id';
  static const String discrepantDetailsPath = '/discrepant-details';
  static const String loadOutImagesPath = '/load-out-images';
  static const String loadOutPostChecksPath = '/load-out-postchecks';
}

class YardAppNamedRoutes {
  static const String yardApp = 'siteOps';
  static const String yardAppTicketList = 'siteOpsTicketList';
  static const String yardAppLoadOutList = 'siteOpsLoadOutList';
  static const String yardAppLoadOutDetails = 'siteOpsLoadOutDetails';
  static const String yardAppTicketDetails = 'siteOpsTicketDetails';
  static const String yardAppImageEditor = 'siteOpsImageEditor';
  static const String yardAppLocationDetails = 'siteOpsLocationDetails';
  static const String yardAppLocationList = 'siteOpsLocations';
  static const String yardAppdiscrepantDetails = 'siteOpsDiscrepantDetails';
  static const String yardAppLoadPreChecks = 'siteOpsLoadOutPreChecks';
  static const String yardAppLoadOutImages = 'siteOpsLoadOutImages';
  static const String yardAppLoadPostChecks = 'siteOpsLoadOutPostChecks';
  static const String yardAppTicketgallery = 'siteOpsTicketGallery';
}

class YardAppPermissions {
//Permissions
  static const String viewYardApp = 'permissions/siteops/view';
  static const String viewTickets = 'permissions/siteops/viewTickets';
  static const String viewLoadOuts = 'permissions/siteops/viewLoadOuts';
}

class YardAppConstants {
  static const String yardAppSection = 'Site Ops';

  static const int pageSize = 20;

  static const String packageName = 'emr_one_yard_app';

  static const String photoExtension = 'jpg';
  static const String videoExtension = 'mp4';

  static const String unknownError = 'Unknown error occurred';
}

class LayoutConstants {
  static const double appSearchBarHeight = 70;
  static const double iconSizeSmall = 30;
  static const double iconSizeBig = 40;
  static const double iconSizeLarge = 60;
  static const double thumbnailSize = 95;
}

class OppraBrandColors {
  static const triCornBlack = Color(0xFF2F2F2F);
  static const plasticPines = Color(0xFF5DAF0F);
  static const redSavinaPepper = Color(0xFFF00028);
}
