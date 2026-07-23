import 'dart:ui';

import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:just_audio/just_audio.dart';

class ScanHelper {
  static Future<String?> startInlineCodeScan(
    BuildContext context, {
    required String title,
    String? caption,
    int scannerHeight = 3,
    bool blurFilter = true,
    bool barrierColor = true,
    void Function(String barcode)? onNewBarCode,
  }) {
    final audioPlayer = AudioPlayer();

    return showCupertinoModalPopup<String?>(
      filter: blurFilter ? ImageFilter.blur(sigmaX: 4, sigmaY: 4) : null,
      barrierColor: barrierColor
          ? const Color.fromARGB(127, 0, 0, 0)
          : const Color.fromARGB(0, 0, 0, 0),
      context: context,
      builder: (BuildContext context) => CupertinoActionSheet(
        title: Text(title),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8),
            child: ScanQR(
              caption: caption ?? context.l10n.enterCode,
              scannerHeight: scannerHeight,
              onResult: (barcode) async {
                await audioPlayer.setAsset(EmrOneAudioPaths.beep);

                final trimmedBarcode = barcode.rawValue?.trim();
                await audioPlayer.play();

                if (onNewBarCode != null) {
                  onNewBarCode(trimmedBarcode!);
                } else if (context.mounted) {
                  {
                    Navigator.pop(context, trimmedBarcode);
                  }
                }
              },
            ),
          ),
        ],
        cancelButton: CupertinoActionSheetAction(
          child: Text(context.l10n.cancel),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
