// import 'dart:html' as html;
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:universal_html/html.dart' as html;
import 'package:video_player/video_player.dart';

class VideoPlayerWidget extends StatefulWidget {
  const VideoPlayerWidget({
    required this.videoBytes,
    this.localPath = '',
    super.key,
  });
  final Uint8List? videoBytes;
  final String localPath;

  @override
  State<VideoPlayerWidget> createState() => _VideoPlayerWidgetState();
}

class _VideoPlayerWidgetState extends State<VideoPlayerWidget> {
  late VideoPlayerController _controller;
  late html.VideoElement _videoElement;

  @override
  void initState() {
    super.initState();
    _videoElement = html.VideoElement();
    if (widget.videoBytes != null) {
      final blob = html.Blob([widget.videoBytes]);
      final url = html.Url.createObjectUrl(blob);
      _videoElement.src = url;
    } else if (widget.localPath.isNotEmpty) {
      _videoElement.src = widget.localPath;
    }

    _initializeVideoPlayer();
  }

  @override
  void dispose() {
    _controller.dispose();
    _videoElement.pause();
    _videoElement.removeAttribute('src');
    html.Url.revokeObjectUrl(_videoElement.src);
    super.dispose();
  }

  Future<void> _initializeVideoPlayer() async {
    if (_videoElement.src.isNotEmpty) {
      _controller =
          VideoPlayerController.networkUrl(Uri.parse(_videoElement.src));
      try {
        await _controller.initialize();
        await _controller.setLooping(true);
        await _controller.play();
        setState(() {});
      } catch (e) {
        //issue with path
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    if (_controller.value.isInitialized) {
      return AspectRatio(
        aspectRatio: _controller.value.aspectRatio,
        child: VideoPlayer(_controller),
      );
    } else {
      return Container();
    }
  }
}
