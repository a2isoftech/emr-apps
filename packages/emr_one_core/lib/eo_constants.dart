import 'package:emr_one_core/utilities/adaptive_breakpoints.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Insets {
  static const double gutter = 16;
}

class EmrOneConstants {
  static const double drawerWidth = 250;
  static const double sharedScaffoldElevation = 2;
  static const double welcomeGraphicWidth = 500;
  static const double kBreadcrumbContainerHeight = 64;
  static const String appName = 'EMR Apps';
  static const AdaptiveWindowType appDefaultSmallSizeBreakpoint =
      AdaptiveWindowType.small;
  static const AdaptiveWindowType appDefaultSizeBreakpoint =
      AdaptiveWindowType.medium;
  static const AdaptiveWindowType appDefaultLargeSizeBreakpoint =
      AdaptiveWindowType.large;
  static const double kBreakPointContractsToMedium = 1200;
  static const double kBreakPointContractsToLarge = 1550;
  static const double kBreakPointStepper = 600;
  static const double partyTabsHeaderScrollWidth = 950;
  static const double kRadioBoxBreakPointSmall = 500;
  static const double kRadioBoxBreakPointMedium = 780;
  static const double kRadioBoxBreakPointLarge = 1300;
  static const double kDefaultFacetsPanelWidth = 320;
  static const int kBreadcrumbAutoScrollDuration = 500;
  static const int kOmniSearchExpandDuration = 300;
  static const double kOmniSearchDefaultWidth = 200;
  static const double kOmniSearchMaxExpansionWidth = 500;
  static const double kOmniSearchExpansionPadding = 110;
  static TextStyle kBannerTextStyle = GoogleFonts.openSans().copyWith(
    fontWeight: FontWeight.bold,
    fontSize: 10,
    color: Colors.white,
  );
  static TextStyle kLargeHeadingTextStyle = const TextStyle(
    fontFamily: 'QanelasSoft',
    fontSize: 28,
    fontWeight: FontWeight.bold,
    package: 'emr_one_core',
  );
  static TextStyle kMediumHeadingTextStyle = const TextStyle(
    fontFamily: 'QanelasSoft',
    fontSize: 24,
    fontWeight: FontWeight.bold,
    package: 'emr_one_core',
  );
  static TextStyle kSmallHeadingTextStyle = const TextStyle(
    fontFamily: 'QanelasSoft',
    fontSize: 20,
    fontWeight: FontWeight.bold,
    package: 'emr_one_core',
  );
  static TextStyle kSmallestHeadingTextStyle = const TextStyle(
    fontFamily: 'QanelasSoft',
    fontSize: 18,
    fontWeight: FontWeight.bold,
    package: 'emr_one_core',
  );
  static TextStyle kTinyHeadingTextStyle = const TextStyle(
    fontFamily: 'QanelasSoft',
    fontSize: 14,
    fontWeight: FontWeight.bold,
    package: 'emr_one_core',
  );

  static TextStyle kSmallTextStyle = GoogleFonts.openSans().copyWith(
    fontSize: 20,
  );
  static TextStyle kSmallestTextStyle = GoogleFonts.openSans().copyWith(
    fontSize: 18,
  );
  static TextStyle kTinyTextStyle = GoogleFonts.openSans().copyWith(
    fontSize: 14,
  );

  static TextStyle kSmallSubtleTextStyle = GoogleFonts.openSans().copyWith(
    color: Colors.grey,
  );
  static TextStyle kSmallBreadcrumbTextStyleLegacy = GoogleFonts.openSans()
      .copyWith(fontSize: 16, fontWeight: FontWeight.bold);
  static TextStyle kSmallBreadcrumbTextStyle = GoogleFonts.openSans().copyWith(
    fontSize: 14,
    fontWeight: FontWeight.bold,
  );
  static TextStyle kSmallBreadcrumbTextSeparatorStyle = GoogleFonts.openSans()
      .copyWith(fontSize: 12, fontWeight: FontWeight.bold);
  static const Color lightThemeBorderColour = Color.fromARGB(
    255,
    188,
    188,
    188,
  );

  static TextStyle kOpenSans30TextStyle = GoogleFonts.openSans().copyWith(
    fontSize: 30,
  );

  static TextStyle kOpenSans18TextStyle = GoogleFonts.openSans().copyWith(
    fontSize: 18,
  );
  static TextStyle kOpenSans18BoldTextStyle = kOpenSans18TextStyle.copyWith(
    fontWeight: FontWeight.bold,
  );

  static TextStyle kOpenSans16TextStyle = GoogleFonts.openSans().copyWith(
    fontSize: 16,
  );
  static TextStyle kOpenSans16BoldTextStyle = kOpenSans16TextStyle.copyWith(
    fontWeight: FontWeight.bold,
  );

  static TextStyle kOpenSans12TextStyle = GoogleFonts.openSans().copyWith(
    fontSize: 12,
  );
  static TextStyle kOpenSans12SemiBoldTextStyle = kOpenSans12TextStyle.copyWith(
    fontWeight: FontWeight.w500,
  );
  static TextStyle kOpenSans12BoldTextStyle = kOpenSans12TextStyle.copyWith(
    fontWeight: FontWeight.bold,
  );

  static TextStyle kOpenSans9TextStyle = GoogleFonts.openSans().copyWith(
    fontSize: 9,
  );

  static Color darkThemeBorderColour = const Color.fromARGB(255, 231, 224, 224);
  static const double kUserInfoDesktopOffsetX = 56;
  static const double kUserInfoDesktopOffsetY = 62;
  static const double kUserInfoDesktopWidth = 300;
  static const double kUserInfoDesktopElevation = 12;

  static double kStepperStatusButtonVertPadding = 8;
  static double kStepperStatusButtonHorzPadding = 16;

  static const double mediaButtonWidth = 32;
  static const Color mediaButtonColour = Colors.lightBlue;
  static const Color mediaButtonIconColour = Colors.white;

  static List<Color> brandColours = [const Color(0xFFC44917)];
}

class EmrOneCoreTelemetry {
  static const String kUnknown = '<unknown>';
  static const String kTypeParamName = 'type';
  static const String kSuccessParamName = 'success';
  static const String kTypeDefault = 'uiAction';
  static const String kTypeResult = 'uiResult';
  static const String kNavigate = 'coreNavigate';
  static const String kBreadcrumb = 'coreBreadcrumb';
  static const String kCommonPartySearch = 'partySearch';
  static const String kThemeChange = 'themeChange';
  static const String kSignOut = 'signOut';
  static const String kMenuStyleChange = 'menuStyle';
  static const String kLocate = 'coreLocate';
}

class EmrOneFFExperiments {
  static const String kCreateFixedContract = 'createFixedContract';
  static const String kUseNewPickersWeb = 'useNewPickersWeb';
  static const String kShowBreadcrumb = 'showBreadcrumb';
  static const String kUseOldTheme = 'useOldTheme';
}

class AppIds {
  static const String kEONative = 'eonative';
  static const String kEOWeb = 'eoweb';
  static const String kPortalWeb = 'portalweb';
}

class EmrOneCoreLogging {
  static const String kTextFileLogger = 'textFileLogger';
  static const String kConsoleLogger = 'consoleLogger';
  static const String kAppInsightsEventLogger = 'appInsightsEventLogger';
  static const String kAppInsightsTelemetryLogger =
      'appInsightsTelemetryLogger';
}

class EmrOneAudioPaths {
  static const String beep = 'packages/emr_one_core/assets/sounds/beep.mp3';
}

enum DialogMode { auto, compact, fullScreen }

class OppraColours {
  static const plasticPines = Color(0xFF5DAF0F);
  static const redSavinaPepper = Color(0xFFF00028);
  static const naranjaCaqui = Color(0xFFFF874F);
  static const calipso = Color(0xFF2B9DCE);
}
