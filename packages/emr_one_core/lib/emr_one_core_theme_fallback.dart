import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_theme/emr_one_theme.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EmrOneCoreThemeFallback {
  static const Color kPrimary = Color(0xFF125489);
  static const Color kSecondary = Color(0xFFC44917);
  static const Color kTertiary = Color(0xFF2B9CCE);
  static const Color kMostaza = Color(0xFFFFC14F);
  static const Color kDarkBackground = Color(0xFF333236);
  static const Color kError = Color(0xFFFF0028);

  static const FlexSchemeData _coreFlexScheme = FlexSchemeData(
    name: 'EMR Core',
    description: 'Default EMR Colour Theme',
    light: FlexSchemeColor(
      primary: kPrimary,
      secondary: kSecondary,
      tertiary: kTertiary,
    ),
    dark: FlexSchemeColor(
      primary: kTertiary,
      secondary: kSecondary,
      tertiary: kMostaza,
    ),
  );

  // A function to make custom ThemeData using FlexColorScheme
  // and a custom ToggleButtonsThemeData component theme.
  static ThemeData lightTheme() {
    // We need to use the ColorScheme defined by the ThemeData that
    // FlexColorScheme will create based on our configuration in our
    // custom component theme. We first create the `FlexColorScheme` object:
    final flexScheme = FlexColorScheme.light(
      colors: _coreFlexScheme.light,
      scheme: FlexScheme.materialBaseline,
      subThemesData: const FlexSubThemesData(
        interactionEffects: true,
        useM2StyleDividerInM3: true,
        defaultRadius: 4,
        cardRadius: 6,
        textButtonSchemeColor: SchemeColor.onSurface,
        filledButtonSchemeColor: SchemeColor.onSurface,
        inputDecoratorSchemeColor: SchemeColor.primary,
        inputDecoratorContentPadding:
            EdgeInsetsDirectional.fromSTEB(12, 16, 12, 12),
        inputDecoratorBackgroundAlpha: 7,
        inputDecoratorBorderSchemeColor: SchemeColor.outline,
        inputDecoratorBorderType: FlexInputBorderType.outline,
        inputDecoratorRadius: 6,
        inputDecoratorUnfocusedBorderIsColored: true,
        inputDecoratorBorderWidth: 1,
        inputDecoratorFocusedBorderWidth: 2,
        inputDecoratorPrefixIconSchemeColor: SchemeColor.onPrimaryFixedVariant,
        inputDecoratorSuffixIconSchemeColor: SchemeColor.primary,
        alignedDropdown: true,
        appBarBackgroundSchemeColor: SchemeColor.onSurfaceVariant,
        navigationRailUseIndicator: true,
      ),
      fontFamily: GoogleFonts.openSans().fontFamily,
      textTheme: getTextTheme(),
      primaryTextTheme: getTextTheme(),
    );
    // We can the return the `ThemeData` from our `FlexColorScheme`, with
    // our custom component theme added to it, where its customizations uses
    // color that the `ColorScheme` in the return `ThemeData` also gets.
    final theme = flexScheme.toTheme.copyWith(
      extensions: <ThemeExtension<dynamic>>{
        defaultLightBrandTheme,
        EOMenuTheme(
          selectedColour: EmrOneCoreThemeFallback.kSecondary,
          backgroundColour: Colors.white,
          textStyle: GoogleFonts.openSans(),
          selectedTextStyle: GoogleFonts.openSans().copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        const EmrScaleTheme(
          disconnectedColor: EmrOneCoreThemeFallback.kError,
          connectedColor: EmrOneCoreThemeFallback.kPrimary,
          disabledColor: Color(0XFFD9D9D9),
          borderColor: Color(0XFFD9D9D9),
        ),
        EmrCalendarTheme(),
        defaultTicketLightTheme,
      },
    );

    // This is a temporary workaround until flex_color_scheme v8 is released
    // which should fix this issue:
    // https://github.com/rydmike/flex_color_scheme/issues/228
    return theme.copyWith(
      colorScheme: theme.colorScheme.copyWith(
        surfaceContainerHighest: const Color(0xffeeeeee),
      ),
    );
  }

  static ThemeData darkTheme() {
    final flexScheme = FlexColorScheme.dark(
      colors: _coreFlexScheme.dark,
      scheme: FlexScheme.materialBaseline,
      subThemesData: const FlexSubThemesData(
        interactionEffects: true,
        blendOnColors: true,
        useM2StyleDividerInM3: true,
        defaultRadius: 4,
        cardRadius: 6,
        textButtonSchemeColor: SchemeColor.onSurface,
        filledButtonSchemeColor: SchemeColor.onSurface,
        inputDecoratorSchemeColor: SchemeColor.primary,
        inputDecoratorContentPadding:
            EdgeInsetsDirectional.fromSTEB(12, 16, 12, 12),
        inputDecoratorBackgroundAlpha: 7,
        inputDecoratorBorderSchemeColor: SchemeColor.outline,
        inputDecoratorBorderType: FlexInputBorderType.outline,
        inputDecoratorRadius: 6,
        inputDecoratorUnfocusedBorderIsColored: true,
        inputDecoratorBorderWidth: 1,
        inputDecoratorFocusedBorderWidth: 2,
        inputDecoratorPrefixIconSchemeColor: SchemeColor.onPrimaryFixedVariant,
        inputDecoratorSuffixIconSchemeColor: SchemeColor.primary,
        alignedDropdown: true,
        appBarBackgroundSchemeColor: SchemeColor.onSurfaceVariant,
        navigationRailUseIndicator: true,
      ),
      fontFamily: GoogleFonts.openSans().fontFamily,
      textTheme: getTextTheme(),
      primaryTextTheme: getTextTheme(),
    );

    final theme = flexScheme.toTheme.copyWith(
      extensions: <ThemeExtension<dynamic>>{
        defaultDarkBrandTheme,
        EOMenuTheme(
          selectedColour: EmrOneCoreThemeFallback.kTertiary,
          backgroundColour: Colors.grey.shade900,
          textStyle: GoogleFonts.openSans(),
          selectedTextStyle: GoogleFonts.openSans().copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        const EmrScaleTheme(
          disconnectedColor: EmrOneCoreThemeFallback.kError,
          connectedColor: EmrOneCoreThemeFallback.kPrimary,
          disabledColor: Color(0XFFD9D9D9),
          borderColor: Color(0XFFD9D9D9),
        ),
        EmrCalendarTheme(),
        defaultTicketDarkTheme,
      },
    );

    // This is a temporary workaround until flex_color_scheme v8 is released
    // which should fix this issue:
    // https://github.com/rydmike/flex_color_scheme/issues/228
    return theme.copyWith(
      colorScheme: theme.colorScheme.copyWith(
        surfaceContainerHighest: const Color(0xff323232),
      ),
    );
  }

  static TextTheme getTextTheme() {
    const textTheme = TextTheme(
      headlineLarge: TextStyle(
        fontFamily: 'QanelasSoft',
        fontSize: 32,
        package: 'emr_one_core',
      ),
      headlineMedium: TextStyle(
        fontFamily: 'QanelasSoft',
        fontSize: 28,
        package: 'emr_one_core',
      ),
      headlineSmall: TextStyle(
        fontFamily: 'QanelasSoft',
        fontSize: 24,
        package: 'emr_one_core',
      ),
    );
    return textTheme;
  }
}
