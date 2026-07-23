import 'dart:async';

import 'package:camerawesome/camerawesome_plugin.dart';
import 'package:camerawesome/pigeon.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/mixins/camera_timer_mixin.dart';
import 'package:emr_one_core/widgets/camera/camera_oriented_widget.dart';
import 'package:emr_one_core/widgets/camera/enums.dart';
import 'package:emr_one_yard_app/components/camera/camera_oriented_app_bar.dart';
import 'package:emr_one_yard_app/constants/yard_app_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:image_picker/image_picker.dart';
import 'package:uuid/uuid.dart';

class CameraScreen extends StatefulWidget with AppBarExtender {
  CameraScreen({
    required this.mediaMode,
    required this.mediaDirectory,
    required Future<void> Function(MediaCapture mediaCapture) onMediaCapture,
    this.onMediaSelect,
    this.title,
    this.maxRecordingMinutes = 59,
    this.svgPicture,
    bool showMaxDuration = false,
    bool showCloseButton = true,
    this.galleryImport = false,
    this.allowMultiple = false,
    super.key,
  }) : _onMediaCapture = onMediaCapture,
       _showMaxDuration = showMaxDuration,
       _showCloseButton = showCloseButton;

  factory CameraScreen.photo({
    required Future<void> Function(MediaCapture mediaCapture) onMediaCapture,
    required String mediaDirectory,
    Future<void> Function(List<XFile> media)? onMediaSelect,
    Key? key,
    SvgPicture? svgOverlay,
    bool showCloseButton = true,
    bool galleryImport = false,
    bool allowMultiple = false,
  }) {
    return CameraScreen(
      key: key,
      mediaDirectory: mediaDirectory,
      onMediaCapture: onMediaCapture,
      mediaMode: MediaMode.photo,
      svgPicture: svgOverlay,
      showCloseButton: showCloseButton,
      allowMultiple: allowMultiple,
      galleryImport: galleryImport,
      onMediaSelect: onMediaSelect,
    );
  }

  factory CameraScreen.photoAndVideo({
    required String title,
    required Future<void> Function(MediaCapture mediaCapture) onMediaCapture,
    required String mediaDirectory,
    Future<void> Function(List<XFile> media)? onMediaSelect,
    int maxRecordingMinutes = 10,
    bool showCloseButton = true,
    bool galleryImport = false,
    bool allowMultiple = false,
    Key? key,
  }) {
    return CameraScreen(
      key: key,
      onMediaCapture: onMediaCapture,
      mediaDirectory: mediaDirectory,
      maxRecordingMinutes: maxRecordingMinutes,
      mediaMode: MediaMode.photoAndVideo,
      title: title,
      showMaxDuration: true,
      showCloseButton: showCloseButton,
      allowMultiple: allowMultiple,
      galleryImport: galleryImport,
      onMediaSelect: onMediaSelect,
    );
  }

  final Future<void> Function(MediaCapture mediaCapture) _onMediaCapture;
  final MediaMode mediaMode;
  final String? title;
  final String mediaDirectory;
  final SvgPicture? svgPicture;
  final int maxRecordingMinutes;
  final bool _showMaxDuration;
  final bool _showCloseButton;
  final bool galleryImport;
  final bool allowMultiple;
  final Future<void> Function(List<XFile> media)? onMediaSelect;

  @override
  State<StatefulWidget> createState() {
    return _CameraScreenState();
  }

  @override
  bool hideDefaultAppBar() => true;
}

class _CameraScreenState extends State<CameraScreen> with CameraTimerMixin {
  final key = GlobalKey<AwesomeOrientedWidgetState>();

  @override
  void initState() {
    super.initState();
    showMaxDuration = widget._showMaxDuration;
    maxRecordingMinutes = widget.maxRecordingMinutes;
  }

  @override
  void dispose() {
    recordingTimer?.cancel();
    captureStateSubscription?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CameraAwesomeBuilder.awesome(
      sensorConfig: SensorConfig.single(
        sensor: Sensor.position(SensorPosition.back),
        aspectRatio: CameraAspectRatios.ratio_16_9,
      ),
      previewFit: CameraPreviewFit.cover,
      onPreviewScaleBuilder: (state) => OnPreviewScale(
        onScale: (scale) {
          state.sensorConfig.setZoom(scale);
        },
      ),
      topActionsBuilder: (state) {
        return Container();
      },
      middleContentBuilder: (state) {
        registerCaptureStateSubscription(state, widget._onMediaCapture);
        return Stack(
          children: [
            _appBar(),
            if (state is VideoRecordingCameraState)
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 40,
                  alignment: Alignment.bottomCenter,
                  color: Colors.black54,
                  child: Text(
                    getRecordDurationText(),
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            Container(
              alignment: Alignment.bottomCenter,
              child: AwesomeCameraModeSelector(state: state),
            ),
            captureOverlay(),
            if (widget.svgPicture != null) widget.svgPicture!,
          ],
        );
      },
      bottomActionsBuilder: (state) {
        return AwesomeBottomActions(
          state: state,
          right: AwesomeFlashButton(state: state),
          captureButton: Stack(
            children: [
              AwesomeCaptureButton(state: state),
              ValueListenableBuilder(
                valueListenable: visible,
                builder: (context, value, child) => value
                    ? const AbsorbPointer(
                        child: SizedBox(
                          height: 80,
                          width: 80,
                          child: CircularProgressIndicator(),
                        ),
                      )
                    : Container(),
              ),
            ],
          ),
          //Omitting the 'left' parameter or adding a null widget does not have
          // the desired effect of a blank left hand option,
          // but using an empty container works.
          left: widget.galleryImport
              ? AwesomeCircleWidget(
                  child: IconButton(
                    icon: const Icon(
                      Icons.photo_library_outlined,
                      color: Colors.white,
                      size: 40,
                    ),
                    onPressed: _pickFromGallery,
                  ),
                )
              : Container(),
        );
      },
      saveConfig: _saveConfig(),
    );
  }

  Future<void> _pickFromGallery() async {
    final picker = ImagePicker();
    final files = <XFile>[];

    if (widget.mediaMode == MediaMode.photo) {
      await _pickPhotos(picker, files);
    } else {
      await _pickVideo(picker, files);
    }

    if (files.isNotEmpty) {
      await widget.onMediaSelect?.call(files);
    }
  }

  Future<void> _pickPhotos(ImagePicker picker, List<XFile> files) async {
    if (widget.allowMultiple) {
      files.addAll(await picker.pickMultiImage(limit: 10));
      return;
    }

    final image = await picker.pickImage(source: ImageSource.gallery);

    if (image != null) {
      files.add(image);
    }
  }

  Future<void> _pickVideo(ImagePicker picker, List<XFile> files) async {
    final video = await picker.pickVideo(source: ImageSource.gallery);

    if (video != null) {
      files.add(video);
    }
  }

  SaveConfig _saveConfig() {
    return switch (widget.mediaMode) {
      MediaMode.photoAndVideo => SaveConfig.photoAndVideo(
        photoPathBuilder: (sensors) =>
            _getCaptureRequest(sensors, YardAppConstants.photoExtension),
        videoPathBuilder: (sensors) =>
            _getCaptureRequest(sensors, YardAppConstants.videoExtension),
        videoOptions: VideoOptions(enableAudio: false),
      ),
      _ => SaveConfig.photo(
        pathBuilder: (sensors) =>
            _getCaptureRequest(sensors, YardAppConstants.photoExtension),
      ),
    };
  }

  Future<CaptureRequest> _getCaptureRequest(
    List<Sensor> sensors,
    String fileExtension,
  ) async => SingleCaptureRequest(
    '${widget.mediaDirectory}/${const Uuid().v1()}.$fileExtension',
    sensors.first,
  );

  Widget _appBar() {
    return ValueListenableBuilder(
      valueListenable: isCaptured,
      builder: (context, value, child) => Container(
        alignment: Alignment.topCenter,
        padding: const EdgeInsets.only(bottom: Insets.gutter * 2),
        child: switch (widget.mediaMode) {
          MediaMode.photoAndVideo => CameraOrientedWidget(
            key: key,
            builder: (orientation) => OrientedCameraAppBar(
              enabled: !value,
              title: widget.title,
              orientation: orientation,
              showCloseButton: widget._showCloseButton && !value,
            ),
          ),
          _ => OrientedCameraAppBar(
            enabled: !value,
            title: widget.title,
            orientation: CameraOrientations.portrait_up,
            showCloseButton: widget._showCloseButton,
          ),
        },
      ),
    );
  }
}
