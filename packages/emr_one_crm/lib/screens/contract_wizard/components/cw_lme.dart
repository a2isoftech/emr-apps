import 'package:emr_one_core/extensions/extensions.dart';
import 'package:emr_one_core/validators/validators.dart';
import 'package:emr_one_core/widgets/widgets.dart';
import 'package:emr_one_crm/services/contract_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CWLmeInput extends StatefulWidget {
  const CWLmeInput({
    required this.controller,
    super.key,
  });

  final ContractController controller;

  @override
  State<CWLmeInput> createState() => _CWLmeInputState();
}

class _CWLmeInputState extends State<CWLmeInput> {
  late TextEditingController lmeController;

  @override
  void initState() {
    super.initState();
    lmeController = TextEditingController();
    lmeController.text = widget.controller.model?.internalLME ?? '';
  }

  @override
  void dispose() {
    lmeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FormHeadingRow(
          headings: ['${context.l10n.internalLME}:'],
        ),
        FormRow(
          children: [
            TextFormField(
              key: widget.controller.internalLMEKey,
              controller: lmeController,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              inputFormatters: [
                LengthLimitingTextInputFormatter(32),
              ],
              decoration: InputDecoration(hintText: context.l10n.internalLME),
              onChanged: (value) {
                widget.controller.model!.internalLME = value;
              },
              validator: (value) {
                return Validators.required(
                  value,
                  () => widget.controller
                      .addInvalidKey(widget.controller.internalLMEKey!),
                );
              },
            ),
          ],
        ),
      ],
    );
  }
}
