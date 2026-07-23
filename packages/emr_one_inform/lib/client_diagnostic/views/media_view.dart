import 'dart:io';

import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_inform/client_diagnostic/controller/client_diagnostic_media_controller.dart';
import 'package:emr_one_inform/client_diagnostic/models/diagnostic_media_model.dart';
import 'package:emr_one_inform/client_diagnostic/views/video_player_widget.dart';
import 'package:emr_one_inform/media_search/models/media_item.dart';
import 'package:emr_one_inform/screens/base/base_page.dart';
import 'package:flutter/material.dart';

class DiagnosticMediaView extends BasePage<DiagnosticMediaController> {
  DiagnosticMediaView({
    required this.workRequestId,
    required this.instanceId,
    super.key,
  });

  final String workRequestId;
  final String instanceId;

  static const double _minDimension = 200;

  @override
  Widget? getActionButton(BuildContext context) => null;

  @override
  PreferredSizeWidget? getAppBar(BuildContext context) => null;

  @override
  String getTitle(BuildContext context) =>
      '${context.l10n.media} - $workRequestId';

  @override
  void initState(BuildContext context) {
    controller.instanceId = instanceId;
    controller.getMediaItems();
  }

  @override
  Widget widgetBuilder(BuildContext context) {
    if (controller.isBusy) return _loadingIndicator;
    return _body(context);
  }

  Widget _body(BuildContext context) => (controller.mediaItems.isNotEmpty)
      ? SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Wrap(
              spacing: 10,
              runSpacing: 10,
              children: controller.mediaItems
                  .map<Widget>((state) => _thumbnailWidget(context, state))
                  .toList(),
            ),
          ),
        )
      : const Align(
          child: Center(child: Text('No media found for work request...')),
        );

  Widget get _loadingIndicator => const LinearProgressIndicator();

  Widget _thumbnailWidget(BuildContext context, DiagnosticMedia state) =>
      GestureDetector(
        onTap: () => _showMediaItemFullRes(context, state),
        child: _loadingThumbnailWidget(context, state),
      );

  Widget _loadingThumbnailWidget(BuildContext context, DiagnosticMedia state) {
    Widget thumbnailImage;

    if (state.imageData != null || state.localPath.isNotEmpty) {
      thumbnailImage = Container(
        width: _minDimension,
        height: _minDimension,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.all(Radius.circular(8)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withAlpha(128),
              spreadRadius: 2,
              blurRadius: 3,
            ),
          ],
          image: DecorationImage(
            fit: BoxFit.contain,
            image: state.imageData != null
                ? Image.memory(state.imageData!).image
                : Image.file(File(state.localPath)).image,
          ),
        ),
      );
    } else {
      thumbnailImage = Container(
        color: Colors.grey.shade400,
        width: _minDimension,
        height: _minDimension,
        child: const Icon(
          Icons.image_not_supported,
          color: Colors.black,
        ),
      );
    }

    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: (state.mediaType == MediaTypeName.video)
          ? Stack(
              alignment: Alignment.center,
              children: [thumbnailImage, _playButton(context, state)],
            )
          : thumbnailImage,
    );
  }

  Widget _playButton(BuildContext context, DiagnosticMedia mediaItem) =>
      FloatingActionButton.extended(
        heroTag: mediaItem.instanceUuid,
        icon: const Icon(Icons.play_arrow),
        label: const Text('Play Video'),
        onPressed: () => _playVideo(context, mediaItem),
      );

  Future<void> _playVideo(BuildContext context, DiagnosticMedia video) async {
    return showDialog(
      context: context,
      builder: (ctx) {
        return Center(
          child: Stack(
            alignment: Alignment.topRight,
            children: [
              InteractiveViewer(
                child: VideoPlayerWidget(
                  videoBytes: video.imageData,
                  localPath: video.localPath,
                ),
              ),
              _closeButton(context),
            ],
          ),
        );
      },
    );
  }

  Future<void> _showMediaItemFullRes(
    BuildContext context,
    DiagnosticMedia captureMedia,
  ) async {
    switch (captureMedia.mediaType) {
      case MediaTypeName.image:
        return showDialog<void>(
          context: context,
          builder: (context) {
            return Center(
              child: Stack(
                alignment: Alignment.topRight,
                children: [
                  InteractiveViewer(
                    child: _getImage(context, captureMedia),
                  ),
                  _closeButton(context),
                ],
              ),
            );
          },
        );
      case MediaTypeName.video:
        return _playVideo(context, captureMedia);
    }
  }

  Widget _closeButton(BuildContext context) => FloatingActionButton.small(
        onPressed: () => Navigator.pop(context),
        heroTag: 'video-player',
        child: const Icon(Icons.close),
      );

  Widget _getImage(BuildContext context, DiagnosticMedia captureMedia) {
    final media = captureMedia.imageData;
    if (media == null) {
      return SizedBox(
        width: 300,
        height: 600,
        child: Image.file(File(captureMedia.localPath)),
      );
    } else {
      return SizedBox(
        width: 300,
        height: 600,
        child: Image.memory(media),
      );
    }
  }
}
