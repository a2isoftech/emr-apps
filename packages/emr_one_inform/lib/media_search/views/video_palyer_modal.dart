import 'dart:io';

import 'package:chewie/chewie.dart';
import 'package:cross_file/cross_file.dart';
import 'package:emr_one_inform/media_search/models/media_data.dart';
import 'package:emr_one_inform/media_search/models/media_item.dart';
import 'package:emr_one_inform/media_search/services/media_items_service.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:synchronized/synchronized.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerPopup extends StatefulWidget {
  const VideoPlayerPopup({
    required this.videoItem,
    required this.service,
    super.key,
  });
  final MediaItem videoItem;
  final MediaItemsService service;

  @override
  State<StatefulWidget> createState() => _VideoPlayerPopupState();
}

class _VideoPlayerPopupState extends State<VideoPlayerPopup> {
  VideoPlayerController? _playerController;
  ChewieController? _controlsController;
  late Lock _fileWriteLock;

  Future<void>? _loadVideoPlayerFuture;
  RandomAccessFile? _videoFile;
  double? _indicatorFraction;
  bool _hovering = false;

  Future<void> _loadVideoPlayer() async {
    if (kIsWeb) {
      await widget.service.downloadMediaItem(
        widget.videoItem,
        onProgress: _downloadProgress,
        onDone: _webDownloadDone,
      );
    } else {
      _fileWriteLock = Lock();

      await widget.service.downloadMediaItem(
        widget.videoItem,
        onProgress: _appDownloadProgress,
      );

      // wait for any writes in the queue to empty
      await _fileWriteLock.synchronized(() async => _videoFile!.close());

      _playerController = VideoPlayerController.file(File(_videoFile!.path));
    }

    await _playerController!.initialize();

    _controlsController = ChewieController(
      videoPlayerController: _playerController!,
      autoPlay: true,
    );
  }

  void _downloadProgress(MediaDownloadProgress progress) {
    if (progress.totalBytes != null && progress.totalBytes! > 0) {
      setState(() {
        _indicatorFraction = progress.byteCount / progress.totalBytes!;
      });
    }
  }

  Future<void> _appDownloadProgress(MediaDownloadProgress progress) async {
    await _fileWriteLock.synchronized(() async {
      if (_videoFile == null) {
        final videoFilePath =
            '${(await getTemporaryDirectory()).path}/${progress.fileName}';
        _videoFile = await File(videoFilePath).open(mode: FileMode.append);
      }

      await _videoFile!.writeFrom(progress.bytes);
    });

    _downloadProgress(progress);
  }

  Future<void> _webDownloadDone(MediaData data) async {
    final blob = XFile.fromData(data.bytes, mimeType: data.mimeType);
    _playerController = VideoPlayerController.networkUrl(Uri.parse(blob.path));
  }

  @override
  void dispose() {
    _playerController?.dispose();
    _controlsController?.dispose();
    if (_videoFile != null) {
      File(_videoFile!.path).delete();
    }
    super.dispose();
  }

  Widget get _videoPlayer => AspectRatio(
        aspectRatio: _playerController!.value.aspectRatio,
        child: Chewie(controller: _controlsController!),
      );

  Widget get _closeButton => Visibility(
        visible: _hovering,
        child: FloatingActionButton.small(
          onPressed: () => Navigator.pop(context),
          heroTag: 'video-player',
          child: const Icon(Icons.close),
        ),
      );

  @override
  Widget build(BuildContext context) {
    _loadVideoPlayerFuture ??= _loadVideoPlayer();

    return Dialog(
      child: MouseRegion(
        onEnter: (evt) => setState(() => _hovering = true),
        onExit: (evt) => setState(() => _hovering = false),
        child: FutureBuilder(
          future: _loadVideoPlayerFuture,
          builder: (ctx, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              if (snapshot.hasError) {
                return const Text('Failed to load video');
              } else {
                return Stack(
                  alignment: Alignment.topRight,
                  children: [_videoPlayer, _closeButton],
                );
              }
            } else {
              return Padding(
                padding: const EdgeInsets.all(15),
                child: Center(
                  child: CircularProgressIndicator(
                    value: _indicatorFraction,
                  ),
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
