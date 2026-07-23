import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/material.dart';

class DismantlingSearchYardText extends StatefulWidget {
  const DismantlingSearchYardText({
    this.selectedYard,
    super.key,
  });

  final Yard? selectedYard;

  @override
  State<DismantlingSearchYardText> createState() =>
      _DismantlingSearchYardTextState();
}

class _DismantlingSearchYardTextState extends State<DismantlingSearchYardText> {
  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(text: context.l10n.vehicles),
          if (widget.selectedYard != null) ...[
            const TextSpan(text: ' @ '),
            TextSpan(
              text: widget.selectedYard!.name,
            ),
          ],
        ],
      ),
      style: Theme.of(context).textTheme.titleLarge,
    );
  }
}
