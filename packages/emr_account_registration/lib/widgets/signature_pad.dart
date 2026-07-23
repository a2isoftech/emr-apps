import 'dart:typed_data';

import 'package:emr_account_registration/signup.dart';
import 'package:emr_one_core/config/config.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_theme/emr_one_theme.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:provider/provider.dart';

class SignaturePad extends StatefulWidget {
  const SignaturePad({
    required this.mediaService,
    required this.appConfig,
    required this.uploadPath,
    this.onSuccess,
    super.key,
  });
  final MediaService mediaService;
  final AppConfig appConfig;
  final String uploadPath;
  final void Function()? onSuccess;

  @override
  State<SignaturePad> createState() => _SignaturePadState();
}

class _SignaturePadState extends State<SignaturePad> {
  Uint8List? signature;
  final EmrInkPadController emrInkPadController = EmrInkPadController();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final brandColours =
        theme.extension<EOBrandTheme>() ?? const EOBrandTheme();
    final signaturePadWidth = MediaQuery.of(context).size.width;
    final url = '${widget.appConfig.edgeMediaApiUrl}/i/${widget.uploadPath}';
    final fileName = widget.uploadPath.contains('/')
        ? widget.uploadPath.split('/').last
        : 'signature.jpg';
    return Consumer<ChangeNotifyingService>(
      builder: (context, changeNotifyingService, child) {
        final (isPhone, _) = context.getScreenFacts();
        return Column(
          children: [
            const SizedBox(height: Insets.gutter / 2),
            RichText(
              text: TextSpan(
                text: context.l10n.signatureInstructionSignBelow,
                style: isPhone
                    ? theme.textTheme.titleLarge!.bold()
                    : theme.textTheme.headlineLarge,
                children: [
                  TextSpan(
                    text: context.l10n.termsAndConditions,
                    style: theme.textTheme.titleLarge?.copyWith(
                      decoration: TextDecoration.underline,
                      color: brandColours.brandColour,
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        _showReadOnlyTnc(context, theme);
                      },
                  ),
                ],
              ),
            ),
            const SizedBox(height: Insets.gutter),
            if (signature == null) ...[
              SizedBox(
                width: signaturePadWidth,
                height: 200,
                child: EmrInkPad(
                  backgroundColour: const Color(0xFFD6D6D6),
                  controller: emrInkPadController,
                ),
              ),
              verticalSpacer(),
            ] else if (signature != null) ...[
              SizedBox(child: Image.memory(signature!)),
              verticalSpacer(),
            ],

            Wrap(
              spacing: Insets.gutter,
              runSpacing: Insets.gutter,
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                colouredButton(
                  text: context.l10n.saveSignature,
                  textColor: brandColours.onBrandColour,
                  width: 150,
                  color: signature == null
                      ? brandColours.brandColour!
                      : theme.disabledColor,
                  onPressed: signature == null
                      ? () async {
                          final img = await emrInkPadController.getImage();
                          if (img != null) {
                            signature = img;
                            changeNotifyingService.notifyListenersInternal();
                          }
                        }
                      : null,
                ),
                colouredButton(
                  text: context.l10n.clearSignature,
                  textColor: brandColours.onBrandColour,
                  width: 150,
                  color: signature != null
                      ? brandColours.brandColour!
                      : theme.disabledColor,
                  onPressed: signature != null
                      ? () {
                          emrInkPadController.resetImage();
                          signature = null;
                          changeNotifyingService.notifyListenersInternal();
                        }
                      : null,
                ),
              ],
            ),
            verticalSpacer(),
            colouredButton(
              text: context.l10n.confirm,
              style: signature != null
                  ? EmrButtonStyles.cta()
                  : AccountRegistrationButtonStyles.disabled(theme),
              onPressed: signature != null
                  ? () async {
                      final result = await widget.mediaService.uploadDocument(
                        mediaApiUrlWithToken: url,
                        fileName: fileName,
                        fileBytes: signature!,
                      );
                      if (context.mounted) {
                        if (result) {
                          await EmrModal.showMessageBar(
                            context,
                            'Signature updated.',
                          );
                          if (widget.onSuccess != null) {
                            widget.onSuccess!.call();
                          }
                        } else {
                          await EmrModal.showMessageBar(
                            context,
                            'Signature could not be updated.',
                            messageType: MessageBarTypes.error,
                          );
                        }
                      }
                    }
                  : null,
            ),
          ],
        );
      },
    );
  }

  void _showReadOnlyTnc(BuildContext context, ThemeData theme) {
    final (isPhone, _) = context.getScreenFacts();
    final screenWidth = MediaQuery.of(context).size.width;

    showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          contentPadding: const EdgeInsets.all(Insets.gutter),
          content: SizedBox(
            width: isPhone ? screenWidth : screenWidth / 2,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.close),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ],
                  ),

                  Text(
                    context.l10n.termsAndConditions,
                    style: theme.textTheme.titleMedium!.bold(),
                  ),
                  const SizedBox(height: Insets.gutter),
                  HtmlWidget(AccountRegistrationRemoteConfigService.tnc),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
