import 'package:camerawesome/camerawesome_plugin.dart';
import 'package:flutter/material.dart';

///Reads a stream of orientation data from Camerawesome plugin, and uses this to
///build a child widget that can make use of this orientation data.0.
///Based on code from CamerAwesome AwesomeOrientedWidget.
class CameraOrientedWidget extends StatefulWidget {

  const CameraOrientedWidget({
    required this.builder,
    super.key,
    this.rotateWithDevice = true,
  });


  final bool rotateWithDevice;
  final Widget Function(CameraOrientations? orientation) builder;

  @override
  State<StatefulWidget> createState() {
    return CameraOrientedWidgetState();
  }
}

class CameraOrientedWidgetState extends State<CameraOrientedWidget> {
  CameraOrientations previousOrientation = CameraOrientations.portrait_up;
  int turns = 0;

  @override
  Widget build(BuildContext context) {
    if (widget.rotateWithDevice) {
      return StreamBuilder<CameraOrientations>(
        stream: CamerawesomePlugin.getNativeOrientation(),
        builder: (_, orientationSnapshot) {
          final orientation = orientationSnapshot.data;
          if (orientation != null && orientation != previousOrientation) {
            previousOrientation = orientation;
          }
          return widget.builder(orientation);
        },
      );
    } else {
      return widget.builder(CameraOrientations.portrait_up);
    }
  }
}
