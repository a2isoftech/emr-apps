import 'package:flutter/material.dart';

/// Use the [FullExtent] mixin to control how your route widget built as
/// part of an [EORoute] manages the screen layout. You can use this to
/// cause the application to enter full screen mode or hide navigation
/// elements.
///
/// NOTE: If [hideFrameworkElements] returns [true] (default) you MUST
/// provide your own [Scaffold]
mixin FullExtent on Widget {
  /// Override [hideFrameworkElements] to control whether or not the app
  /// navbar and appbar elements are rendered, return [true] (default) to
  /// hide these elements.
  bool get hideFrameworkElements => true;

  /// Override [enterFullScreen] and return [true] (default is false) to cause
  /// the application to attempt to enter full screen mode on whatever device
  /// it is running on.
  bool get enterFullScreen => false;
}
