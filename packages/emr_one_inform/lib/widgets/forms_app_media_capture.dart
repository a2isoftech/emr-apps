import 'dart:io';

import 'package:chewie/chewie.dart';
import 'package:emr_flutter_theme/emr_flutter_theme.dart';
import 'package:emr_one_core/config/app_config.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_inform/constants/constants_export.dart';
import 'package:emr_one_inform/models/form_models.dart';
import 'package:emr_one_inform/widgets/forms_app_widgets.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';
import 'package:uuid/uuid.dart';
import 'package:video_player/video_player.dart';
import 'package:video_thumbnail/video_thumbnail.dart';

class MediaCapture extends StatefulWidget with AppBarExtender {
  const MediaCapture({
    required this.onSave,
    super.key,
    this.existingMediaPaths,
  });

  final List<WorkRequestCapturedMedia>? existingMediaPaths;
  final void Function(List<WorkRequestCapturedMedia> newMedia) onSave;

  @override
  State<MediaCapture> createState() => _MediaCaptureState();

  @override
  bool hideDefaultAppBar() => true;
}

class _MediaCaptureState extends State<MediaCapture> {
  static const double _buttonSize = 115;
  static const double _buttonSpacing = 15;
  static const double _buttonRunSpacing = 20;
  static const double _padding = 20;

  static const double _dialogMsgSize = 14;
  static const double _dialogFontSize = 18;

  static final workRequestCapturedMediaTypes = {
    WorkRequestCapturedMediaType.image: 'image',
    WorkRequestCapturedMediaType.video: 'video',
  };

  static String getChooseSourceLabel(String type) => 'Select source for $type';

  static const String camera = 'Camera';
  static const String gallery = 'Gallery';
  static const String uploadMedia = 'Upload Media';
  static const String delete = 'Delete';

  late final bool isWeb;

  late Offset? _tapPosition;
  static final _sourceMap = {
    WorkRequestCapturedMediaSource.camera: ImageSource.camera,
    WorkRequestCapturedMediaSource.gallery: ImageSource.gallery,
  };
  final List<WorkRequestCapturedMedia> _capturedMedia = [];

  late List<WorkRequestCapturedMedia> _existingMedia = [];
  List<NewWorkRequestMedia>? newWorkRequestMedia = [];

  @override
  void initState() {
    _existingMedia = widget.existingMediaPaths ?? [];
    super.initState();

    final config = Provider.of<AppConfig>(context, listen: false);
    isWeb = config.isWeb;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: isWeb ? null : defaultAppBar(context: context, title: 'Media'),
        body: _body(),
      ),
    );
  }

  Widget _body() {
    final rowItems = <Widget>[];

    rowItems.addAll(_getMediaButtons(_existingMedia, false));
    rowItems.addAll(_getMediaButtons(_capturedMedia, true));

    rowItems.add(
      _buildAddButton(
        WorkRequestCapturedMediaType.image,
        Icons.image_outlined,
      ),
    );
    rowItems.add(
      _buildAddButton(
        WorkRequestCapturedMediaType.video,
        Icons.video_camera_back_outlined,
      ),
    );

    return PopScope(
      onPopInvokedWithResult: _onPop,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (isWeb) getPageHeader('Media'),
          Padding(
            padding: const EdgeInsets.all(_padding),
            child: Wrap(
              spacing: _buttonSpacing,
              runSpacing: _buttonRunSpacing,
              children: rowItems,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAddButton(WorkRequestCapturedMediaType type, IconData icon) {
    return Container(
      width: _buttonSize,
      height: _buttonSize,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2)),
      ),
      child: Material(
        color: FormAppColors.lightGrey,
        child: InkWell(
          onTap: () => _showMediaTypeSelector(
            type,
            workRequestCapturedMediaTypes[type]!,
          ),
          child: Stack(
            children: [
              Center(child: Icon(icon, color: FormAppColors.black)),
              Align(
                alignment: const FractionalOffset(1.1, 1.1),
                child: Container(
                  width: _buttonSize * .4,
                  height: _buttonSize * .4,
                  decoration: const BoxDecoration(
                    color: EmrColours.secondaryCyan,
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Text(
                      '+',
                      style: TextStyle(color: FormAppColors.white),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _showMediaTypeSelector(
    WorkRequestCapturedMediaType type,
    String typeName,
  ) async {
    final source = await showDialog<WorkRequestCapturedMediaSource>(
      context: context,
      builder: (context) => Dialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                getChooseSourceLabel(typeName),
                style: const TextStyle(
                  // color: FormAppColors.black,
                  fontSize: _dialogMsgSize,
                ),
              ),
              const SizedBox(height: 20),
              Container(height: 1, color: FormAppColors.lightGrey),
              if (!isWeb) ...[
                TextButton(
                  onPressed: () =>
                      context.pop(WorkRequestCapturedMediaSource.camera),
                  style: TextButton.styleFrom(
                    foregroundColor: EmrColours.secondaryCyan,
                    textStyle: const TextStyle(fontSize: _dialogFontSize),
                  ),
                  child: const Text(camera),
                ),
                Container(height: 1, color: FormAppColors.lightGrey),
              ],
              TextButton(
                onPressed: () =>
                    context.pop(WorkRequestCapturedMediaSource.gallery),
                style: TextButton.styleFrom(
                  foregroundColor: EmrColours.secondaryCyan,
                  textStyle: const TextStyle(fontSize: _dialogFontSize),
                ),
                child: Text(isWeb ? uploadMedia : gallery),
              ),
            ],
          ),
        ),
      ),
    );

    if (source != null) {
      final media = await pickMedia(type: type, source: source);
      if (media != null) {
        setState(() {
          _capturedMedia.add(media);
        });
      }
    }
  }

  Future<void> _onPop(_, __) async {
    if (_capturedMedia.isNotEmpty) {
      widget.onSave(_capturedMedia);
    }
  }

  Iterable<Widget> _getMediaButtons(
    List<WorkRequestCapturedMedia> media,
    bool allowDelete,
  ) {
    var border = BorderSide.none;
    if (allowDelete) {
      border = const BorderSide(color: EmrColours.secondaryCyan, width: 2);
    }

    return media.map(
      (m) => Container(
        width: _buttonSize,
        height: _buttonSize,
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(2),
            side: border,
          ),
        ),
        child: Material(
          color: FormAppColors.lightGrey,
          child: InkWell(
            onTap: () => _displayMediaDialog(m),
            onTapDown: (details) => _tapPosition = details.globalPosition,
            onLongPress: allowDelete ? () => _showDeleteMenu(m) : null,
            child: Align(
              child: displayMedia(
                m,
                width: _buttonSize,
                height: _buttonSize,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _displayMediaDialog(WorkRequestCapturedMedia media) {
    return showDialog<void>(
      context: context,
      builder: (ctx) => MediaDisplayDialog(
        isWeb: isWeb,
        type: media.type,
        file: media.file,
      ),
    );
  }

  void _showDeleteMenu(WorkRequestCapturedMedia media) {
    final overlay =
        Overlay.of(context).context.findRenderObject() as RenderBox?;

    if (overlay == null) return;

    showMenu(
      context: context,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      position: RelativeRect.fromRect(
        _tapPosition! & const Size(40, 40),
        Offset.zero & overlay.size,
      ),
      items: [
        PopupMenuItem<void>(
          onTap: () => setState(() => _capturedMedia.remove(media)),
          child: const Row(
            children: [
              Icon(
                Icons.delete_outline,
                color: EmrColours.secondaryCyan,
              ),
              SizedBox(width: 10),
              Text(
                delete,
                style: TextStyle(color: EmrColours.secondaryCyan),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Future<WorkRequestCapturedMedia?> pickMedia({
    required WorkRequestCapturedMediaType type,
    required WorkRequestCapturedMediaSource source,
  }) {
    switch (type) {
      case WorkRequestCapturedMediaType.image:
        return pickImage(source: source);
      case WorkRequestCapturedMediaType.video:
        return pickVideo(source: source);
    }
  }

  Future<WorkRequestCapturedMedia?> pickImage({
    required WorkRequestCapturedMediaSource source,
  }) async {
    final picker = ImagePicker();
    final img = await picker.pickImage(
      source: _sourceMap[source]!,
    );

    if (img == null) {
      return null;
    }
    return WorkRequestCapturedMedia(
      type: WorkRequestCapturedMediaType.image,
      file: img,
      uniqueId: const Uuid().v4(),
    );
  }

  Future<WorkRequestCapturedMedia?> pickVideo({
    required WorkRequestCapturedMediaSource source,
  }) async {
    final picker = ImagePicker();
    final video = await picker.pickVideo(
      source: _sourceMap[source]!,
      maxDuration: const Duration(seconds: 10),
    );

    if (video == null) {
      return null;
    }
    final thumb =
        isWeb ? null : await VideoThumbnail.thumbnailFile(video: video.path);

    return WorkRequestCapturedMedia(
      type: WorkRequestCapturedMediaType.video,
      file: video,
      thumbnail: isWeb
          ? null
          : XFile(
              thumb!,
              mimeType: 'application/png',
              name: '${video.name}.thumb.png',
            ),
      uniqueId: const Uuid().v4(),
    );
  }

  Widget displayMedia(
    WorkRequestCapturedMedia media, {
    double? width,
    double? height,
  }) =>
      isWeb
          ? media.type == WorkRequestCapturedMediaType.image
              ? Image.network(
                  media.file!.path,
                  width: width,
                  height: height,
                )
              : Image.asset(
                  FormAppAssetsPath.video,
                  package: FormAppStringLiteral.PackageName,
                )
          : Image.file(
              File((media.thumbnail ?? media.file)!.path),
              width: width,
              height: height,
            );
}

enum WorkRequestCapturedMediaType { image, video }

enum WorkRequestCapturedMediaSource { camera, gallery }

class WorkRequestCapturedMedia {
  WorkRequestCapturedMedia({
    required this.type,
    required this.uniqueId,
    this.file,
    this.thumbnail,
  });
  final WorkRequestCapturedMediaType type;
  XFile? file;
  late final bool isDownloading;
  XFile? thumbnail;
  final String uniqueId;
}

class MediaDisplayDialog extends StatefulWidget {
  const MediaDisplayDialog({
    required this.isWeb,
    required this.type,
    required this.file,
    super.key,
  });
  final WorkRequestCapturedMediaType? type;
  final XFile? file;
  final bool isWeb;

  @override
  State<StatefulWidget> createState() => _MediaDisplayDialogState();
}

class _MediaDisplayDialogState extends State<MediaDisplayDialog> {
  late VideoPlayerController _videoController;
  ChewieController? _videoControlsController;
  late String _path;
  late WorkRequestCapturedMediaType _type;
  late bool lastVideoPlayingState;

  @override
  void initState() {
    super.initState();

    _type = widget.type ?? WorkRequestCapturedMediaType.video;

    if (_type == WorkRequestCapturedMediaType.video) {
      _videoController = widget.isWeb
          ? VideoPlayerController.networkUrl(Uri.parse(widget.file!.path))
          : VideoPlayerController.file(File(widget.file!.path));
      _videoController.initialize().then(
            (_) => setState(() {
              _videoControlsController = ChewieController(
                videoPlayerController: _videoController,
                autoPlay: true,
              );
            }),
          );
    } else {
      _path = widget.file!.path;
    }
  }

  @override
  void dispose() {
    if (_type == WorkRequestCapturedMediaType.video) {
      _videoController.dispose();
      _videoControlsController?.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Widget child;

    if (widget.type == WorkRequestCapturedMediaType.image) {
      child = widget.isWeb
          ? Image.network(
              _path,
              fit: BoxFit.fitHeight,
            )
          : Image.file(
              File(_path),
              fit: BoxFit.fitWidth,
            );
    } else if (widget.type == WorkRequestCapturedMediaType.video) {
      child = _videoControlsController != null
          ? AspectRatio(
              aspectRatio: _videoController.value.aspectRatio,
              child: Chewie(controller: _videoControlsController!),
            )
          : const Padding(
              padding: EdgeInsets.all(20),
              child: CircularProgressIndicator(
                color: EmrColours.secondaryCyan,
              ),
            );
    } else {
      throw Exception('${widget.type}" is not a displayable dialog');
    }

    return AlertDialog(
      insetPadding: const EdgeInsets.all(5),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
      content: Expanded(
        child: child,
      ),
      actions: [
        TextButton(
          onPressed: () => context.pop(),
          style: TextButton.styleFrom(
            foregroundColor: EmrColours.secondaryCyan,
          ),
          child: Text(context.l10n.close),
        ),
      ],
    );
  }
}
