import 'package:flutter/material.dart';

class EmrButtonStyles {
  static ButtonStyle cta() {
    return FilledButton.styleFrom(
      backgroundColor: const Color.fromARGB(255, 93, 175, 15),
      foregroundColor: Colors.white,
    );
  }

  static ButtonStyle danger() {
    return FilledButton.styleFrom(
      backgroundColor: const Color.fromARGB(255, 240, 0, 40),
      foregroundColor: Colors.white,
    );
  }
}
