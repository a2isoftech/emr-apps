import 'package:flutter/material.dart';

abstract class FormColors {
  static Color get grey => const Color.fromRGBO(136, 136, 136, 1);

  static Color get lightGrey => const Color.fromRGBO(178, 178, 178, 1);

  static Color get white => const Color.fromRGBO(255, 255, 255, 1);

  static Color get error => const Color.fromRGBO(186, 12, 47, 1);

  static Color get success => const Color.fromRGBO(132, 188, 1, 1);

  static Color get information => const Color.fromRGBO(4, 132, 218, 1);

  static Color get warning => const Color.fromARGB(255, 191, 124, 0);
  
  static Color get primaryBlue => const Color.fromARGB(255, 0, 58, 112);

  static Color get componentBorderColor => grey;

  static Color get componentErrorBorderColor => error;

  static Color get buttonColorGray => lightGrey;

  static Color get buttonColorGreen => success;

  static Color get buttonColorRed => error;

  static Color get buttonColorBlue => information;
}

abstract class FormIcons {
  static Icon get error => const Icon(Icons.error_outline_sharp);

  static Icon get information => const Icon(Icons.info_outline_sharp);

  static Icon get warning => const Icon(Icons.warning_amber_sharp);

  static Icon get dropdownList => const Icon(Icons.arrow_drop_down);
}

abstract class FormDecorations {
  static ButtonStyle get submitButtonStyle => ElevatedButton.styleFrom(
        backgroundColor: FormColors.buttonColorGreen,
      );

  static BoxDecoration get dropdownButton => BoxDecoration(
        border: Border.all(width: 1.0),
        borderRadius: BorderRadius.circular(5.0),
      );

  static RoundedRectangleBorder get checkboxTileBorder =>
      const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(5.0)),
        side: BorderSide(width: 1.0),
      );
}

abstract class FormTextStyles {
  static TextStyle get buttonTextStyle => const TextStyle(
        fontSize: 18.0,
        fontWeight: FontWeight.w600,
      );

  static TextStyle get errorMessageTextStyle => TextStyle(
        color: FormColors.error,
        fontSize: 14.0,
      );

  static TextStyle get questionStyle => const TextStyle(
        fontSize: 18.0,
        fontWeight: FontWeight.normal,
      );

  static TextStyle get questionTitle => const TextStyle(
        fontSize: 16.0,
        fontWeight: FontWeight.bold,
      );

  static TextStyle get buttonStyleEmpty => TextStyle(
        color: FormColors.buttonColorBlue,
        fontSize: 16.0,
        fontWeight: FontWeight.normal,
      );

  static TextStyle get buttonStyleDisabled => const TextStyle(
        fontSize: 16.0,
        fontWeight: FontWeight.normal,
      );

  static TextStyle get buttonStyleFull => TextStyle(
        color: FormColors.buttonColorGreen,
        fontSize: 16.0,
        fontWeight: FontWeight.normal,
      );

  static TextStyle get hintTextStyle =>
      const TextStyle(fontSize: 16.0, fontWeight: FontWeight.normal);

  static TextStyle get dropdownListTitleStyle =>
      const TextStyle(fontSize: 16.0, fontWeight: FontWeight.normal);
}
