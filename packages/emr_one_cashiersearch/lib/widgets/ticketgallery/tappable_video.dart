import 'package:emr_one_cashiersearch/widgets/ticketgallery/video_player.dart';
import 'package:flutter/material.dart';

class TappableVideo extends StatefulWidget {
  const TappableVideo({
    required this.url,
    super.key,
  });

  final String url;

  @override
  State<TappableVideo> createState() => _TappableVideoState();
}

class _TappableVideoState extends State<TappableVideo> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        await showDialog<void>(
          context: context,
          builder: (BuildContext context) {
            return Dialog(
              child: AspectRatio(
                aspectRatio: 16 / 9,
                child: VideoPlayerWidget(
                  url: widget.url,
                ),
              ),
            );
          },
        );
      },
      child: Icon(
        Icons.play_circle_fill,
        size: 64,
        color: Theme.of(context).colorScheme.outline,
      ),
    );
  }
}
