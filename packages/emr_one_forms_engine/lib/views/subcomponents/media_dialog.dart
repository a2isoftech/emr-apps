import 'dart:io';

import 'package:chewie/chewie.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_forms_engine/core/constants/constants.dart';
import 'package:emr_one_forms_engine/core/models/service/captured_media.dart';
import 'package:emr_one_forms_engine/core/services/interfaces/idatabase_manager.dart';
import 'package:emr_one_forms_engine/core/services/service_container.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:universal_html/html.dart' as html;
import 'package:video_player/video_player.dart';

class MediaDisplayDialog extends StatefulWidget {
  final CapturedMediaType? type;
  final CapturedMedia? media;

  const MediaDisplayDialog({
    super.key,
    required this.type,
    required this.media,
  });

  @override
  State<StatefulWidget> createState() => _MediaDisplayDialogState();
}

// need to abstract this and remove dart:io ref for web
class _MediaDisplayDialogState extends State<MediaDisplayDialog> {
  late VideoPlayerController _videoController;
  ChewieController? _videoControlsController;
  late CapturedMediaType _type;
  late bool lastVideoPlayingState;

  @override
  void initState() {
    super.initState();

    _type = widget.type ?? CapturedMediaType.video;

    if (_type == CapturedMediaType.video) {
      if (!kIsWeb) {
        _videoController = VideoPlayerController.file(
          File(widget.media!.file!.path),
        );
      } else {
        final databaseManager = ServiceContainer().get<IDatabaseManager>();
        final stream = databaseManager.getImageData(widget.media!.uniqueId);
        if (stream != null) {
          final blob = html.Blob(stream);
          final url = html.Url.createObjectUrlFromBlob(blob);
          _videoController = VideoPlayerController.networkUrl(Uri.parse(url));
        } else {
          _videoController = VideoPlayerController.networkUrl(
            Uri.parse(widget.media!.file!.path),
          );
        }
      }

      _videoController.initialize().then(
        (_) => setState(() {
          _videoControlsController = ChewieController(
            videoPlayerController: _videoController,
            autoPlay: true,
          );
        }),
      );
    }
  }

  @override
  void dispose() {
    if (_type == CapturedMediaType.video) {
      _videoController.dispose();
      _videoControlsController?.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Widget child;

    if (widget.type == CapturedMediaType.image) {
      if (!kIsWeb) {
        child = Image.file(
          File((widget.media!.thumbnail ?? widget.media!.file)!.path),
        );
      } else {
        final databaseManager = ServiceContainer().get<IDatabaseManager>();
        final stream = databaseManager.getImageData(widget.media!.uniqueId);
        child = stream != null
            ? Image.memory(stream)
            : Image.network(widget.media!.file!.path);
      }
    } else if (widget.type == CapturedMediaType.video) {
      child = _videoControlsController != null
          ? AspectRatio(
              aspectRatio: _videoController.value.aspectRatio,
              child: Chewie(controller: _videoControlsController!),
            )
          : Padding(
              padding: const EdgeInsets.all(20),
              child: CircularProgressIndicator(color: FormColors.information),
            );
    } else {
      throw Exception('${widget.type}" is not a displayable dialog');
    }

    return AlertDialog(
      insetPadding: const EdgeInsets.all(5),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
      content: Column(children: [Expanded(child: child)]),
      actions: [
        TextButton(
          onPressed: () => context.pop(),
          style: TextButton.styleFrom(
            foregroundColor: FormColors.buttonColorBlue,
          ),
          child: const Text(StringLiteral.Close),
        ),
      ],
    );
  }
}
