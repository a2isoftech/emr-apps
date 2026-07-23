import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/models/media_file.dart';
import 'package:emr_one_yard_app/components/components.dart';
import 'package:emr_one_yard_app/controllers/media_controller.dart';
import 'package:flutter/material.dart';
import 'package:signals/signals_flutter.dart';

class MediaButtonStack extends StatefulWidget {
  const MediaButtonStack({
    required this.child,
    required this.isLoading,
    required this.enableAddMoreButton,
    required this.localDir,
    required this.mediaController,
    this.title,
    this.onMediaCapture,
    super.key,
    this.onFlagTap,
    this.customWidget,
    this.padding = const EdgeInsets.all(Insets.gutter),
    this.enableGallery = true,
  });

  final Widget child;
  final Future<bool> Function(List<MediaFile>, List<String> videoThumbnails)?
      onMediaCapture;
  final VoidCallback? onFlagTap;
  final Widget? customWidget;
  final EdgeInsets padding;
  final FlutterSignal<bool> isLoading;
  final FlutterSignal<bool> enableAddMoreButton;
  final String? title;
  final String localDir;
  final bool enableGallery;
  final MediaController mediaController;

  @override
  State<MediaButtonStack> createState() => _MediaButtonStackState();
}

class _MediaButtonStackState extends State<MediaButtonStack>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<Offset> _offsetAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );

    _offsetAnimation = Tween<Offset>(
      begin: const Offset(0, 1),
      end: Offset.zero,
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeOut,
      ),
    );

    widget.enableAddMoreButton.addListener(_handleEnableChanged);
  }

  void _handleEnableChanged() {
    if (widget.enableAddMoreButton.value) {
      _controller.forward();
    } else {
      _controller.reverse();
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Future<List<String>> getVideoThumbnails(
    List<MediaFile> files,
  ) async {
    final thumbnails = <String>[];
    for (final video in files.where((s) => s.mediaType == MediaType.video)) {
      final path = await widget.mediaController.processVideoThumbnail(
        video,
        widget.localDir,
      );
      if (path != null) {
        thumbnails.add(path);
      }
    }
    return thumbnails;
  }

  @override
  Widget build(BuildContext context) {
    return Watch(
      (context) => Stack(
        children: [
          widget.child,
          if (widget.enableAddMoreButton.value) ...[
            ModalBarrier(
              color: Theme.of(context).disabledColor,
              onDismiss: () {
                widget.enableAddMoreButton.value = false;
              },
            ),
          ],
          if (widget.isLoading.value) ...[
            Opacity(
              opacity: 0.8,
              child: ModalBarrier(
                dismissible: false,
                color: Theme.of(context).dialogTheme.backgroundColor,
              ),
            ),
            Center(
              child: SizedBox(
                width: 160,
                height: 120,
                child: Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.surface,
                    borderRadius: const BorderRadius.all(Radius.circular(5)),
                  ),
                  child: const Center(child: CircularProgressIndicator()),
                ),
              ),
            ),
          ] else ...[
            if (widget.customWidget != null &&
                !widget.enableAddMoreButton.value)
              widget.customWidget!
            else
              Align(
                alignment: Alignment.bottomCenter,
                child: SlideTransition(
                  position: _offsetAnimation,
                  child: Padding(
                    padding: widget.padding,
                    child: BottomActionButtons(
                      onCameraTap: () async {
                        final media = await MediaPickerUtils.captureFromCamera(
                          context,
                          widget.localDir,
                          widget.title,
                        );
                        final viedoThumbnails = await getVideoThumbnails(media);
                        await widget.onMediaCapture
                            ?.call(media, viedoThumbnails);
                      },
                      onGalleryTap: widget.enableGallery
                          ? () async {
                              final media =
                                  await MediaPickerUtils.pickFromGallery(
                                context,
                                widget.localDir,
                                MediaType.image,
                                widget.isLoading,
                              );
                              await widget.onMediaCapture?.call(media, []);
                            }
                          : null,
                      onVideoTap: widget.enableGallery
                          ? () async {
                              final media =
                                  await MediaPickerUtils.pickFromGallery(
                                context,
                                widget.localDir,
                                MediaType.video,
                                widget.isLoading,
                              );
                              final viedoThumbnails =
                                  await getVideoThumbnails(media);
                              await widget.onMediaCapture
                                  ?.call(media, viedoThumbnails);
                            }
                          : null,
                      onFlagTap: widget.onFlagTap,
                    ),
                  ),
                ),
              ),
          ],
        ],
      ),
    );
  }
}
