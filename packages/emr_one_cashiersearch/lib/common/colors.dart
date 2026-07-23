import 'package:emr_flutter_theme/emr_flutter_theme.dart';
import 'package:emr_one_theme/emr_one_theme.dart';
import 'package:flutter/material.dart';

abstract class CashierSearchColors {
  static Color get green => _green;
  static Color get successBackground => _successBackground;
  static Color get disabledBackground => _disabledBackground;
  static Color get white => _white;
  static Color get red => _red;
  static Color get black => _black;
  static Color get badgeColor => _badgeColor;
  static Color get disabledButton => _disabledButton;
  static Color get cardBackground => _cardBackground;
  static Color get borderColor => _borderColor;
  static Color get background => _background;
  static Color get foreground => _foreground;
  static Color get plasticPines => _plasticPines;
  static Color get pearlPebble => _pearlPebble;
  static const Color primaryColor = Color(0xff4C85E0);
  static const Color secondaryColor = Color(0xffFFDA60);

  static void initialize(BuildContext context) {
    _disabledBackground = Theme.of(context).colorScheme.onSurface.withAlpha(50);
    _successBackground = const Color.fromRGBO(
      132,
      189,
      0,
      .16,
    );
    _badgeColor = const Color.fromRGBO(
      132,
      189,
      0,
      1,
    );
    _disabledButton = Theme.of(context).brightness == Brightness.dark
        ? EmrColours.secondaryGrey
        : const Color.fromARGB(
            255,
            237,
            238,
            234,
          );
    _cardBackground = Theme.of(context).brightness == Brightness.dark
        ? EmrColours.secondaryGrey
        : Colors.grey.shade200;
    _green = EmrColours.primaryGreen;
    _white = EmrColours.primaryWhite;
    _red = EmrColours.secondaryRed;
    _borderColor = Colors.grey.shade400;

    _background = Theme.of(context).brightness == Brightness.dark
        ? EmrColours.secondaryGrey
        : Theme.of(context).extension<EOBrandTheme>()!.onCtaColour!;
    _foreground = Theme.of(context).brightness == Brightness.light
        ? EmrColours.secondaryGrey
        : Theme.of(context).extension<EOBrandTheme>()!.onCtaColour!;

    _pearlPebble = Theme.of(context).brightness == Brightness.light
        ? _pearlPebbleLight
        : _pearlPebbleDark;
  }

  static const Color _black = EmrColours.secondaryGrey;
  static Color _white = EmrColours.secondaryGrey;
  static Color _red = EmrColours.secondaryGrey;
  static Color _successBackground = EmrColours.secondaryGrey;
  static Color _badgeColor = EmrColours.secondaryGrey;
  static Color _disabledBackground = EmrColours.secondaryGrey;
  static Color _green = EmrColours.secondaryGrey;
  static Color _background = EmrColours.secondaryGrey;
  static Color _foreground = EmrColours.secondaryGrey;
  static Color _disabledButton = EmrColours.secondaryGrey;
  static Color _cardBackground = EmrColours.secondaryGrey;
  static Color _borderColor = EmrColours.secondaryGrey;
  static late Color _pearlPebble;

  static const Color _plasticPines = Color.fromRGBO(93, 175, 15, 1);
  static const Color _pearlPebbleLight = Color.fromRGBO(222, 215, 218, 1);
  static const Color _pearlPebbleDark = Color.fromRGBO(83, 69, 75, 1);
}
