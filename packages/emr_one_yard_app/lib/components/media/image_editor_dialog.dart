import 'dart:io';

import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_yard_app/controllers/media_controller.dart';
import 'package:emr_one_yard_app/helpers/media_helper.dart';
import 'package:flutter/material.dart';

class ImageEditorDialog extends StatelessWidget {
  const ImageEditorDialog({
    required this.sourceImagePath,
    required this.onEditorClose,
    required this.mediaController,
    required this.token,
    required this.localPath,
    required this.outputPath,
    super.key,
  });
  final String sourceImagePath;
  final VoidCallback onEditorClose;
  final MediaController mediaController;
  final String token;
  final String localPath;
  final String outputPath;

  static Future<String?> show({
    required BuildContext context,
    required String sourceImagePath,
    required MediaController mediaController,
    required String token,
    required String localPath,
  }) async {
    final outPath = MediaHelper.getNewLocalImagePath(localPath);
    return showDialog<String?>(
      context: context,
      barrierDismissible: false,
      builder: (dialogContext) => ImageEditorDialog(
        sourceImagePath: sourceImagePath,
        onEditorClose: () async {
          if (File(outPath).existsSync()) {
            Navigator.of(dialogContext).pop(outPath);
          } else {
            Navigator.of(dialogContext).pop();
          }
        },
        mediaController: mediaController,
        localPath: localPath,
        token: token,
        outputPath: outPath,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: mediaController.getCachedImageFile(
        sourceImagePath,
        token,
        localPath,
      ),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          if (snapshot.data == null) {
            return Center(
              child: Text(
                context.l10n.imageError,
                style: TextStyle(color: Theme.of(context).colorScheme.error),
              ),
            );
          }
          return Dialog.fullscreen(
            child: EmrImageEditor(
              path: snapshot.data!.path,
              outputPath: outputPath,
              onEditorClose: onEditorClose,
            ),
          );
        }
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}
