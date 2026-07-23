import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_transport/core/constants/colors.dart';
import 'package:emr_one_transport/core/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SuccessAlertWidget extends StatelessWidget {
  const SuccessAlertWidget({
    required this.title,
    required this.message,
    super.key,
  });
  final String title;
  final String message;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: const EdgeInsets.all(20),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      title: Stack(
        children: [
          const Center(
            child: Icon(
              Icons.check_circle_outline,
              color: TransportAppColors.displayGreenColor,
              size: 80,
            ),
          ),
          Positioned(
            right: 0,
            top: 0,
            child: IconButton(
              icon: const FaIcon(
                FontAwesomeIcons.circleXmark,
                color: Colors.black,
              ),
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
              },
            ),
          ),
        ],
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: Constants.fontSizeXXL,
              fontWeight: FontWeight.bold,
              color: TransportAppColors.displayGreenColor,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 10),
          Text(
            message,
            style: const TextStyle(fontSize: Constants.fontSizeXL),
            textAlign: TextAlign.center,
          ),
        ],
      ),
      actions: <Widget>[
        TextButton(
          onPressed: () {
            Navigator.of(context).pop(); // Close the dialog
          },
          child: const Text(
            'OK',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }

  static Future<void> showSuccessMessage(BuildContext context, String message) {
    return EmrDialog.modal(
      context,
      buttons: {EmrDialogButton.accept},
      acceptLabel: context.l10n.ok,
      titleText: context.l10n.success,
      builder: (context) {
        return SizedBox(
          width: 320,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(
                Icons.check_circle_outline,
                color: TransportAppColors.displayGreenColor,
                size: 80,
              ),
              const SizedBox(height: Insets.gutter),
              Text(
                message,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              const SizedBox(height: Insets.gutter),
            ],
          ),
        );
      },
    );
  }

  static Future<void> showSuccessDialogWithInfo(
    BuildContext context,
    String successMessage,
    String additionalMessage,
    String ids, {
    bool showCopyIcon = false,
  }) {
    return EmrDialog.modal(
      context,
      buttons: {EmrDialogButton.accept},
      acceptLabel: context.l10n.ok,
      titleText: context.l10n.success,
      builder: (context) {
        return Column(
          children: [
            const Center(
              child: Icon(
                Icons.check_circle_outline,
                color: TransportAppColors.displayGreenColor,
                size: 80,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: Insets.gutter,
                bottom: Insets.gutter,
              ),
              child: Center(
                child: SelectableText(
                  successMessage,
                  style: Theme.of(
                    context,
                  ).textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Text(
              additionalMessage,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const SizedBox(height: Insets.gutter),
            Row(
              children: [
                if (showCopyIcon) const SizedBox(width: 20),
                SizedBox(
                  width: 280,
                  child: SelectableText(
                    ids,
                    style: Theme.of(context).textTheme.bodyLarge,
                    textAlign: TextAlign.center,
                  ),
                ),
                if (showCopyIcon)
                  Tooltip(
                    message: context.l10n.copy,
                    child: IconButton(
                      iconSize: Constants.iconSizeSM,
                      icon: const Icon(Icons.copy),
                      onPressed: () async {
                        await Clipboard.setData(ClipboardData(text: ids));
                      },
                    ),
                  ),
              ],
            ),
            const SizedBox(height: Insets.gutter),
          ],
        );
      },
    );
  }
}
