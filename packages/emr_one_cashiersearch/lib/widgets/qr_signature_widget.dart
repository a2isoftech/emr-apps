import 'dart:async';
import 'dart:typed_data';

import 'package:emr_one_cashiersearch/common/constants.dart';
import 'package:emr_one_cashiersearch/services/media_service.dart';
import 'package:emr_one_core/config/config.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class QrSignatureWidget extends StatefulWidget {
  const QrSignatureWidget({
    required this.mediaService,
    required this.headerText,
    required this.signatureImage,
    required this.ticketNo,
    required this.yardCode,
    super.key,
  });

  final String headerText;
  final ValueNotifier<Uint8List?> signatureImage;
  final String ticketNo;
  final String yardCode;
  final MediaService mediaService;

  @override
  State<QrSignatureWidget> createState() => _QrSignatureWidgetState();
}

class _QrSignatureWidgetState extends State<QrSignatureWidget> {
  ValueNotifier<String?> signatureQR = ValueNotifier(null);
  EmrInkPadController inkPadController = EmrInkPadController();
  late String signatureId;

  late AppConfig appConfig;

  final bool _isPolling = true;
  Timer? _pollingTimer;
  Duration interval = const Duration(seconds: 3);
  final int _maxPollAttempts = 100;

  @override
  void initState() {
    super.initState();
    appConfig = Provider.of<AppConfig>(context, listen: false);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(Insets.gutter),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: Insets.gutter),
            Text(
              widget.headerText,
              style: Theme.of(
                context,
              ).textTheme.titleLarge!.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: Insets.gutter),
            SizedBox(
              height: 300,
              child: Row(
                children: [
                  ValueListenableBuilder(
                    valueListenable: widget.signatureImage,
                    builder: (context, signature, child) {
                      if (signature != null) {
                        return Expanded(
                          child: SizedBox(child: Image.memory(signature)),
                        );
                      }
                      return Expanded(
                        child: SizedBox(
                          child: EmrInkPad(
                            key: GlobalKey(),
                            controller: inkPadController,
                            penColour: Colors.red,
                            backgroundColour: Colors.grey.shade300,
                          ),
                        ),
                      );
                    },
                  ),
                  ValueListenableBuilder(
                    valueListenable: widget.signatureImage,
                    builder: (context, signatureImage, child) {
                      if (signatureImage != null) {
                        return const Spacer();
                      }
                      return ValueListenableBuilder(
                        valueListenable: signatureQR,
                        builder: (context, signatureQrCode, child) {
                          if (signatureQrCode == null) {
                            return const Spacer();
                          }
                          return Expanded(
                            child: SizedBox(
                              child: EmrQrCode(value: signatureQrCode),
                            ),
                          );
                        },
                      );
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(height: Insets.gutter),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ValueListenableBuilder(
                        valueListenable: signatureQR,
                        builder: (context, signatureQrCode, child) {
                          if (signatureQrCode == null ||
                              signatureQrCode.isEmpty) {
                            return FilledButton(
                              child: Text(context.l10n.generateQrCode),
                              onPressed: () async {
                                inkPadController.resetImage();
                                widget.signatureImage.value = null;
                                signatureId = _getNewSignatureId;
                                signatureQR.value =
                                    '''${appConfig.emrAppsCloudBase}/${CashierConstants.consignmentSignatureUrl}/${widget.yardCode}/${widget.ticketNo}/$signatureId''';
                                debugPrint('${signatureQR.value}');
                                _startPolling();
                              },
                            );
                          }
                          return const SizedBox.shrink();
                        },
                      ),
                      const SizedBox(width: Insets.gutter),
                      FilledButton(
                        child: Text(context.l10n.saveSignature),
                        onPressed: () async {
                          signatureQR.value = null;
                          widget.signatureImage.value = await inkPadController
                              .getImage();
                          _pollingTimer?.cancel();
                        },
                      ),
                      const SizedBox(width: Insets.gutter),
                      OutlinedButton(
                        onPressed: () {
                          inkPadController.resetImage();
                          widget.signatureImage.value = null;
                          signatureId = _getNewSignatureId;
                          signatureQR.value = null;
                          _pollingTimer?.cancel();
                        },
                        child: Text(context.l10n.clearSignature),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
              ],
            ),
          ],
        ),
      ),
    );
  }

  String get _getNewSignatureId {
    return '''${context.l10n.signatureFull}-${MediaService.getRandomFileIdentifier()}''';
  }

  void _startPolling() {
    var pollingCount = 0;
    _pollingTimer = Timer.periodic(interval, (timer) async {
      if (!_isPolling) return;

      try {
        final uploadPath =
            '${CashierConstants.mediaSignatureBasePath}.${appConfig.env}/${widget.ticketNo}/$signatureId';
        final url = '${appConfig.edgeMediaApiUrl}/i/$uploadPath';

        final response = await widget.mediaService.getImage(url);
        if (response != null) {
          _pollingTimer?.cancel();
          widget.signatureImage.value = response;
        }

        pollingCount += 1;
        if (pollingCount >= _maxPollAttempts) {
          _pollingTimer?.cancel();
          signatureQR.value = null;
        }
      } catch (e) {
        _pollingTimer?.cancel();
      }
    });
  }

  @override
  void dispose() {
    _pollingTimer?.cancel();
    super.dispose();
  }
}
