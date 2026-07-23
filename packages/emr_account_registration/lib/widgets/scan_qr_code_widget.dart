import 'package:emr_account_registration/widgets/shared_widgets.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class ScanQrCodeWidget extends StatelessWidget {
  const ScanQrCodeWidget({
    required this.onStartScan,
    required this.onEndScan,
    required this.onScanned,
    this.scannedData,
    required this.isScanning,
    super.key,
  });

  final void Function() onStartScan;
  final void Function() onEndScan;
  final void Function(Barcode b) onScanned;
  final String? scannedData;
  final bool isScanning;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if (!isScanning && (scannedData ?? '').isEmpty) ...[
          // Initial state - show scan button
          Container(
            padding: EdgeInsets.all(Insets.gutter * 2),
            decoration: BoxDecoration(
              color: theme.colorScheme.surfaceContainer,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Icon(
              Icons.qr_code_scanner,
              size: 100,
              color: theme.colorScheme.onSurface,
            ),
          ),
          verticalSpacer(height: Insets.gutter * 2),
          Text(
            context.l10n.qrCodeScanner,
            style: theme.textTheme.headlineMedium,
          ),
          verticalSpacer(),
          Text(
            context.l10n.tapButtonToScan,
            style: theme.textTheme.labelLarge,
            textAlign: TextAlign.center,
          ),
          verticalSpacer(height: Insets.gutter * 2),
          ElevatedButton.icon(
            onPressed: onStartScan,
            icon: Icon(Icons.camera_alt, size: 24),
            label: Text(context.l10n.scanQrCode),
            style: ElevatedButton.styleFrom(
              backgroundColor: theme.colorScheme.primaryContainer,
              foregroundColor: theme.colorScheme.onPrimaryContainer,
              padding: EdgeInsets.symmetric(
                horizontal: Insets.gutter * 2,
                vertical: Insets.gutter,
              ),
              textStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
          ),
        ] else if (isScanning) ...[
          // Scanning state - show camera view
          Text(context.l10n.positionQrCode, style: theme.textTheme.labelLarge),
          verticalSpacer(),
          Container(
            width: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: theme.colorScheme.primary, width: 2),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(18),
              child: ScanQR(onResult: onScanned),
            ),
          ),
          verticalSpacer(height: Insets.gutter * 2),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton.icon(
                onPressed: onEndScan,
                icon: Icon(Icons.close),
                label: Text(context.l10n.cancel),
                style: ElevatedButton.styleFrom(
                  backgroundColor: theme.colorScheme.secondary,
                  foregroundColor: theme.colorScheme.onSecondary,
                ),
              ),
            ],
          ),
        ],
      ],
    );
  }
}
