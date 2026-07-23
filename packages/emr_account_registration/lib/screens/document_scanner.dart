import 'package:emr_account_registration/signup.dart';
import 'package:emr_one_core/config/config.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DocumentScanner extends StatefulWidget with FullExtent {
  final RunContext runContext;
  final MediaService mediaService;
  final AppConfig appConfig;

  DocumentScanner({
    super.key,
    required this.mediaService,
    required this.appConfig,
    required this.runContext,
  });

  @override
  bool get hideFrameworkElements => runContext.isPortal;

  @override
  State<DocumentScanner> createState() => _DocumentScannerState();
}

class _DocumentScannerState extends State<DocumentScanner> {
  @override
  Widget build(BuildContext context) {
    String? scannedData;
    bool isScanning = false;
    return Consumer<ChangeNotifyingForRestartService>(
      builder: (context, changeNotifyingService, child) {
        final scanningResult = _parse(scannedData, isScanning: isScanning);

        if (scanningResult != null) {
          if (scanningResult.qrCodeType == QrCode.signatureType) {
            return Padding(
              padding: EdgeInsetsGeometry.all(Insets.gutter),
              child: SignaturePad(
                mediaService: widget.mediaService,
                appConfig: widget.appConfig,
                uploadPath: scanningResult.data,
                onSuccess: () {
                  scannedData = null;
                  isScanning = false;
                  changeNotifyingService.notifyListenersInternal();
                },
              ),
            );
          } else {
            return Padding(
              padding: EdgeInsetsGeometry.all(Insets.gutter),
              child: DocumentPicker(
                mediaService: widget.mediaService,
                appConfig: widget.appConfig,
                uploadPath: scanningResult.data,
                type: scanningResult.qrCodeType,
                onSuccess: () {
                  scannedData = null;
                  isScanning = false;
                  changeNotifyingService.notifyListenersInternal();
                },
              ),
            );
          }
        }

        return Center(
          child: Padding(
            padding: EdgeInsets.all(Insets.gutter),
            child: ScanQrCodeWidget(
              onStartScan: () {
                isScanning = true;
                changeNotifyingService.notifyListenersInternal();
              },
              onScanned: (val) {
                scannedData = val.rawValue ?? '';
                isScanning = false;
                changeNotifyingService.notifyListenersInternal();
              },
              onEndScan: () {
                isScanning = false;
                changeNotifyingService.notifyListenersInternal();
              },
              isScanning: isScanning,
              scannedData: scannedData,
            ),
          ),
        );
      },
    );
  }

  QrCode? _parse(String? scannedData, {required bool isScanning}) {
    if (isScanning == false && (scannedData ?? '').isNotEmpty) {
      // scanned data is available
      try {
        final result = QrCode.fromJsonString(scannedData!);
        return result;
      } catch (err) {
        LoggingService.logToConsole(err.toString());
        return null;
      }
    }
    return null;
  }
}
