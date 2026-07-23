import 'dart:typed_data';

import 'package:dotted_border/dotted_border.dart';
import 'package:emr_one_core/eo_constants.dart';
import 'package:emr_one_crm/models/dropped_file.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dropzone/flutter_dropzone.dart';

class DropZoneWidget extends StatefulWidget {
  const DropZoneWidget({
    required this.onDroppedFile,
    required this.imageUploadNotifier,
    required this.color,
    required this.onError,
    required this.hasError,
    super.key,
  });
  final Color color;
  final bool hasError;
  final ValueNotifier<Uint8List?> imageUploadNotifier;
  final ValueChanged<DroppedFile> onDroppedFile;
  final void Function(String)? onError;

  @override
  State<DropZoneWidget> createState() => _DropZoneWidgetState();
}

class _DropZoneWidgetState extends State<DropZoneWidget> {
  late DropzoneViewController controller;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        final events =
            await controller.pickFiles(mime: ['image/jpeg', 'image/png']);
        if (events.isEmpty) return;
        await acceptFile(
          events.first,
        );
      },
      child: DottedBorder(
        color: widget.color,
        borderType: BorderType.RRect,
        strokeWidth: 2,
        radius: const Radius.circular(10),
        dashPattern: const [8, 4],
        padding: EdgeInsets.zero,
        child: Stack(
          children: [
            DropzoneView(
              onDrop: acceptFile,
              onCreated: (controller) => this.controller = controller,
            ),
            Center(
              child: ValueListenableBuilder(
                valueListenable: widget.imageUploadNotifier,
                builder: (context, value, child) {
                  return value != null
                      ? Image.memory(
                          value,
                          fit: BoxFit.cover,
                        )
                      : Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.upload_file,
                              size: 75,
                              color: widget.color,
                            ),
                            Text(
                              'Drag & Drop or Choose File to upload',
                              style:
                                  TextStyle(fontSize: 24, color: widget.color),
                            ),
                            if (widget.hasError) ...[
                              const SizedBox(
                                height: Insets.gutter,
                              ),
                              Text(
                                'Please upload the party document',
                                style: TextStyle(
                                  fontSize: Insets.gutter - 2,
                                  color: widget.color,
                                ),
                              ),
                            ],
                          ],
                        );
                },
              ),
            ),

            //Added for drag and drop feature
          ],
        ),
      ),
    );
  }

  Future<void> acceptFile(dynamic event) async {
    final name = await controller.getFilename(event);
    final mime = await controller.getFileMIME(event);
    final bytes = await controller.getFileSize(event);
    final url = await controller.createFileUrl(event);
    final stream = controller.getFileStream(event);
    final data = await controller.getFileData(event);
    if (name.split('.')[0].length > 50) {
      if (widget.onError != null) {
        widget.onError!.call('filename is too long (maximum of 50 characters)');
      }
      return;
    }

    if (mime != 'image/png' && mime != 'image/jpeg') {
      if (widget.onError != null) {
        widget.onError!.call('Not a valid file');
      }
      return;
    }

    final droppedFile = DroppedFile(
      url: url,
      name: name,
      mime: mime,
      bytes: bytes,
      stream: stream,
      byteData: data,
    );

    widget.imageUploadNotifier.value = data;

    widget.onDroppedFile(droppedFile);
  }
}
