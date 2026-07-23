import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_transport/core/constants/colors.dart';
import 'package:emr_one_transport/core/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ErrorAlertWidget extends StatelessWidget {
  const ErrorAlertWidget({
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
              Icons.error,
              color: TransportAppColors.errorDisplayColor,
              size: 80,
            ),
          ),
          Positioned(
            right: 0,
            top: 0,
            child: IconButton(
              icon: const FaIcon(FontAwesomeIcons.circleXmark),
              onPressed: () {
                Navigator.of(context).pop();
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
              color: TransportAppColors.errorDisplayColor,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 10),
          SizedBox(
            width: Insets.gutter * 16,
            child: SelectableText(
              message,
              style: const TextStyle(fontSize: Constants.fontSizeXL),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
      actions: <Widget>[
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text(
            'OK',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }

  static Future<void> showErrorMessage(BuildContext context, String message) {
    return EmrDialog.modal(
      context,
      buttons: {EmrDialogButton.accept},
      acceptLabel: context.l10n.ok,
      titleText: context.l10n.error,
      builder: (context) {
        return SizedBox(
          width: 320,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(
                Icons.error,
                color: TransportAppColors.errorDisplayColor,
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
}
