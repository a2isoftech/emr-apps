import 'dart:async';
import 'package:camerawesome/camerawesome_plugin.dart';
import 'package:flutter/material.dart';

///Adds the ability to subscribe to a capture state stream.
///Creates a timer and method for retrieving the elapsed time, and optionally
/// the time remaining.
mixin CameraTimerMixin<T extends StatefulWidget> on State<T> {
  Timer? recordingTimer;
  int maxRecordingMinutes = 0;
  int elapsedMinutes = 0;
  int elapsedSeconds = 0;
  bool showMaxDuration = false;

  StreamSubscription<MediaCapture?>? captureStateSubscription;
  final ValueNotifier<bool> visible = ValueNotifier(false);
  final ValueNotifier<bool> isCaptured = ValueNotifier(false);
  final ValueNotifier<bool> callbackIsExecuting = ValueNotifier(false);

  void registerCaptureStateSubscription(
    CameraState state,
    Future<void> Function(MediaCapture) captureEventCallback,
  ) {
    captureStateSubscription?.cancel();
    captureStateSubscription = state.captureState$.listen((event) {
      if (event?.status == MediaCaptureStatus.capturing) {
        isCaptured.value = true;
      }
      if (state is PhotoCameraState &&
          event?.status == MediaCaptureStatus.capturing) {
        visible.value = true;
      }
      if (state is VideoRecordingCameraState &&
          event?.videoState == VideoState.started &&
          (recordingTimer == null || !recordingTimer!.isActive)) {
        recordingTimer = _getRecordingTimer(state);
      } else if (state is VideoRecordingCameraState &&
              event?.videoState == VideoState.stopped ||
          (event?.videoState == VideoState.error && isCaptured.value)) {
        recordingTimer?.cancel();
        elapsedMinutes = 0;
        elapsedSeconds = 0;
      }
      if (event != null &&
          event.status == MediaCaptureStatus.success &&
          isCaptured.value &&
          !callbackIsExecuting.value) {
        //Ensure callback has fully executed before we set the value of
        //isCaptured. Use callbackIsExecuting to ensure that the callback isn't
        //called twice when a video or other long operation is processing.
        callbackIsExecuting.value = true;
        captureEventCallback(event).then<void>((value) {
          isCaptured.value = false;
          callbackIsExecuting.value = false;
        });
      }
    });
  }

  String getRecordDurationText() {
    final sb = StringBuffer();
    sb.write(elapsedMinutes.toString().padLeft(2, '0'));
    sb.write(':');
    sb.write(elapsedSeconds.toString().padLeft(2, '0'));

    if (!showMaxDuration) {
      return sb.toString();
    }

    sb.write('/');
    sb.write(maxRecordingMinutes.toString().padLeft(2, '0'));
    sb.write(':');
    sb.write('00');
    return sb.toString();
  }

  Timer _getRecordingTimer(
    VideoRecordingCameraState videoRecordingCameraState,
  ) {
    return Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        if (++elapsedSeconds == 60) {
          elapsedMinutes += 1;
          elapsedSeconds = 0;
        }

        if (Duration(minutes: elapsedMinutes, seconds: elapsedSeconds) >=
            Duration(minutes: maxRecordingMinutes)) {
          recordingTimer?.cancel();
          videoRecordingCameraState.stopRecording();
          elapsedMinutes = 0;
          elapsedSeconds = 0;
        }
      });
    });
  }

  Widget captureOverlay() {
    return ValueListenableBuilder<bool>(
      valueListenable: visible,
      builder: (context, value, child) => AnimatedOpacity(
        opacity: value ? 1.0 : 0.0,
        onEnd: () {
          visible.value = false;
        },
        duration: const Duration(milliseconds: 200),
        child: Visibility(
          visible: visible.value,
          child: Container(
            width: double.infinity,
            color: Colors.white38,
          ),
        ),
      ),
    );
  }
}
