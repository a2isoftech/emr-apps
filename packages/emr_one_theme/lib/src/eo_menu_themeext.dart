import 'package:flutter/material.dart';

class EOMenuTheme extends ThemeExtension<EOMenuTheme> {
  const EOMenuTheme({
    required this.selectedColour,
    required this.backgroundColour,
    required this.textStyle,
    required this.selectedTextStyle,
  });

  final Color? selectedColour;

  final Color? backgroundColour;

  double get padding => 0;

  double get wideWidth => 300;

  double get narrowWidth => 86;

  final TextStyle? textStyle;

  final TextStyle? selectedTextStyle;

  @override
  ThemeExtension<EOMenuTheme> copyWith({
    Color? selectedColour,
    Color? backgroundColour,
    double? padding,
    TextStyle? textStyle,
    TextStyle? selectedTextStyle,
  }) =>
      EOMenuTheme(
        selectedColour: selectedColour ?? this.selectedColour,
        backgroundColour: backgroundColour ?? this.backgroundColour,
        textStyle: textStyle ?? this.textStyle,
        selectedTextStyle: selectedTextStyle ?? this.selectedTextStyle,
      );

  @override
  ThemeExtension<EOMenuTheme> lerp(
    covariant ThemeExtension<EOMenuTheme>? other,
    double t,
  ) {
    if (other is! EOMenuTheme) {
      return this;
    }

    return EOMenuTheme(
      selectedColour: Color.lerp(
        selectedColour,
        other.selectedColour,
        t,
      ),
      backgroundColour: Color.lerp(
        backgroundColour,
        other.backgroundColour,
        t,
      ),
      textStyle: textStyle,
      selectedTextStyle: selectedTextStyle,
    );
  }
}
