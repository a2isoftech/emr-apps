import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_yard_app/controllers/controllers.dart';
import 'package:emr_one_yard_app/screens/load_outs/load_out_image.dart';
import 'package:flutter/material.dart';

class SealNumberInputWidget extends StatelessWidget {
  const SealNumberInputWidget({
    required this.loadoutId,
    required this.localPath,
    required this.mediaController,
    required this.mediaPathNotifier,
    required this.onCapture,
    required this.pngPath,
    required this.token,
    required this.yardCode,
    required this.title,
    required this.binding,
    this.disable = false,
    this.isRequired = false,
    super.key,
  });

  final String title;
  final bool isRequired;
  final ValueNotifier<String?> binding;
  final String pngPath;
  final String localPath;
  final String token;
  final String yardCode;
  final String loadoutId;
  final MediaController mediaController;
  final ValueNotifier<String?> mediaPathNotifier;
  final void Function(String?) onCapture;
  final bool disable;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: Insets.gutter / 4,
      children: [
        Expanded(
          child: EmrTextFormField(
            enabled: ValueNotifier(!disable),
            labelText: title,
            binding: binding,
            validator: (value) {
              if (!isRequired) {
                return null;
              }
              if (value == null || value.isEmpty) {
                return context.l10n.sealNumberRequired;
              }
              if (value.length < 2) {
                return context.l10n.invalidSealNumber;
              }
              if (mediaPathNotifier.value == null ||
                  mediaPathNotifier.value!.isEmpty) {
                return context.l10n.mediaRequired;
              }

              return null;
            },
          ),
        ),
        Padding(
          padding: const EdgeInsetsGeometry.only(top: 20),
          child: LoadOutImage(
            pngPath: pngPath,
            title: title,
            localPath: localPath,
            token: token,
            yardCode: yardCode,
            mediaController: mediaController,
            loadoutId: loadoutId,
            mediaPathNotifier: mediaPathNotifier,
            onCapture: onCapture,
            width: 55,
            height: 55,
            showTitle: false,
            disable: disable,
          ),
        ),
      ],
    );
  }
}
