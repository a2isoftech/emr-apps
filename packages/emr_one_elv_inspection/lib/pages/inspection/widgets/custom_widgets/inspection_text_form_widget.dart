import 'package:emr_flutter_theme/emr_flutter_theme.dart';
import 'package:flutter/material.dart';

class InspectionTextForm extends StatelessWidget {
  const InspectionTextForm({
    required this.txtController,
    this.header,
    this.placeholder,
    this.validator,
    this.onChanged,
    this.maxLength,
    this.isDisabled = false,
    this.onFieldSubmitted,
    this.onClearClicked,
    this.errorText,
    super.key,
  });
  final TextEditingController txtController;
  final String? header;
  final String? placeholder;
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;
  final int? maxLength;
  final bool isDisabled;
  final void Function(String)? onFieldSubmitted;
  final void Function()? onClearClicked;
  final String? errorText;

  @override
  Widget build(BuildContext context) {
    final hasTextNotifier = ValueNotifier(false);
    return ValueListenableBuilder(
      valueListenable: hasTextNotifier,
      builder: (context, value, child) {
        return TextFormField(
          controller: txtController,
          onChanged: (text) {
            hasTextNotifier.value = text.isNotEmpty;
            if (onChanged != null) {
              onChanged?.call(text);
            }
          },
          onFieldSubmitted: onFieldSubmitted,
          maxLength: maxLength,
          validator: validator,
          enabled: !isDisabled,
          decoration: InputDecoration(
            labelText: header,
            labelStyle: const TextStyle(
              color: EmrColours.secondaryGrey,
              decoration: TextDecoration.none,
            ),
            hintText: placeholder,
            suffixIcon: !value
                ? null
                : IconButton(
                    onPressed: () {
                      txtController.text = '';
                      hasTextNotifier.value = false;
                      onClearClicked?.call();
                    },
                    icon: const Icon(
                      Icons.cancel_outlined,
                    ),
                  ),
            isDense: true,
            counterText: '',
            border: const OutlineInputBorder(),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                color: EmrColours.secondaryGrey,
              ),
            ),
            errorText: errorText,
          ),
        );
      },
    );
  }
}
