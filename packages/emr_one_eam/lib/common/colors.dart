import 'package:emr_flutter_theme/emr_flutter_theme.dart';
import 'package:emr_one_theme/emr_one_theme.dart';
import 'package:flutter/material.dart';

abstract class EamAppColors {
  static Brightness? _initializedForTheme;

  static Color get black => _black;
  static Color get lightGrey => _lightGrey;
  static Color get lighterGrey => _lighterGrey;
  static Color get white => _white;
  static Color get error => _error;
  static Color get success => _success;
  static Color get inProgress => _inProgress;
  static Color get information => _information;
  static Color get primaryBlue => _primaryBlue;
  static Color get background => _background;
  static Color get foreground => _foreground;

  static void initialize(BuildContext context) {
    if (_initializedForTheme == Theme.of(context).brightness) return;

    _lightGrey = const Color.fromRGBO(178, 178, 178, 1);
    _lighterGrey = const Color.fromRGBO(247, 247, 247, 1);
    _error = const Color.fromRGBO(186, 12, 47, 1);

    _inProgress = EmrColours.secondaryYellow;
    _information = EmrColours.secondaryCyan;
    _black = EmrColours.secondaryGrey;

    _white = Theme.of(context).extension<EOBrandTheme>()!.onBrandColour!;
    _success = Theme.of(context).extension<EOBrandTheme>()!.ctaColour!;
    _primaryBlue = Theme.of(context).extension<EOBrandTheme>()!.brandColour!;

    _background = Theme.of(context).brightness == Brightness.dark
        ? EmrColours.secondaryGrey
        : Theme.of(context).extension<EOBrandTheme>()!.onCtaColour!;
    _foreground = Theme.of(context).brightness == Brightness.light
        ? EmrColours.secondaryGrey
        : Theme.of(context).extension<EOBrandTheme>()!.onCtaColour!;

    _initializedForTheme = Theme.of(context).brightness;
  }

  static Color _black = EmrColours.secondaryGrey;
  static Color _lightGrey = EmrColours.secondaryGrey;
  static Color _lighterGrey = EmrColours.secondaryGrey;
  static Color _white = EmrColours.secondaryGrey;
  static Color _error = EmrColours.secondaryGrey;
  static Color _success = EmrColours.secondaryGrey;
  static Color _inProgress = EmrColours.secondaryGrey;
  static Color _information = EmrColours.secondaryGrey;
  static Color _primaryBlue = EmrColours.secondaryGrey;
  static Color _background = EmrColours.secondaryGrey;
  static Color _foreground = EmrColours.secondaryGrey;
}
