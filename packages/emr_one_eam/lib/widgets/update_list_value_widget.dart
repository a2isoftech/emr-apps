import 'package:emr_one_eam/models/update_list_model.dart';
import 'package:emr_one_eam/widgets/eam_textbox.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class UpdateListValueWidget extends StatefulWidget {
  const UpdateListValueWidget({
    required this.value,
    required this.index,
    required this.onTextChanged,
    required this.onValueChanged,
    required this.onOrderIndexChanged,
    required this.onActiveInactiveClicked,
    required this.textEnabled,
    super.key,
  });
  final UpdateListValueModel? value;
  final int? index;
  final void Function(String?)? onTextChanged;
  final void Function(String?)? onValueChanged;
  final void Function(String?)? onOrderIndexChanged;
  final void Function()? onActiveInactiveClicked;
  final ValueNotifier<bool> textEnabled;

  @override
  State<UpdateListValueWidget> createState() => _UpdateListValueWidgetState();
}

class _UpdateListValueWidgetState extends State<UpdateListValueWidget> {
  @override
  Widget build(BuildContext context) {
    final textController = TextEditingController(text: widget.value?.text);
    final valueController = TextEditingController(text: widget.value?.value);
    final orderIndexController =
        TextEditingController(text: (widget.value?.orderIndex ?? 0).toString());

    return Padding(
      padding: const EdgeInsets.all(8),
      child: Row(
        children: [
          Expanded(
            child: ValueListenableBuilder(
              valueListenable: widget.textEnabled,
              builder: (context, isEnabled, child) {
                return Row(
                  children: [
                    Expanded(
                      child: EAMTextBox(
                        controller: textController,
                        onChanged: (value1) =>
                            widget.onTextChanged?.call(value1),
                        isEnabled: isEnabled,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: EAMTextBox(
                        controller: valueController,
                        isEnabled: isEnabled,
                        onChanged: (value1) =>
                            widget.onValueChanged?.call(value1),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: EAMTextBox(
                        controller: orderIndexController,
                        isEnabled: isEnabled,
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter(
                            RegExp('[0-9. -]'),
                            allow: true,
                          ),
                        ],
                        onChanged: (value1) =>
                            widget.onOrderIndexChanged?.call(value1),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    IconButton(
                      onPressed: () {
                        widget.textEnabled.value = !widget.textEnabled.value;
                        widget.onActiveInactiveClicked?.call();
                      },
                      icon: Icon(isEnabled ? Icons.close : Icons.restart_alt),
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
}
