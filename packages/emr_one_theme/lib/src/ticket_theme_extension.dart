import 'package:flutter/material.dart';

class TicketThemeExtension extends ThemeExtension<TicketThemeExtension> {
  const TicketThemeExtension({
    required this.inwardColour,
    required this.onInwardColour,
    required this.outwardColour,
    required this.onOutwardColour,
  });
  final Color inwardColour;
  final Color onInwardColour;
  final Color outwardColour;
  final Color onOutwardColour;

  @override
  TicketThemeExtension copyWith({
    Color? inwardColour,
    Color? onInwardColour,
    Color? outwardColour,
    Color? onOutwardColour,
  }) {
    return TicketThemeExtension(
      inwardColour: inwardColour ?? this.inwardColour,
      onInwardColour: onInwardColour ?? this.onInwardColour,
      outwardColour: outwardColour ?? this.outwardColour,
      onOutwardColour: onOutwardColour ?? this.onOutwardColour,
    );
  }

  @override
  TicketThemeExtension lerp(
    ThemeExtension<TicketThemeExtension>? other,
    double t,
  ) {
    if (other is! TicketThemeExtension) return this;
    return TicketThemeExtension(
      inwardColour: Color.lerp(inwardColour, other.inwardColour, t)!,
      onInwardColour: Color.lerp(onInwardColour, other.onInwardColour, t)!,
      outwardColour: Color.lerp(outwardColour, other.outwardColour, t)!,
      onOutwardColour: Color.lerp(onOutwardColour, other.onOutwardColour, t)!,
    );
  }
}

const TicketThemeExtension defaultTicketLightTheme = TicketThemeExtension(
  inwardColour: Color(0xFF125489),
  onInwardColour: Colors.white,
  outwardColour: Color(0xFFC44917),
  onOutwardColour: Colors.white,
);

const TicketThemeExtension defaultTicketDarkTheme = TicketThemeExtension(
  inwardColour: Color(0xFF125489),
  onInwardColour: Colors.white,
  outwardColour: Color(0xFFC44917),
  onOutwardColour: Colors.white,
);
