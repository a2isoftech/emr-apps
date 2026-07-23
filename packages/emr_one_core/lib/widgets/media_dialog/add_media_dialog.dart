import 'dart:io';

import 'package:easy_image_viewer/easy_image_viewer.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/models/media_file.dart';
import 'package:emr_one_core/widgets/media_dialog/add_media_button.dart';
import 'package:emr_one_core/widgets/media_dialog/image_preview_button.dart';
import 'package:emr_one_core/widgets/media_dialog/video_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:signals/signals_flutter.dart';
import 'package:uuid/uuid.dart';

///Allows the previewing of media in a Widget. Expects media sources to be
///passed in using a List of [MediaButtonBuilder]. These buttons will return
///media to be added to the media collection in this Widget.
///
///This widget will return the value of the media list when confirmed, so
///is to be used in a modal with a return value.
///
///Example Usage:
/// final changes =
///   await showModalBottomSheet<AddedMedia>(
///     context: context,
///     builder: (context) {
///       return AddMediaDialog(
///         enablePreviewAndDelete: true,
///         addMediaButtons:
///           _mediaButtons(context),
///       );
///     },
///   );

class AddMediaDialog extends StatefulWidget {
  const AddMediaDialog({
    required this.addMediaButtons,
    this.enablePreviewAndDelete = false,
    this.enableEditing = false,
    this.title,
    this.processing,
    super.key,
  });

  final List<MediaButtonBuilder> addMediaButtons;
  final bool enablePreviewAndDelete;
  final bool enableEditing;
  final Signal<bool>? processing;
  //Removing option of configurable upload limit until UI refinements
  //can be completed. Limit of 0 will force no upload limit.
  int get uploadLimit => 0;
  final String? title;

  @override
  State<AddMediaDialog> createState() => _AddMediaDialogState();
}

class _AddMediaDialogState extends State<AddMediaDialog> {
  final existingPhotos = listSignal<MediaFile>([]);

  @override
  Widget build(BuildContext context) {
    return Watch(
      (context) {
        return Padding(
          padding: const EdgeInsets.all(
            Insets.gutter,
          ),
          child: SizedBox.expand(
            child: Padding(
              padding: const EdgeInsets.all(Insets.gutter),
              child: Column(
                children: [
                  Text(_titleText()),
                  if (widget.processing?.watch(context) ?? false)
                    const LinearProgressIndicator(),
                  _mediaList(context),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      OutlinedButton(
                        onPressed: () {
                          Navigator.of(context, rootNavigator: true).pop(
                            AddedMedia(),
                          );
                        },
                        child: Text(context.l10n.cancel),
                      ),
                      FilledButton(
                        onPressed: uploadLimitReached() ||
                                (widget.processing?.watch(context) ?? false)
                            ? null
                            : () {
                                Navigator.of(context, rootNavigator: true).pop(
                                  AddedMedia(
                                    media: existingPhotos.value,
                                  ),
                                );
                              },
                        style: EmrButtonStyles.cta(),
                        child: Text(context.l10n.ok),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  bool uploadLimitReached() {
    if (widget.uploadLimit <= 0 ||
        existingPhotos.length <= widget.uploadLimit) {
      return false;
    }
    return true;
  }

  String _titleText() {
    final sb = StringBuffer(widget.title ?? context.l10n.addPhotos);

    if (widget.uploadLimit <= 0) {
      return sb.toString();
    }

    sb.write(' - ');
    sb.write(existingPhotos.length);
    sb.write(' / ');
    sb.write(widget.uploadLimit);
    return sb.toString();
  }

  Widget _mediaList(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: Insets.gutter,
        ),
        child: GridView(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            mainAxisSpacing: Insets.gutter,
            crossAxisSpacing: Insets.gutter,
          ),
          children: [
            ...widget.addMediaButtons.map(
              (builder) => builder.build(
                (files) async => existingPhotos.addAll(files),
              ),
            ),
            ...existingPhotos.watch(context).map(
                  (MediaFile file) => file.deleting
                      ? _previewButton(file)
                          .animate(
                            onComplete: (controller) =>
                                //On completion of animation,
                                // remove from collection
                                existingPhotos.remove(file),
                          )
                          .scaleXY(
                            duration: 500.milliseconds,
                            begin: 1,
                            end: 0,
                          )
                      : _previewButton(file),
                ),
          ],
        ),
      ),
    );
  }

  Widget _previewButton(MediaFile file) {
    return ImagePreviewButton(
      showPlayOverlay: file.mediaType == MediaType.video,
      image: FileImage(
        File(
          file.mediaThumbnail?.path ?? file.media.path,
        ),
      ),
      onPressed: widget.enablePreviewAndDelete
          ? () => _photoClickedEvent(context, file)
          : null,
    );
  }

  Future<void> _photoClickedEvent(BuildContext context, MediaFile file) async {
    if (file.mediaType == MediaType.video) {
      if (!context.mounted) return;
      await Navigator.of(context).push(
        PageRouteBuilder<Stack>(
          pageBuilder: (context, animation, secondaryAnimation) => Stack(
            children: [
              VideoPreview(path: file.media.path),
              _previewAppBar(file),
            ],
          ),
        ),
      );
    }
    if (file.mediaType == MediaType.image) {
      if (!context.mounted) return;
      await Navigator.of(context).push(
        PageRouteBuilder<EasyImageView>(
          pageBuilder: (context, animation, secondaryAnimation) => Stack(
            children: [
              EasyImageView(
                imageProvider: FileImage(
                  File(
                    file.media.path,
                  ),
                ),
              ),
              _previewAppBar(file),
            ],
          ),
        ),
      );
    }
  }

  Widget _previewAppBar(MediaFile file) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: Insets.gutter * 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () => Navigator.of(context).pop(),
            icon: const Icon(
              Icons.arrow_back_outlined,
              color: Colors.white,
            ),
          ),
          IconButton(
            icon: const Icon(
              Icons.delete,
              color: Colors.white,
            ),
            onPressed: () async {
              await EmrDialog.noYes(
                context,
                titleText: 'Delete Item',
                contentText: 'Are you sure you want to delete this item?',
                onYes: () async {
                  Navigator.of(context).pop();
                  _removeItem(file);
                },
              );
            },
          ),
          if (widget.enableEditing && file.mediaType == MediaType.image)
            IconButton(
              onPressed: () async {
                if (!mounted) {
                  return;
                }

                final directory = File(file.media.path).parent.path;
                final newFilePath = '$directory/${const Uuid().v4()}.jpg';

                final editedFile = await showDialog<MediaFile?>(
                  context: context,
                  builder: (dialogContext) {
                    return EmrImageEditor(
                      path: file.media.path,
                      outputPath: newFilePath,
                      onEditorClose: () async {
                        MediaFile? newMedia;
                        final editedFile = File(newFilePath);
                        if (editedFile.existsSync()) {
                          newMedia = await MediaFile.fromPath(editedFile.path);
                        }

                        if (dialogContext.mounted) {
                          Navigator.pop(dialogContext, newMedia);
                        }
                      },
                    );
                  },
                );

                if (!mounted || editedFile == null) {
                  return;
                }

                _removeItem(file);
                existingPhotos.add(editedFile);

                if (mounted) {
                  Navigator.pop(context);
                  await _photoClickedEvent(context, editedFile);
                }
              },
              icon: const Icon(
                Icons.edit,
                color: Colors.white,
              ),
            ),
        ],
      ),
    );
  }

  void _removeItem(MediaFile file) {
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      final index = existingPhotos.indexOf(file);
      file.deleting = true;
      existingPhotos[index] = file;
      if (file.retainSourceOnDelete) {
        return;
      }
      await File(file.media.path).delete();

      if (file.mediaThumbnail != null) {
        await File(file.mediaThumbnail!.path).delete();
      }
    });
  }
}
