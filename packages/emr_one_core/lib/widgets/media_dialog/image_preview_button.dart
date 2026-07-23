import 'package:emr_one_core/eo_constants.dart';
import 'package:flutter/material.dart';

///A rounded, square button with an image that will execute a callback on press.
class ImagePreviewButton extends StatelessWidget {
  const ImagePreviewButton({
    required this.image,
    required this.onPressed,
    this.showPlayOverlay = false,
    this.width = EmrOneConstants.mediaButtonWidth,
    this.colour = EmrOneConstants.mediaButtonColour,
    super.key,
  });

  final VoidCallback? onPressed;
  final ImageProvider image;
  final Color colour;
  final double width;
  final bool showPlayOverlay;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: SizedBox(
        width: width,
        child: Stack(
          children: [
            AspectRatio(
              aspectRatio: 1,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(4),
                child: ColoredBox(
                  color: colour,
                  child: Image(
                    image: image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            if (showPlayOverlay)
              const Align(
                child: Icon(
                  Icons.play_circle,
                  color: Colors.white,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
