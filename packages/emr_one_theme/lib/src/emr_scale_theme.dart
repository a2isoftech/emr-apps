import 'package:flutter/material.dart';

class EmrScaleTheme extends ThemeExtension<EmrScaleTheme> {
  const EmrScaleTheme({
    required this.disconnectedColor,
    required this.connectedColor,
    required this.disabledColor,
    this.borderColor,
    this.borderWidth = 2,
    this.contentPadding = 5,
    this.borderRadius = 5,
    this.labelPositionLeft = 24,
    this.uomInputFieldWidth = 450,
    this.uomInputFieldHeight = 60,
    this.cameraBoxHeight = 150,
    this.cameraBoxWidth = 250,
    this.cameraIconSize = 48,
    this.buttonOutlined = true,
  });

  final double borderWidth;
  final double contentPadding;
  final double borderRadius;
  final double labelPositionLeft;
  final double uomInputFieldWidth;
  final double uomInputFieldHeight;
  final double cameraBoxWidth;
  final double cameraBoxHeight;
  final double cameraIconSize;
  final Color disconnectedColor;
  final Color connectedColor;
  final Color disabledColor;
  final Color? borderColor;
  final bool buttonOutlined;

  @override
  ThemeExtension<EmrScaleTheme> copyWith({
    double? borderWidth,
    double? contentPadding,
    double? borderRadius,
    double? labelPositionLeft,
    double? uomInputFieldWidth,
    double? uomInputFieldHeight,
    double? cameraBoxWidth,
    double? cameraBoxHeight,
    double? cameraIconSize,
    Color? disabledColor,
    Color? disconnectedColor,
    Color? connectedColor,
    Color? borderColor,
    bool? buttonOutlined,
  }) =>
      EmrScaleTheme(
        borderWidth: borderWidth ?? this.borderWidth,
        contentPadding: contentPadding ?? this.contentPadding,
        borderRadius: borderRadius ?? this.borderRadius,
        labelPositionLeft: labelPositionLeft ?? this.labelPositionLeft,
        uomInputFieldWidth: uomInputFieldWidth ?? this.uomInputFieldWidth,
        uomInputFieldHeight: uomInputFieldHeight ?? this.uomInputFieldHeight,
        cameraBoxWidth: cameraBoxWidth ?? this.cameraBoxWidth,
        cameraBoxHeight: cameraBoxHeight ?? this.cameraBoxHeight,
        cameraIconSize: cameraIconSize ?? this.cameraIconSize,
        connectedColor: connectedColor ?? this.connectedColor,
        disconnectedColor: disconnectedColor ?? this.disconnectedColor,
        disabledColor: disabledColor ?? this.disabledColor,
        borderColor: borderColor ?? this.borderColor,
        buttonOutlined: buttonOutlined ?? this.buttonOutlined,
      );

  @override
  ThemeExtension<EmrScaleTheme> lerp(
    covariant ThemeExtension<EmrScaleTheme>? other,
    double t,
  ) {
    if (other is! EmrScaleTheme) {
      return this;
    }

    return EmrScaleTheme(
      borderWidth: borderWidth,
      contentPadding: contentPadding,
      borderRadius: borderRadius,
      labelPositionLeft: labelPositionLeft,
      uomInputFieldWidth: uomInputFieldWidth,
      uomInputFieldHeight: uomInputFieldHeight,
      cameraBoxWidth: cameraBoxWidth,
      cameraBoxHeight: cameraBoxHeight,
      cameraIconSize: cameraIconSize,
      connectedColor: Color.lerp(
            connectedColor,
            other.connectedColor,
            t,
          ) ??
          connectedColor,
      disconnectedColor: Color.lerp(
            disconnectedColor,
            other.disconnectedColor,
            t,
          ) ??
          disconnectedColor,
      disabledColor: Color.lerp(
            disabledColor,
            other.disabledColor,
            t,
          ) ??
          disabledColor,
      borderColor: Color.lerp(
            borderColor,
            other.borderColor,
            t,
          ) ??
          borderColor,
    );
  }
}
