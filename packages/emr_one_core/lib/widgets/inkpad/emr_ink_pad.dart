import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:painter/painter.dart';

/// [EmrInkPad] is a widget that allows the user to draw on the screen.
///
/// It's ideally suited to capture a signature or a drawing. It can be used
/// standalone or with a [EmrInkPadController] to get the image data or reset
/// programatically. In standalone mode provide a [onTapOk] callback to get the
/// image data.
///
/// For more information please refer to the documentation at:
/// https://emrappsdocs.emrgroup.com/components/emr_ink_pad
class EmrInkPad extends StatefulWidget {
  const EmrInkPad({
    this.backgroundColour = Colors.white,
    this.penColour = Colors.black,
    this.penThickness = 5.0,
    this.onTapOk,
    this.controller,
    super.key,
  });

  final Color backgroundColour;
  final Color penColour;
  final double penThickness;
  final void Function(Uint8List imageData)? onTapOk;
  final EmrInkPadController? controller;

  @override
  State<EmrInkPad> createState() => _EmrInkPadState();
}

class _EmrInkPadState extends State<EmrInkPad> {
  late PainterController _painterController;

  @override
  void initState() {
    super.initState();

    _painterController = PainterController()
      ..thickness = widget.penThickness
      ..backgroundColor = widget.backgroundColour
      ..drawColor = widget.penColour;

    if (widget.controller != null) {
      _painterController.addListener(_onPainterChanged);
      widget.controller!._onGetImage =
          () => _painterController.finish().toPNG();
      widget.controller!._onResetImage = () => _painterController.clear();
    }
  }

  @override
  void dispose() {
    if (widget.controller != null) {
      _painterController.removeListener(_onPainterChanged);
      widget.controller!._onGetImage = null;
      widget.controller!._onResetImage = null;
    }
    super.dispose();
  }

  void _onPainterChanged() {
    widget.controller?._notifyListeners();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Painter(_painterController),
        ),
        if (widget.onTapOk != null)
          Positioned(
            right: 10,
            bottom: 10,
            child: FloatingActionButton(
              onPressed: () async {
                final imgToSendBack = await _painterController.finish().toPNG();

                widget.onTapOk?.call(imgToSendBack);
              },
              child: const Icon(Icons.check),
            ),
          ),
      ],
    );
  }
}

class EmrInkPadController extends ChangeNotifier {
  Future<Uint8List> Function()? _onGetImage;
  void Function()? _onResetImage;

  void _notifyListeners() {
    notifyListeners();
  }

  Future<Uint8List?> getImage() async {
    if (_onGetImage != null) {
      return _onGetImage!();
    }

    return null;
  }

  void resetImage() {
    _onResetImage?.call();
  }
}
