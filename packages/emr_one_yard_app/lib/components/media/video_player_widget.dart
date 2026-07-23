import 'dart:io';

import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_yard_app/models/media/group_media.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart' as path;
import 'package:video_player/video_player.dart';

class VideoPlayerWidget extends StatefulWidget {
  const VideoPlayerWidget({
    required this.mediaItem,
    required this.yardCode,
    super.key,
  });

  final MediaItem mediaItem;
  final String yardCode;

  @override
  State<VideoPlayerWidget> createState() => _VideoPlayerWidgetState();
}

class _VideoPlayerWidgetState extends State<VideoPlayerWidget> {
  VideoPlayerController? _videoController;
  bool _isVideoInitialized = false;

  @override
  void initState() {
    super.initState();
    _initVideo();
  }

  Future<void> _initVideo() async {
    final headers = {
      'Authorization': 'Bearer ${widget.mediaItem.token}',
      'X-Yard-Code': widget.yardCode,
    };

    final fileName = path.basename(widget.mediaItem.fullUrl);
    final localPath = path.join(widget.mediaItem.localDir, fileName);

    try {
      if (widget.mediaItem.localDir.isNotEmpty &&
          File(localPath).existsSync()) {
        _videoController = VideoPlayerController.file(File(localPath));
      } else {
        _videoController = VideoPlayerController.networkUrl(
          Uri.parse(widget.mediaItem.fullUrl),
          httpHeaders: headers,
        );
      }

      await _videoController!.initialize();
      setState(() => _isVideoInitialized = true);
    } on Exception catch (e) {
      EmrLogger.error(
        'Failed to initialize video controller: $e',
        error: e,
        stackTrace: StackTrace.current,
        source: 'VideoPlayerWidget',
      );
      debugPrint('Failed to initialize video controller: $e');
    }
  }

  void _togglePlayPause() {
    if (_videoController == null) return;
    setState(() {
      _videoController!.value.isPlaying
          ? _videoController!.pause()
          : _videoController!.play();
    });
  }

  @override
  void dispose() {
    _videoController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _togglePlayPause,
      child: Stack(
        fit: StackFit.expand,
        alignment: Alignment.center,
        children: [
          // Video Player
          if (_isVideoInitialized && _videoController != null)
            AspectRatio(
              aspectRatio: _videoController!.value.aspectRatio,
              child: VideoPlayer(_videoController!),
            )
          else
            const Center(child: CircularProgressIndicator()),

          // Play button overlay
          if (_isVideoInitialized &&
              _videoController != null &&
              !_videoController!.value.isPlaying)
            Icon(
              Icons.play_circle_fill,
              size: 80,
              color: Theme.of(context).colorScheme.onSurface,
            ),

          // Progress bar
          if (_isVideoInitialized && _videoController != null)
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: VideoProgressIndicator(
                _videoController!,
                allowScrubbing: true,
                colors: VideoProgressColors(
                  playedColor: Theme.of(context).colorScheme.error,
                  bufferedColor: Theme.of(context).colorScheme.onErrorContainer,
                  backgroundColor: Theme.of(context).colorScheme.surface,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
