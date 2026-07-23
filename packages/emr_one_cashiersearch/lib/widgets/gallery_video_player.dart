import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class GalleryVideoPlayer extends StatefulWidget {
  const GalleryVideoPlayer({this.videoUrl, super.key});
  final String? videoUrl;

  @override
  State<GalleryVideoPlayer> createState() => _VideoPlayerWidgetState();
}

class _VideoPlayerWidgetState extends State<GalleryVideoPlayer> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.networkUrl(
      Uri.parse(
        widget.videoUrl ?? '',
      ),
    )..initialize().then((_) {
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Dialog(
        insetPadding: EdgeInsets.zero,
        shape: const RoundedRectangleBorder(),
        backgroundColor: Colors.black,
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(8),
              child: Center(
                child: _controller.value.isInitialized
                    ? AspectRatio(
                        aspectRatio: _controller.value.aspectRatio,
                        child: VideoPlayer(_controller),
                      )
                    : Container(),
              ),
            ),
            Center(
              child: FloatingActionButton(
                onPressed: () {
                  setState(() {
                    _controller.value.isPlaying
                        ? _controller.pause()
                        : _controller.play();
                  });
                },
                child: Icon(
                  _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
                ),
              ),
            ),
            Positioned(
              top: 0,
              right: 0,
              child: IconButton(
                icon: const Icon(Icons.close),
                color: Colors.white,
                onPressed: () => context.pop(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
