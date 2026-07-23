import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_forms_engine/emr_one_forms_engine.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'media_dialog.dart';

class QuestionMediaCapture extends StatefulWidget {
  final String componentId;
  final List<CapturedMedia>? existingMediaPaths;
  final void Function(
    List<CapturedMedia> newMedia,
    List<CapturedMedia> removedMedia,
  )
  onSave;

  const QuestionMediaCapture({
    super.key,
    this.existingMediaPaths,
    required this.componentId,
    required this.onSave,
  });

  @override
  State<StatefulWidget> createState() => _QuestionMediaCaptureState();
}

class _QuestionMediaCaptureState extends State<QuestionMediaCapture> {
  final List<CapturedMedia> _capturedMedia = [];
  late List<CapturedMedia> _existingMedia = [];
  late final List<CapturedMedia> _deletedMedia = [];
  late final IMediaService _mediaService;
  Offset? _tapPosition;

  static const double _buttonSize = 115;
  static const double _buttonSpacing = 15;
  static const double _buttonRunSpacing = 20;
  static const double _padding = 20;

  static const double _dialogMsgSize = 14;
  static const double _dialogFontSize = 18;

  @override
  void initState() {
    _existingMedia = widget.existingMediaPaths ?? [];

    _mediaService = ServiceContainer().get<IMediaService>();

    super.initState();
  }

  Future<void> _showMediaTypeSelector(
    CapturedMediaType type,
    String typeName,
  ) async {
    final source = await showDialog<CapturedMediaSource>(
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
                StringLiteral.getChooseSourceLabel(typeName),
                style: const TextStyle(fontSize: _dialogMsgSize),
              ),
              const SizedBox(height: 20),
              Container(height: 1, color: FormColors.lightGrey),
              if (kIsWeb) ...[
                TextButton(
                  onPressed: () => context.pop(CapturedMediaSource.gallery),
                  style: TextButton.styleFrom(
                    foregroundColor: FormColors.information,
                    textStyle: const TextStyle(fontSize: _dialogFontSize),
                  ),
                  child: const Text(StringLiteral.UploadMedia),
                ),
              ] else ...[
                TextButton(
                  onPressed: () => context.pop(CapturedMediaSource.camera),
                  style: TextButton.styleFrom(
                    foregroundColor: FormColors.information,
                    textStyle: const TextStyle(fontSize: _dialogFontSize),
                  ),
                  child: const Text(StringLiteral.Camera),
                ),
                Container(height: 1, color: FormColors.lightGrey),
                TextButton(
                  onPressed: () => context.pop(CapturedMediaSource.gallery),
                  style: TextButton.styleFrom(
                    foregroundColor: FormColors.information,
                    textStyle: const TextStyle(fontSize: _dialogFontSize),
                  ),
                  child: const Text(StringLiteral.Gallery),
                ),
              ],
            ],
          ),
        ),
      ),
    );

    if (source != null) {
      final media = await _mediaService.pickMedia(
        componentId: widget.componentId,
        type: type,
        source: source,
      );
      if (media != null) {
        setState(() {
          _capturedMedia.add(media);
        });
      }
    }
  }

  Widget _buildAddButton(CapturedMediaType type, IconData icon) {
    return Container(
      width: _buttonSize,
      height: _buttonSize,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2)),
      ),
      child: Material(
        color: FormColors.buttonColorGray,
        child: InkWell(
          onTap: () => _showMediaTypeSelector(
            type,
            StringLiteral.CapturedMediaTypes[type]!,
          ),
          child: Stack(
            children: [
              Center(child: Icon(icon)),
              Align(
                alignment: const FractionalOffset(1.1, 1.1),
                child: Container(
                  width: _buttonSize * .4,
                  height: _buttonSize * .4,
                  decoration: BoxDecoration(
                    color: FormColors.buttonColorBlue,
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Text(
                      '+',
                      style: TextStyle(color: FormColors.white),
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

  Future<void> _displayMediaDialog(CapturedMedia media) async {
    await showDialog(
      context: context,
      builder: (ctx) => MediaDisplayDialog(type: media.type, media: media),
    );
  }

  void _showDeleteMenu(CapturedMedia media) {
    final overlay = Overlay.of(context).context.findRenderObject() as RenderBox;

    showMenu(
      context: context,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      position: RelativeRect.fromRect(
        _tapPosition! & const Size(40, 40),
        Offset.zero & overlay.size,
      ),
      items: [
        PopupMenuItem(
          onTap: () => _removeMedia(media),
          child: Row(
            children: [
              Icon(Icons.delete_outline, color: FormColors.buttonColorBlue),
              const SizedBox(width: 10),
              Text(
                StringLiteral.Delete,
                style: TextStyle(color: FormColors.buttonColorBlue),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Iterable<Widget> _getMediaButtons(
    List<CapturedMedia> media,
    bool allowDelete,
  ) {
    var border = BorderSide.none;
    if (allowDelete) {
      border = BorderSide(color: FormColors.buttonColorBlue, width: 2);
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
          color: FormColors.buttonColorGray,
          child: InkWell(
            onTap: () => _displayMediaDialog(m),
            onTapDown: (details) => _tapPosition = details.globalPosition,
            onLongPress: allowDelete ? () => _showDeleteMenu(m) : null,
            child: Align(
              alignment: Alignment.center,
              child: _mediaService.imageForMedia(
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

  @override
  Widget build(BuildContext context) {
    List<Widget> rowItems = [];

    rowItems.addAll(_getMediaButtons(_existingMedia, true));
    rowItems.addAll(_getMediaButtons(_capturedMedia, true));

    rowItems.add(
      _buildAddButton(CapturedMediaType.image, Icons.image_outlined),
    );
    rowItems.add(
      _buildAddButton(
        CapturedMediaType.video,
        Icons.video_camera_back_outlined,
      ),
    );

    return SafeArea(
      child: Scaffold(
        appBar: (FormsEngine().isAppBarRequired && !kIsWeb)
            ? AppBar(
                leading: BackButton(color: FormColors.white),
                title: Text(
                  'Media',
                  style: TextStyle(fontSize: 20, color: FormColors.white),
                ),
                titleSpacing: 0,
                backgroundColor: Colors.black,
              )
            : null,
        body: PopScope(
          canPop: false,
          onPopInvokedWithResult: (didPop, _) {
            if (didPop) {
              if (_capturedMedia.isNotEmpty || _deletedMedia.isNotEmpty) {
                widget.onSave(_capturedMedia, _deletedMedia);
              }
            } else {
              context.pop();
            }
          },
          child: Column(
            children: [
              if (FormsEngine().isAppBarRequired && kIsWeb)
                ColoredBox(
                  color: const Color.fromARGB(255, 0, 58, 112),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Wrap(
                              children: [
                                const BackButton(color: Colors.white),
                                Text(
                                  'Media',
                                  style: const TextStyle(
                                    fontFamily: 'QanelasSoft',
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                    package: 'emr_one_core',
                                  ).copyWith(color: Colors.white),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
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
        ),
      ),
    );
  }

  _removeMedia(CapturedMedia media) {
    if (_capturedMedia.contains(media)) {
      setState(() => _capturedMedia.remove(media));
    }
    if (_existingMedia.contains(media)) {
      _deletedMedia.add(media);
      setState(() => _existingMedia.remove(media));
    }
  }
}
