import 'dart:async';

import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/src/widgets/code_scanner/emr_type_ahead.dart';
import 'package:flutter/material.dart';

class EmrCodeScanner<T> extends StatefulWidget {
  const EmrCodeScanner({
    required this.labeltText,
    required this.onSelected,
    required this.futureCallback,
    required this.itembuilder,
    required this.textController,
    super.key,
    this.hinttext,
    this.onScan,
  });

  final String labeltText;
  final String? hinttext;
  final void Function(T selected)? onSelected;
  final FutureOr<List<T>> Function(String) futureCallback;
  final Widget Function(BuildContext context, T itema) itembuilder;
  final TextEditingController textController;
  final void Function(String code)? onScan;

  @override
  State<EmrCodeScanner<T>> createState() => _EmrCodeScannerState<T>();
}

class _EmrCodeScannerState<T> extends State<EmrCodeScanner<T>> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: EmrTypeAhead<T>(
            futureCallback: widget.futureCallback,
            controller: widget.textController,
            itembuilder: widget.itembuilder,
            onChanged: widget.onSelected,
            labelText: widget.labeltText,
            hintText: widget.hinttext ??
                '${context.l10n.pleaseEnterA} ${context.l10n.barcode}',
          ),
        ),
        IconButton(
          iconSize: Insets.gutter * 2,
          onPressed: () async {
            final code = await ScanHelper.startInlineCodeScan(
              context,
              title: '${context.l10n.scan} ${context.l10n.barcode}',
            );
            if (code != null && code.isNotEmpty) {
              widget.onScan?.call(code);
            }
          },
          icon: const Icon(
            Icons.qr_code_2,
            size: 60,
          ),
        ),
      ],
    );
  }
}
