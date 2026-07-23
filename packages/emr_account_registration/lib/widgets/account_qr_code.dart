import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:emr_account_registration/signup.dart';
import 'package:emr_one_core/config/app_config.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';

class AccountQrCode extends StatefulWidget {
  const AccountQrCode({
    super.key,
    required this.journeyController,
    required this.appConfig,
    required this.accountCode,
    required this.qrCodeType,
    this.onQrCodeExpired,
    this.onImageRetrieved,
  });

  final JourneyController journeyController;
  final AppConfig appConfig;
  final String? accountCode;
  final String qrCodeType;
  final void Function(Uint8List? image)? onImageRetrieved;
  final VoidCallback? onQrCodeExpired;

  @override
  State<AccountQrCode> createState() => _AccountQrCodeState();
}

class _AccountQrCodeState extends State<AccountQrCode> {
  final bool _isPolling = true;
  Timer? _pollingTimer;
  Duration interval = Duration(seconds: 3);
  bool showQrCode = true;
  String? fileId;
  String? fileName;
  String? filePath;
  int _pollingCount = 0;
  final int _maxPollAttempts = 60;

  @override
  void initState() {
    super.initState();
    fileId = '${widget.qrCodeType}-${MediaService.getRandomFileIdentifier()}';
    fileName = fileId;
    filePath =
        'com.emrgroup.accounts.${widget.appConfig.env}/${widget.accountCode ?? ''}';
    if (widget.qrCodeType == QrCode.signatureType) {
      widget.journeyController.paymentDetailsService.fileId = fileId;
      widget.journeyController.paymentDetailsService.fileName = fileName;
      widget.journeyController.paymentDetailsService.filePath = filePath;
    } else {
      widget.journeyController.documentService.fileId = fileId;
      widget.journeyController.documentService.fileName = fileName;
      widget.journeyController.documentService.filePath = filePath;
    }
    showQrCode = true;
    _pollingCount = 0;
    _startPolling();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return showQrCode
        ? Column(
            children: [
              Text(
                '${context.l10n.scanOnDevice} ${_getFriendlyQrCodeTypeName()}',
                style: theme.textTheme.headlineMedium,
              ),
              verticalSpacer(),
              SizedBox(
                height: 320,
                width: 300,
                child: EmrQrCode(
                  value: QrCode(
                    data: '${filePath!}/$fileId',
                    qrCodeType: widget.qrCodeType,
                    pollImage: true,
                  ).toJsonString(),
                ),
              ),
            ],
          )
        : Container();
  }

  String _getFriendlyQrCodeTypeName() {
    switch (widget.qrCodeType) {
      case QrCode.signatureType:
        return context.l10n.signatureFull;
      case QrCode.addressUploadType:
        return context.l10n.proofOfAddress;
      case QrCode.idUploadType:
        return context.l10n.proofOfId;
    }
    return '';
  }

  void _startPolling() {
    _pollingTimer = Timer.periodic(interval, (timer) async {
      if (!_isPolling) return;

      try {
        final response = await widget.journeyController.mediaService.getImage(
          '${widget.appConfig.edgeMediaApiUrl}/i/$filePath/$fileId',
        );

        if (response != null) {
          _pollingTimer?.cancel();

          if (widget.qrCodeType == QrCode.signatureType) {
            widget
                    .journeyController
                    .paymentDetailsService
                    .filePickedByScanningQrCode =
                true;

            widget.journeyController.paymentDetailsService.signature = response;
          } else {
            final fileType = detectFileType(response);

            widget.journeyController.documentService.fileType = fileType;

            if (fileType == 'pdf') {
              widget.journeyController.documentService.addressProofPickedFile =
                  Future.value(
                    FilePickerResult([
                      PlatformFile(
                        name: fileName ?? '',
                        size: response.length,
                        bytes: response,
                      ),
                    ]),
                  );
            } else {
              widget.journeyController.documentService.pickedFile =
                  getXFileFromBytes(response);
            }

            widget.journeyController.documentService.filePicked = true;

            widget
                    .journeyController
                    .documentService
                    .filePickedByScanningQrCode =
                true;

            await widget.journeyController.documentService.setDocument(
              response,
              isImage: fileType != 'pdf',
            );
          }
          if (widget.onImageRetrieved != null) {
            widget.onImageRetrieved!(response);
          }
          showQrCode = false;
        }

        _pollingCount += 1;

        if (_pollingCount >= _maxPollAttempts) {
          debugPrint("Cancelling the polling as attempts reached max.");
          _pollingTimer?.cancel();
          if(context.mounted){
            setState(() {
              showQrCode = false;
            });
            widget.onQrCodeExpired?.call();
          }
        }
      } catch (e) {
        debugPrint("Polling error: $e");
      }
    });
  }

  Future<XFile> getXFileFromBytes(Uint8List data) async {
    if (kIsWeb) {
      return XFile.fromData(data);
    } else {
      // create temp file version for mobile
      // Get temp directory
      final tempDir = await getTemporaryDirectory();
      final filePath =
          '${tempDir.path}/temp_image_${DateTime.now().millisecondsSinceEpoch}.jpg';

      // Write bytes to file
      final file = File(filePath);
      await file.writeAsBytes(data);

      // Return as XFile with valid path
      return XFile(file.path);
    }
  }

  String detectFileType(Uint8List data) {
    if (data.length < 4) return 'unknown';

    // Check for PDF
    if (utf8.decode(data.sublist(0, 4), allowMalformed: true) == '%PDF') {
      return 'pdf';
    }

    // Check for PNG (first 8 bytes)
    if (data.length >= 8 &&
        data[0] == 0x89 &&
        data[1] == 0x50 &&
        data[2] == 0x4E &&
        data[3] == 0x47) {
      return 'png';
    }

    // Check for JPEG
    if (data[0] == 0xFF && data[1] == 0xD8 && data[2] == 0xFF) {
      return 'jpeg';
    }

    // Check for GIF
    if (data[0] == 0x47 &&
        data[1] == 0x49 &&
        data[2] == 0x46 &&
        data[3] == 0x38) {
      return 'gif';
    }

    return 'unknown';
  }

  @override
  void dispose() {
    _pollingTimer?.cancel();
    super.dispose();
  }
}
