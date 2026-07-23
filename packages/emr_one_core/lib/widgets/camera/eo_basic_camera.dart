import 'dart:async';
import 'dart:io';

import 'package:camerawesome/camerawesome_plugin.dart';
import 'package:camerawesome/pigeon.dart';
import 'package:emr_one_core/mixins/camera_timer_mixin.dart';
import 'package:emr_one_core/widgets/camera/enums.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart' as path;
import 'package:path_provider/path_provider.dart';

class EOBasicCamera extends StatefulWidget {
  /// use [EOBasicCamera] to capture Image, video or both in single screen.
  /// This is a wraper of "Camerawesome" camera package.You can only use for
  /// taking image or video.
  const EOBasicCamera({
    required this.mediaMode,
    this.directory,
    super.key,
    this.onMediaCapture,
    this.enableAudio = true,
    this.mirrorFrontCamera = false,
    this.enablePhysicalButton = false,
    this.flashMode = FlashMode.none,
  });

  /// A call back function to get captured video/image file path
  final void Function(String?)? onMediaCapture;

  /// Provide a directory path to store captured image/video.
  /// Default will be stored in {app directory}/cache/media directory.
  final String? directory;

  /// MediaMode must be provided to start camera as Video or Image.
  final MediaMode mediaMode;

  ///[enableAudio] when recording a video or not
  final bool enableAudio;

  ///[mirrorFrontCamera] to see mirroed image
  final bool mirrorFrontCamera;

  ///[enablePhysicalButton] to click on device physical button click(volume up/down)
  final bool enablePhysicalButton;

  ///use [flashMode] to set default flashMode
  final FlashMode flashMode;

  @override
  State<EOBasicCamera> createState() => _EOBasicCameraState();
}

class _EOBasicCameraState extends State<EOBasicCamera> with CameraTimerMixin {
  CameraPreviewFit _previewFit = CameraPreviewFit.cover;
  int _aspectRatioIndex = 1;

  @override
  void initState() {
    maxRecordingMinutes = 59;
    super.initState();
  }

  @override
  void dispose() {
    recordingTimer?.cancel();
    captureStateSubscription?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ///Camerawesome is only compatible with IOS and Android.
    if (Platform.isAndroid || Platform.isIOS) {
      return _buildCameraControl(context);
    } else {
      return const Center(
        child: Text('No Supporting camera widget available.'),
      );
    }
  }

  Widget _buildCameraControl(BuildContext context) {
    return CameraAwesomeBuilder.awesome(
      sensorConfig: SensorConfig.single(
        flashMode: widget.flashMode,
        aspectRatio: CameraAspectRatios.ratio_16_9,
      ),
      enablePhysicalButton: widget.enablePhysicalButton,
      saveConfig: _getCameraConfig(widget.mediaMode),
      defaultFilter: AwesomeFilter.None,
      previewFit: _previewFit,
      bottomActionsBuilder: (state) {
        return AwesomeBottomActions(
          state: state,
          captureButton: AwesomeCaptureButton(state: state),
          left: AwesomeFlashButton(state: state),
          right: state is PhotoCameraState
              ? AwesomeAspectRatioButton(
                  state: state,
                  onAspectRatioTap: (sensorConfig, aspectRatio) {
                    _aspectRatioIndex =
                        _aspectRatioIndex > 2 ? 0 : _aspectRatioIndex;
                    final nextRatio =
                        CameraAspectRatios.values[_aspectRatioIndex];
                    setState(() {
                      _previewFit = _getPreviewFit(nextRatio);
                      _aspectRatioIndex++;
                      visible.value = true;
                    });
                    sensorConfig.setAspectRatio(nextRatio);
                  },
                )
              : Container(),
        );
      },
      middleContentBuilder: (state) {
        registerCaptureStateSubscription(
          state,
          (event) async => widget.onMediaCapture!(event.captureRequest.path),
        );
        return Stack(
          children: [
            Column(
              children: [
                const Spacer(),
                AwesomeCameraModeSelector(state: state),
              ],
            ),
            captureOverlay(),
          ],
        );
      },
      topActionsBuilder: (state) {
        return AwesomeTopActions(
          state: state,
          children: [
            const Align(
              alignment: Alignment.topLeft,
              child: AwesomeOrientedWidget(
                child: AwesomeCircleWidget(
                  scale: 0.2,
                  child: BackButton(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Expanded(
              child: state is VideoCameraState ||
                      state is VideoRecordingCameraState
                  ? Text(
                      getRecordDurationText(),
                      style: const TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    )
                  : Container(),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, top: 10),
              child: state is! VideoRecordingCameraState
                  ? AwesomeCameraSwitchButton(
                      state: state,
                      scale: 1,
                      onSwitchTap: (state) {
                        state.switchCameraSensor(
                          aspectRatio: state.sensorConfig.aspectRatio,
                        );
                      },
                    )
                  : Container(),
            ),
          ],
        );
      },
    );
  }

  SaveConfig _getCameraConfig(MediaMode mediaMode) {
    final videoOptions = VideoOptions(
      enableAudio: widget.enableAudio,
    );

    switch (mediaMode) {
      case MediaMode.photo:
        return SaveConfig.photo(
          pathBuilder: _photoCaptureRequest,
          mirrorFrontCamera: widget.mirrorFrontCamera,
        );
      case MediaMode.video:
        return SaveConfig.video(
          pathBuilder: _videoCaptureRequest,
          videoOptions: videoOptions,
          mirrorFrontCamera: widget.mirrorFrontCamera,
        );
      case MediaMode.photoAndVideo:
        return SaveConfig.photoAndVideo(
          photoPathBuilder: _photoCaptureRequest,
          videoPathBuilder: _videoCaptureRequest,
          videoOptions: videoOptions,
          mirrorFrontCamera: widget.mirrorFrontCamera,
        );
    }
  }

  Future<CaptureRequest> _photoCaptureRequest(List<Sensor> sensors) async =>
      SingleCaptureRequest(
        await _getFileName(CaptureMode.photo),
        sensors.first,
      );

  Future<CaptureRequest> _videoCaptureRequest(List<Sensor> sensors) async =>
      SingleCaptureRequest(
        await _getFileName(CaptureMode.video),
        sensors.first,
      );

  Future<String> _getFileName(CaptureMode captureMode) async {
    String file;

    switch (captureMode) {
      case CaptureMode.photo:
        file = '${_getPrefix('image')}.jpg';

      case CaptureMode.video:
        file = '${_getPrefix('video')}.mp4';
      // ignore: no_default_cases
      default:
        file = '';
    }

    return _getFullPath(file, widget.directory);
  }

  Future<String> _getFullPath(String fileName, String? directory) async {
    var dirPath = '';
    if (!isNullOrWhitespace(directory)) {
      final isDirExists = Directory(directory!).existsSync();
      if (!isDirExists) {
        await Directory(directory).create(recursive: true);
      }
      dirPath = directory;
    } else {
      final cacheDir = await getTemporaryDirectory();
      final mediaDir =
          await Directory('${cacheDir.path}/media').create(recursive: true);
      dirPath = mediaDir.path;
    }

    return path.join(dirPath, fileName);
  }

  String _getPrefix(String type) {
    final now = DateTime.now();

    return '${type}_${now.millisecondsSinceEpoch}';
  }

  bool isNullOrWhitespace(String? str) => (str ?? '') == '';

  CameraPreviewFit _getPreviewFit(CameraAspectRatios ratio) {
    switch (ratio) {
      case CameraAspectRatios.ratio_16_9:
        return CameraPreviewFit.cover;
      case CameraAspectRatios.ratio_1_1:
      case CameraAspectRatios.ratio_4_3:
        return CameraPreviewFit.fitWidth;
    }
  }
}
