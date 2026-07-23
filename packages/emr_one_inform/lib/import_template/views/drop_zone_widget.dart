import 'package:dotted_border/dotted_border.dart';
import 'package:emr_one_inform/constants/colors.dart';
import 'package:emr_one_inform/import_template/models/dropped_file.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dropzone/flutter_dropzone.dart';

class DropZoneWidget extends StatefulWidget {
  const DropZoneWidget({required this.onFileDropped, this.onError, super.key});

  final void Function(DroppedFile) onFileDropped;
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
        final events = await controller.pickFiles();
        if (events.isEmpty) return;
        await acceptFile(events.first);
      },
      child: SizedBox(
        height: 250,
        width: (MediaQuery.of(context).size.width) * 0.75,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Container(
            padding: const EdgeInsets.all(5),
            color: FormAppColors.lightGrey,
            child: DottedBorder(
              borderType: BorderType.RRect,
              color: FormAppColors.white,
              strokeWidth: 3,
              radius: const Radius.circular(10),
              dashPattern: const [8, 4],
              padding: EdgeInsets.zero,
              child: Stack(
                children: [
                  DropzoneView(
                    onCreated: (controller) => this.controller = controller,
                    onDrop: acceptFile,
                    operation: DragOperation.copy,
                  ),
                  const Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.cloud_upload_outlined,
                          size: 75,
                        ),
                        Text(
                          'Select an xlsx file to upload',
                          style: TextStyle(fontSize: 24),
                        ),
                        Text(
                          'or drag and drop it here',
                          style: TextStyle(fontSize: 24),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future<void> acceptFile(dynamic event) async {
    final name = await controller.getFilename(event);

    if (name.split('.')[0].length > 20) {
      if (widget.onError != null) {
        widget.onError!.call('filename is too long (maximum of 20 characters)');
      }
      return;
    }

    final mime = await controller.getFileMIME(event);
    final url = await controller.createFileUrl(event);
    final bytes = await controller.getFileSize(event);
    final byteData = await controller.getFileData(event);
    final stream = Stream.fromIterable(
      byteData.map((e) => [e]),
    );

    if (mime !=
        'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet') {
      if (widget.onError != null) {
        widget.onError!.call('Not a valid XLSX file');
      }
      return;
    }
    widget.onFileDropped(
      DroppedFile(
        url: url,
        name: name,
        mime: mime,
        bytes: bytes,
        stream: stream,
      ),
    );
  }
}
