import 'package:emr_one_core/widgets/form_styles.dart';
import 'package:emr_one_inform/constants/styles.dart';
import 'package:flutter/material.dart';

class InformDropdownButtonFormField<T> extends StatefulWidget {
  const InformDropdownButtonFormField({
    required this.controller,
    required this.items,
    required this.onChanged,
    super.key,
    this.labelText,
    this.hintText,
    this.validationMessage,
    this.value,
  });

  final TextEditingController controller;
  final String? labelText;
  final String? hintText;
  final String? validationMessage;
  final List<T> items;
  final T? value;
  final void Function(T?) onChanged;

  @override
  State<InformDropdownButtonFormField<T>> createState() =>
      _InformDropdownButtonFormFieldState<T>();
}

class _InformDropdownButtonFormFieldState<T>
    extends State<InformDropdownButtonFormField<T>> {
  late T? _value;

  @override
  void initState() {
    super.initState();
    _value = widget.value;
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<T>(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: FormStyles.textFieldDecoration(context)
          .copyWith(labelText: widget.labelText ?? ''),
      hint: Padding(
        padding: const EdgeInsets.only(top: 5),
        child: Text(widget.hintText ?? ''),
      ),
      icon: FormAppIcons.dropdownList,
      iconSize: 30,
      items: widget.items.map((T? value) {
        return DropdownMenuItem<T>(
          value: value,
          child: Padding(
            padding: const EdgeInsets.only(top: 7),
            child: Text(value.toString()),
          ),
        );
      }).toList(),
      onChanged: (T? value) {
        setState(() => _value = value);
        widget.onChanged(value);
      },
      validator: (value) => widget.validationMessage == null
          ? null
          : (value == null)
              ? widget.validationMessage
              : null,
      initialValue: _value,
    );
  }
}
