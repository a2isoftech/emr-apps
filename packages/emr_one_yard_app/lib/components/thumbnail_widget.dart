import 'package:emr_one_core/eo_constants.dart';
import 'package:emr_one_yard_app/constants/yard_app_constants.dart';
import 'package:flutter/material.dart';

class ThumbnailWidget extends StatelessWidget {
  const ThumbnailWidget({
    required this.child,
    super.key,
    this.width,
    this.height,
    this.color,
  });
  final Widget child;
  final double? width;
  final double? height;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    final borderRadius = BorderRadius.circular(Insets.gutter / 2);

    return Container(
      height: height ?? LayoutConstants.thumbnailSize,
      width: width ?? LayoutConstants.thumbnailSize,
      decoration: BoxDecoration(
        color: color ?? Theme.of(context).cardColor,
        border: Border.all(
          color: Theme.of(context).dividerColor,
        ),
        borderRadius: borderRadius,
      ),
      clipBehavior: Clip.hardEdge,
      child: child,
    );
  }
}
