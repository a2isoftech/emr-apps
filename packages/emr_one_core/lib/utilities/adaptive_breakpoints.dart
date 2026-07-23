import 'package:flutter/material.dart';

/// To migrate from the [adaptive_breakpoints] package that has
/// been [DISCONTINUED].
/// 
/// Adaptive window sizes still follow Material 2 guidelines to avoid breaking
/// changes when migrating to Material 3.
/// Reference: https://m3.material.io/foundations/layout/applying-layout/window-size-classes

enum AdaptiveWindowType {
  xsmall._(
    name: 'xsmall',
    relativeSize: 0,
    widthRangeValues: RangeValues(0, 599),
    heightLandscapeRangeValues: RangeValues(0, 359),
    heightPortraitRangeValues: RangeValues(0, 959),
  ),
  small._(
    name: 'small',
    relativeSize: 1,
    widthRangeValues: RangeValues(600, 1023),
    heightLandscapeRangeValues: RangeValues(360, 719),
    heightPortraitRangeValues: RangeValues(360, 1599),
  ),
  medium._(
    name: 'medium',
    relativeSize: 2,
    widthRangeValues: RangeValues(1024, 1439),
    heightLandscapeRangeValues: RangeValues(720, 959),
    heightPortraitRangeValues: RangeValues(720, 1919),
  ),
  large._(
    name: 'large',
    relativeSize: 3,
    widthRangeValues: RangeValues(1440, 1919),
    heightLandscapeRangeValues: RangeValues(960, 1279),
    heightPortraitRangeValues: RangeValues(1920, double.infinity),
  ),
  xlarge._(
    name: 'xlarge',
    relativeSize: 4,
    widthRangeValues: RangeValues(1920, double.infinity),
    heightLandscapeRangeValues: RangeValues(1280, double.infinity),
    heightPortraitRangeValues: RangeValues(1920, double.infinity),
  );

  const AdaptiveWindowType._({
    required this.name,
    required this.relativeSize,
    required this.widthRangeValues,
    required this.heightLandscapeRangeValues,
    required this.heightPortraitRangeValues,
  });

  final String name;
  final int relativeSize;
  final RangeValues widthRangeValues;
  final RangeValues heightLandscapeRangeValues;
  final RangeValues heightPortraitRangeValues;

  bool operator <=(AdaptiveWindowType other) =>
      relativeSize <= other.relativeSize;

  bool operator <(AdaptiveWindowType other) =>
      relativeSize < other.relativeSize;

  bool operator >=(AdaptiveWindowType other) =>
      relativeSize >= other.relativeSize;

  bool operator >(AdaptiveWindowType other) =>
      relativeSize > other.relativeSize;
}

class Breakpoint {
  const Breakpoint({
    required this.range,
    required this.windowType,
    required this.columns,
    required this.margin,
    required this.gutter,
    this.portrait,
    this.landscape,
  });

  final RangeValues range;
  final String? portrait;
  final String? landscape;
  final AdaptiveWindowType windowType;
  final int columns;
  final double margin;
  final double gutter;
}

const List<Breakpoint> breakpoints = [
  Breakpoint(
    range: RangeValues(0, 360),
    portrait: 'small handset',
    windowType: AdaptiveWindowType.xsmall,
    columns: 4,
    margin: 16,
    gutter: 16,
  ),
  Breakpoint(
    range: RangeValues(360, 400),
    portrait: 'medium handset',
    windowType: AdaptiveWindowType.xsmall,
    columns: 4,
    margin: 16,
    gutter: 16,
  ),
  Breakpoint(
    range: RangeValues(400, 480),
    portrait: 'large handset',
    windowType: AdaptiveWindowType.xsmall,
    columns: 4,
    margin: 16,
    gutter: 16,
  ),
  Breakpoint(
    range: RangeValues(480, 600),
    portrait: 'large handset',
    landscape: 'small handset',
    windowType: AdaptiveWindowType.xsmall,
    columns: 4,
    margin: 16,
    gutter: 16,
  ),
  Breakpoint(
    range: RangeValues(600, 720),
    portrait: 'small tablet',
    landscape: 'medium handset',
    windowType: AdaptiveWindowType.small,
    columns: 8,
    margin: 16,
    gutter: 16,
  ),
  Breakpoint(
    range: RangeValues(720, 840),
    portrait: 'large tablet',
    landscape: 'large handset',
    windowType: AdaptiveWindowType.small,
    columns: 8,
    margin: 24,
    gutter: 24,
  ),
  Breakpoint(
    range: RangeValues(840, 960),
    portrait: 'large tablet',
    landscape: 'large handset',
    windowType: AdaptiveWindowType.small,
    columns: 12,
    margin: 24,
    gutter: 24,
  ),
  Breakpoint(
    range: RangeValues(960, 1024),
    landscape: 'small tablet',
    windowType: AdaptiveWindowType.small,
    columns: 12,
    margin: 24,
    gutter: 24,
  ),
  Breakpoint(
    range: RangeValues(1024, 1280),
    landscape: 'medium tablet',
    windowType: AdaptiveWindowType.medium,
    columns: 12,
    margin: 24,
    gutter: 24,
  ),
  Breakpoint(
    range: RangeValues(1280, 1440),
    landscape: 'large tablet',
    windowType: AdaptiveWindowType.medium,
    columns: 12,
    margin: 24,
    gutter: 24,
  ),
  Breakpoint(
    range: RangeValues(1440, 1600),
    portrait: 'small handset',
    windowType: AdaptiveWindowType.large,
    columns: 12,
    margin: 24,
    gutter: 24,
  ),
  Breakpoint(
    range: RangeValues(1600, 1920),
    portrait: 'small handset',
    windowType: AdaptiveWindowType.large,
    columns: 12,
    margin: 24,
    gutter: 24,
  ),
  Breakpoint(
    range: RangeValues(1920, double.infinity),
    portrait: 'small handset',
    windowType: AdaptiveWindowType.xlarge,
    columns: 12,
    margin: 24,
    gutter: 24,
  ),
];

/// Returns the current breakpoint for the given context.
Breakpoint getBreakpoint(BuildContext context) {
  final width = MediaQuery.sizeOf(context).width;

  /// Example - 1024 falls on 2 ranges. 
  /// Small Tablet bp run 
  /// 1024 <= 1024 && 1024 < 1024
  /// true && false
  /// Medium Tablet
  /// 1024 <= 1024 && 1024 < 1440
  /// true && true - Medium tablet returned. 
  for (final bp in breakpoints) {
    if (width >= bp.range.start && width < bp.range.end) {
      return bp;
    }
  }

  assert(false, 'No matching breakpoint found for width $width');
  return breakpoints.last;
}


/// Returns the adaptive window type for the given context.
AdaptiveWindowType getWindowType(BuildContext context) {
  return getBreakpoint(context).windowType;
}
