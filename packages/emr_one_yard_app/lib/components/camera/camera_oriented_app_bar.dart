import 'package:camerawesome/camerawesome_plugin.dart';
import 'package:emr_one_core/eo_constants.dart';
import 'package:flutter/material.dart';

class OrientedCameraAppBar extends StatelessWidget {
  const OrientedCameraAppBar({
    required this.orientation,
    required this.enabled,
    required this.showCloseButton,
    this.title,
    super.key,
  });

  final String? title;
  final CameraOrientations? orientation;
  final bool enabled;
  final bool showCloseButton;

  @override
  Widget build(BuildContext context) {
    final align = switch (orientation) {
      CameraOrientations.landscape_left => Alignment.topLeft,
      CameraOrientations.landscape_right => Alignment.topRight,
      _ => Alignment.topCenter
    };

    final turns = switch (orientation) {
      CameraOrientations.landscape_left => 3,
      CameraOrientations.landscape_right => 1,
      _ => 0,
    };

    return Align(
      alignment: align,
      child: RotatedBox(
        quarterTurns: turns,
        child: Container(
          padding: const EdgeInsets.all(Insets.gutter / 2),
          height: 80,
          decoration:
              const BoxDecoration(color: Color.fromARGB(31, 126, 121, 121)),
          child: Stack(
            children: [
              if (showCloseButton)
                Align(
                  alignment: Alignment.centerLeft,
                  child: InkWell(
                    onTap: enabled ? () => Navigator.of(context).pop() : null,
                    child: Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: const Icon(
                        Icons.close,
                        color: Colors.red,
                      ),
                    ),
                  ),
                ),
              if (title != null)
                Align(
                  child: Text(
                    title ?? '',
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
