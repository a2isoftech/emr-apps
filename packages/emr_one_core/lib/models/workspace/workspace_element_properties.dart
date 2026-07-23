import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';

class WorkspaceElementProperties {
  WorkspaceElementProperties({
    required Color backgroundColour,
  }) {
    this.backgroundColour = ValueNotifier<Color>(backgroundColour);
    this.backgroundColour.addListener(() {
      foregroundColour.value =
          this.backgroundColour.value.computeLuminance() > 0.5
              ? const Color(0xFF000000)
              : const Color(0xFFFFFFFF);
    });

    foregroundColour.value =
        this.backgroundColour.value.computeLuminance() > 0.5
            ? const Color(0xFF000000)
            : const Color(0xFFFFFFFF);
  }

  factory WorkspaceElementProperties.fromJson(Map<String, dynamic> json) =>
      WorkspaceElementProperties(
        backgroundColour: const CustomColourConverter()
            .fromJson(json['backgroundColour'] as String? ?? '255,255,255,255'),
      );

  late final ValueNotifier<Color> backgroundColour;
  late final ValueNotifier<Color> foregroundColour =
      ValueNotifier<Color>(const Color(0xFF000000));

  Map<String, dynamic> toJson() => {
        'backgroundColour':
            const CustomColourConverter().toJson(backgroundColour.value),
      };

  WorkspaceElementProperties copyWith({
    Color? backgroundColour,
  }) {
    return WorkspaceElementProperties(
      backgroundColour: backgroundColour ?? this.backgroundColour.value,
    );
  }

  void applyFrom(WorkspaceElementProperties other) {
    backgroundColour.value = other.backgroundColour.value;
    foregroundColour.value = other.foregroundColour.value;
  }
}
