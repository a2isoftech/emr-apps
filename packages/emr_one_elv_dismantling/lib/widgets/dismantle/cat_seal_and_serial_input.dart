import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_elv_dismantling/widgets/dismantle/dismantle_input_field.dart';
import 'package:flutter/material.dart';

class CatSealAndSerialInput extends StatefulWidget {
  const CatSealAndSerialInput({
    required this.sealNumberController,
    required this.serialNumberController,
    required this.enabled,
    super.key,
  });

  final TextEditingController sealNumberController;
  final TextEditingController serialNumberController;
  final bool enabled;

  @override
  State<CatSealAndSerialInput> createState() => _CatSealAndSerialInputState();
}

class _CatSealAndSerialInputState extends State<CatSealAndSerialInput> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        DismantleInputField(
          controller: widget.sealNumberController,
          label: context.l10n.sealNumber,
          keyBoardType: TextInputType.number,
          allowInputAsIntegerOnly: true,
          enabled: widget.enabled,
        ),
        const SizedBox(width: Insets.gutter / 2),
        DismantleInputField(
          controller: widget.serialNumberController,
          label: context.l10n.serialNumber,
          enabled: widget.enabled,
        ),
      ],
    );
  }
}
