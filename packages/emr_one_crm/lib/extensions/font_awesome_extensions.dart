import 'package:font_awesome_flutter/font_awesome_flutter.dart';

extension FontAwesomeIconsConverter on String {
  /// Parse the name of a Font Awesome icon and return the IconData.
  FaIconData parseIconName() {
    switch (this) {
      case 'cow':
        return FontAwesomeIcons.cow;
      case 'dollarSign':
        return FontAwesomeIcons.dollarSign;
      case 'euroSign':
        return FontAwesomeIcons.euroSign;
      case 'sterlingSign':
        return FontAwesomeIcons.sterlingSign;
      default:
        throw Exception(
          "$this hasn't been mapped as a Font Awesome icon in "
          'FontAwesomeIconsConverter.parseIconName',
        );
    }
  }
}
