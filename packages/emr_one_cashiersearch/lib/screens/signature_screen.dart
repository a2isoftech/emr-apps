import 'dart:typed_data';

import 'package:emr_one_cashiersearch/common/constants.dart';
import 'package:emr_one_cashiersearch/services/media_service.dart';
import 'package:emr_one_core/config/app_config.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SignatureScreen extends StatefulWidget {
  const SignatureScreen({
    required this.signatureUploadPath,
    required this.yardCode,
    required this.appConfig,
    super.key,
  });

  final String signatureUploadPath;
  final AppConfig appConfig;
  final String yardCode;

  @override
  State<SignatureScreen> createState() => _SignatureScreenState();
}

class _SignatureScreenState extends State<SignatureScreen> {
  final ValueNotifier<Uint8List?> signatureImage = ValueNotifier(null);
  EmrInkPadController inkPadController = EmrInkPadController();
  ValueNotifier<bool> signatureUploaded = ValueNotifier(false);
  ValueNotifier<bool> isError = ValueNotifier(false);
  late final MediaService mediaService;

  @override
  void initState() {
    mediaService = Provider.of<MediaService>(context, listen: false);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(Insets.gutter),
        child: ValueListenableBuilder(
          valueListenable: isError,
          builder: (context, isUploadError, child) {
            return ValueListenableBuilder(
              valueListenable: signatureUploaded,
              builder: (context, signUploaded, child) {
                if (signUploaded) {
                  return Center(child: Text(context.l10n.signatureUploaded));
                }
                if (isUploadError) {
                  return Center(
                    child: Text(context.l10n.errSomethingWentWrong),
                  );
                }
                return SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: Insets.gutter),
                      ValueListenableBuilder(
                        valueListenable: signatureImage,
                        builder: (context, signature, child) {
                          if (signature != null) {
                            return Row(
                              children: [
                                Expanded(
                                  child: SizedBox(
                                    height: 200,
                                    child: Image.memory(signature),
                                  ),
                                ),
                              ],
                            );
                          }
                          return Row(
                            children: [
                              Expanded(
                                child: SizedBox(
                                  height: 200,
                                  child: EmrInkPad(
                                    key: GlobalKey(),
                                    controller: inkPadController,
                                    penColour: Colors.red,
                                    backgroundColour: Colors.grey.shade300,
                                  ),
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                      const SizedBox(height: Insets.gutter),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FilledButton(
                            child: Text(context.l10n.saveSignature),
                            onPressed: () async {
                              signatureImage.value = await inkPadController
                                  .getImage();
                            },
                          ),
                          const SizedBox(width: Insets.gutter),
                          OutlinedButton(
                            onPressed: () {
                              inkPadController.resetImage();
                              signatureImage.value = null;
                            },
                            child: Text(context.l10n.clearSignature),
                          ),
                        ],
                      ),
                      const SizedBox(height: Insets.gutter),
                      Center(
                        child: ValueListenableBuilder(
                          valueListenable: signatureImage,
                          builder: (context, value, child) {
                            return FilledButton(
                              style: EmrButtonStyles.cta(),
                              onPressed: signatureImage.value != null
                                  ? () async {
                                      if (signatureImage.value != null) {
                                        final uploadPath =
                                            '${CashierConstants.mediaSignatureBasePath}.${widget.appConfig.env}/${widget.signatureUploadPath}';
                                        final url =
                                            '${widget.appConfig.edgeMediaApiUrl}/i/$uploadPath';
                                        final result = await mediaService
                                            .uploadDocument(
                                              mediaApiUrlWithToken: url,
                                              fileName:
                                                  '''${context.l10n.signatureFull}.jpg''',
                                              fileBytes: signatureImage.value!,
                                              yardCode: widget.yardCode,
                                            );
                                        if (result) {
                                          signatureUploaded.value = true;
                                        } else {
                                          isError.value = true;
                                        }
                                      }
                                    }
                                  : null,
                              child: Text(context.l10n.confirm),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
