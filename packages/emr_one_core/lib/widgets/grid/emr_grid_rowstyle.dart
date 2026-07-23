import 'package:flutter/widgets.dart';

class EmrGridRowStyle {
  EmrGridRowStyle({
    this.backgroundColour,
    this.borderColour,
  });

  factory EmrGridRowStyle.none() {
    return EmrGridRowStyle();
  }

  final Color? backgroundColour;
  final Color? borderColour;
}
