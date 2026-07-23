import 'package:flutter/material.dart';

class EmrFlutterFirebaseAuthEmrColours {
  static const Color primaryBlue = Color.fromARGB(255, 0, 58, 112);
  static const Color primaryGreen = Color.fromARGB(255, 132, 189, 0);
  static const Color secondaryCyan = Color.fromARGB(255, 39, 157, 212);
  static const Color secondaryGrey = Color.fromARGB(255, 51, 50, 54);
  static const Color secondaryYellow = Color.fromARGB(255, 237, 206, 44);
  static const Color secondaryLightBlue = Color.fromARGB(255, 133, 221, 215);
  static const Color secondaryGreen = Color.fromARGB(255, 30, 128, 87);
}

class EmrFlutterFirebaseAuthInsets {
  static const double gutter = 16;
}

class EmrFlutterFirebaseAuthButtonStyles {
  static ButtonStyle elevatedButtonStyle = ElevatedButton.styleFrom(
    textStyle: const TextStyle(fontSize: 20),
    elevation: 1,
    padding: const EdgeInsets.all(EmrFlutterFirebaseAuthInsets.gutter),
    backgroundColor: EmrFlutterFirebaseAuthEmrColours.primaryBlue,
  );
  static ButtonStyle elevatedButtonStyleRed = ElevatedButton.styleFrom(
    textStyle: const TextStyle(fontSize: 20),
    elevation: 1,
    backgroundColor: Colors.red,
  );
  static ButtonStyle elevatedButtonStyleGreen = ElevatedButton.styleFrom(
    textStyle: const TextStyle(fontSize: 20),
    elevation: 1,
    backgroundColor: EmrFlutterFirebaseAuthEmrColours.primaryGreen,
  );

  static ButtonStyle elevatedButtonStyleRounded = ElevatedButton.styleFrom(
    textStyle: const TextStyle(fontSize: 20),
    elevation: 1,
    backgroundColor: EmrFlutterFirebaseAuthEmrColours.primaryGreen,
    padding: const EdgeInsets.all(EmrFlutterFirebaseAuthInsets.gutter),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(25),
    ),
  );
}
