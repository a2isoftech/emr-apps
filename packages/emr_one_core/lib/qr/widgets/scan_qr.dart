import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

typedef ScanCallback = void Function(Barcode);

class ScanQR extends StatefulWidget {
  const ScanQR({
    required this.onResult,
    this.scannerHeight = 3,
    super.key,
    this.caption = 'Enter code',
  });

  final ScanCallback onResult;
  final String caption;
  final int scannerHeight;

  @override
  ScanQRState createState() => ScanQRState();
}

class ScanQRState extends State<ScanQR> {
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');

  Barcode? lastBarcode;

  final MobileScannerController _controller = MobileScannerController(
    // Resolution as suggested on
    // https://github.com/juliansteenbakker/mobile_scanner/issues/698#issuecomment-1961384704
    // to workaround problems with Samsung Galaxy A23 devices.
    cameraResolution: const Size(640, 480),
  );

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    try {
      return Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16 / 2),
            child: SizedBox(
              height: screenSize.height / widget.scannerHeight,
              child: MobileScanner(
                controller: _controller,
                onDetect: (barcode) {
                  if (barcode.barcodes.isEmpty) {
                    return;
                  }

                  // Ignore duplicate values.
                  // Using DetectionSpeed.noDuplicates is the documented way to
                  // achieve this, but that doesn't seem to work as of
                  // mobile_scanner version 3.0.0-beta.4.
                  if (lastBarcode?.rawValue ==
                      barcode.barcodes.first.rawValue) {
                    return;
                  }

                  lastBarcode = barcode.barcodes.first;

                  if (lastBarcode != null) {
                    widget.onResult(lastBarcode!);
                  }
                },
              ),
            ),
          ),
        ],
      );
    } catch (cex) {
      return const Text('CAMERA ERROR');
    }
  }
}
