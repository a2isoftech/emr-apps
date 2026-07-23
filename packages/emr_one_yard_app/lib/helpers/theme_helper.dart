import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_theme/emr_one_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

Color? setSystemChromeColour(BuildContext context) {
  final colour =
      Theme.of(context).extension<EOBrandTheme>()!.appBarBackgroundColour;

  //This is to set the colour of the nav bar to match the custom app bar.
  // This will only be changed for as long as this widget is in the tree.
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: colour,
      systemNavigationBarColor: colour,
      statusBarIconBrightness: Brightness.light,
    ),
  );
  return colour;
}

Color? getBadgeColor(Enum$TicketType type, BuildContext context) {
  switch (type) {
    case Enum$TicketType.INWARDS:
      return Theme.of(context).extension<TicketThemeExtension>()!.inwardColour;
    case Enum$TicketType.OUTWARDS:
    case Enum$TicketType.$unknown:
      return Theme.of(context).extension<TicketThemeExtension>()!.outwardColour;
  }
}
