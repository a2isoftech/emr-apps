import 'package:emr_one_core/eo_constants.dart';
import 'package:emr_one_yard_app/constants/yard_app_constants.dart';
import 'package:flutter/material.dart';

class BottomActionButtons extends StatelessWidget {
  const BottomActionButtons({
    this.onCameraTap,
    this.onGalleryTap,
    this.onVideoTap,
    this.onFlagTap,
    super.key,
  });

  final VoidCallback? onCameraTap;
  final VoidCallback? onGalleryTap;
  final VoidCallback? onVideoTap;
  final VoidCallback? onFlagTap;

  @override
  Widget build(BuildContext context) {
    final buttons = <Widget>[
      if (onCameraTap != null)
        ActionIconButton(
          icon: Icons.camera_alt_outlined,
          onPressed: onCameraTap!,
        ),
      if (onGalleryTap != null)
        ActionIconButton(
          icon: Icons.photo_library_outlined,
          onPressed: onGalleryTap!,
        ),
      if (onVideoTap != null)
        ActionIconButton(
          icon: Icons.video_library_outlined,
          onPressed: onVideoTap!,
        ),
      if (onFlagTap != null)
        ActionIconButton(
          icon: Icons.flag_circle_outlined,
          onPressed: onFlagTap!,
        ),
    ];

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: buttons
          .map(
            (w) => Padding(
              padding: const EdgeInsets.all(Insets.gutter),
              child: w,
            ),
          )
          .toList(),
    );
  }
}

class ActionIconButton extends StatelessWidget {
  const ActionIconButton({
    required this.icon,
    required this.onPressed,
    super.key,
  });

  final IconData icon;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Theme.of(context).colorScheme.primary,
      ),
      child: IconButton(
        icon: Icon(
          icon,
          color: Theme.of(context).colorScheme.surface,
        ),
        iconSize: LayoutConstants.iconSizeBig,
        onPressed: onPressed,
      ),
    );
  }
}
