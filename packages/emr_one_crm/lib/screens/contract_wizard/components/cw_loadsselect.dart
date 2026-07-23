import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_crm/services/contract_controller.dart';
import 'package:flutter/material.dart';

class CWLoadsSelect extends StatefulWidget {
  const CWLoadsSelect({
    required this.controller,
    super.key,
  });

  final ContractController controller;

  @override
  State<CWLoadsSelect> createState() => _CWLoadsSelectState();
}

class _CWLoadsSelectState extends State<CWLoadsSelect> {
  late final TextEditingController loadsEditingController;

  @override
  void initState() {
    super.initState();

    loadsEditingController = TextEditingController(
      text: widget.controller.model!.targetLoads.toString(),
    );
    loadsEditingController.addListener(_listener);
  }

  @override
  void dispose() {
    loadsEditingController.removeListener(_listener);
    loadsEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: Insets.gutter),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FormHeadingRow(
            headings: [
              '${context.l10n.loads}:',
            ],
          ),
          ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 480,
            ),
            child: FormField(
              validator: (value) {
                if (widget.controller.model!.targetLoads == 0) {
                  widget.controller.addInvalidKey(widget.controller.loadsKey!);

                  return context.l10n.required;
                }

                return null;
              },
              builder: (FormFieldState<dynamic> field) {
                return Column(
                  children: [
                    InputStepper(
                      controller: loadsEditingController,
                    ),
                    if (field.hasError)
                      Text(
                        field.errorText ?? '',
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.error,
                        ),
                      ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  void _listener() {
    final value = int.tryParse(loadsEditingController.text);

    // If the user entered an invalid number, populate the field with zero
    // and move the cursor to the end.
    if (value == null) {
      loadsEditingController.text = '0';

      loadsEditingController.selection =
          const TextSelection.collapsed(offset: 1);
    }

    widget.controller.model!.targetLoads = value ?? 0;
  }
}
