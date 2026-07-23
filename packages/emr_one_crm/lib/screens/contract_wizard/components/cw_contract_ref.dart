import 'package:emr_one_core/extensions/extensions.dart';
import 'package:emr_one_core/widgets/widgets.dart';
import 'package:emr_one_crm/services/contract_controller.dart';
import 'package:flutter/material.dart';

class CWContractRef extends StatefulWidget {
  const CWContractRef({required this.controller, super.key});

  final ContractController controller;

  @override
  State<CWContractRef> createState() => _CWContractRefState();
}

class _CWContractRefState extends State<CWContractRef> {
  late TextEditingController ccrController;

  @override
  void initState() {
    super.initState();

    ccrController = TextEditingController(
      text: widget.controller.model?.customerContractRef,
    );
  }

  @override
  void dispose() {
    ccrController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FormHeadingRow(
          headings: ['${context.l10n.customerContractReference}:'],
        ),
        FormRow(
          children: [
            TextFormField(
              controller: ccrController,
              decoration: InputDecoration(
                hintText: context.l10n.customerContractReference,
              ),
              onChanged: (value) {
                widget.controller.model!.customerContractRef = value;
              },
            ),
          ],
        ),
      ],
    );
  }
}
