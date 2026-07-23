import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class EmrQrCode extends StatelessWidget {
  /// Displays a QR code with the given [value] and optional [colour].
  /// When [colour] is not provided Theme.colorScheme.onSurface is used.
  const EmrQrCode({
    required this.value,
    super.key,
    this.colour,
  });

  final String value;

  final Color? colour;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Center(
      child: QrImageView(
        data: value,
        eyeStyle: QrEyeStyle(
          eyeShape: QrEyeShape.square,
          color: colour ?? theme.colorScheme.onSurface,
        ),
        dataModuleStyle: QrDataModuleStyle(
          dataModuleShape: QrDataModuleShape.square,
          color: colour ?? theme.colorScheme.onSurface,
        ),
      ),
    );
  }
}
