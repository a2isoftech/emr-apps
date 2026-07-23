import 'package:emr_flutter_theme/emr_flutter_theme.dart';
import 'package:emr_one_inform/constants/colors.dart';
import 'package:flutter/material.dart';

abstract class FormAppDecorations {
  static BoxDecoration get dropdownButton => BoxDecoration(
        border: Border.all(color: EmrColours.secondaryCyan),
        borderRadius: BorderRadius.circular(5),
      );

  static InputDecoration dropdownButtonDecoration(BuildContext context) =>
      InputDecoration(
        border: const OutlineInputBorder(),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: EmrColours.secondaryCyan),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Theme.of(context).dividerColor,
          ),
        ),
      );

  static BoxDecoration get dropdownShimmerButton => BoxDecoration(
        border: Border.all(color: FormAppColors.lightGrey),
        borderRadius: BorderRadius.circular(5),
        color: FormAppColors.lighterGrey,
      );

  static InputDecoration get dropdownDecoration => const InputDecoration(
        border: OutlineInputBorder(),
        contentPadding: EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 4,
        ),
      );

  static ButtonStyle get jobContinueButtonStyle => ElevatedButton.styleFrom(
        minimumSize: const Size(110, 30),
        backgroundColor: FormAppColors.inProgress,
      );

  static ButtonStyle get jobContinueButtonDisabledStyle =>
      ElevatedButton.styleFrom(
        minimumSize: const Size(110, 30),
        backgroundColor: FormAppColors.lightGrey,
      );

  static ButtonStyle get jobStartButtonStyle => ElevatedButton.styleFrom(
        minimumSize: const Size(110, 30),
        backgroundColor: EmrColours.primaryGreen,
      );

  static ButtonStyle get submitButtonStyle => ElevatedButton.styleFrom(
        backgroundColor: EmrColours.primaryGreen,
      );

  static OutlineInputBorder get textfieldBorder => OutlineInputBorder(
        borderRadius: BorderRadius.circular(5),
        borderSide: const BorderSide(color: EmrColours.secondaryCyan),
      );

  static RoundedRectangleBorder get checkboxTileBorder =>
      const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(5)),
        side: BorderSide(color: EmrColours.secondaryCyan),
      );
}

abstract class FormAppIcons {
  static Icon get calendarIcon => const Icon(
        Icons.calendar_today_rounded,
        size: 16,
      );

  static Icon get removeIcon => const Icon(
        Icons.remove_circle_outline_outlined,
        size: 16,
      );

  static Icon get dropdownList => const Icon(Icons.arrow_drop_down);

  static Icon get formOverDue =>
      Icon(Icons.warning_outlined, color: FormAppColors.error);

  static Icon get noResults =>
      const Icon(Icons.search_off, color: EmrColours.secondaryGrey, size: 65);

  static Icon get noInternetConnection =>
      Icon(Icons.signal_wifi_bad_rounded, color: FormAppColors.error, size: 65);

  static Icon get searchCalendarIcon => Icon(
        Icons.calendar_today_rounded,
        color: FormAppColors.lightGrey,
        size: 32,
      );

  static Icon get snackBarIcon => Icon(
        Icons.done_outline_rounded,
        color: FormAppColors.white,
        size: 20,
      );

  static Icon get snackBarErrorIcon => Icon(
        Icons.error_outline_outlined,
        color: FormAppColors.white,
        size: 20,
      );

  static Icon get snackBarInformationIcon => Icon(
        Icons.info_outline_rounded,
        color: FormAppColors.white,
        size: 20,
      );

  static Icon get mediaCameraIcon =>
      const Icon(Icons.camera_alt_rounded, size: 28);

  static Icon get hasMediaCameraIcon =>
      Icon(Icons.camera_alt_rounded, color: FormAppColors.success, size: 28);

  static Icon get internetConnected =>
      Icon(Icons.signal_wifi_statusbar_4_bar, color: FormAppColors.success);

  static Icon get internetDisconnected => Icon(
        Icons.signal_wifi_connected_no_internet_4,
        color: FormAppColors.error,
      );
}

abstract class FormAppTextStyles {
  static TextStyle get pageTitleStyle => const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w700,
      );

  static TextStyle get pageErrorSubTitleStyle => TextStyle(
        color: FormAppColors.error,
        fontSize: 16,
        fontWeight: FontWeight.w400,
      );

  static TextStyle get listviewTitleTextColor => const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w600,
      );

  static TextStyle get titleTextColor => const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w700,
      );

  static TextStyle get mediaTexts => const TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.normal,
      );

  static TextStyle get hasMediaTexts => TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.normal,
        color: FormAppColors.success,
      );
}
