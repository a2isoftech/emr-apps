import 'package:emr_one_cashiersearch/common/styles.dart';
import 'package:flutter/material.dart';

class TicketDropDown<T> extends StatefulWidget {
  const TicketDropDown({
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
  State<TicketDropDown<T>> createState() => _TicketDropDownState<T>();
}

class _TicketDropDownState<T> extends State<TicketDropDown<T>> {
  late T? _value;

  @override
  void initState() {
    super.initState();
    _value = widget.value;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: DropdownButtonFormField<T>(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        decoration: TicketDecorations.textBoxStyle(
          context,
          label: widget.labelText ?? '',
        ).copyWith(
          hintText: widget.labelText ?? '',
          labelText: widget.labelText ?? '',
        ),
        hint: Text(widget.hintText ?? ''),
        icon: const Icon(Icons.keyboard_arrow_down),
        iconSize: 15,
        items: widget.items.map((T? value) {
          return DropdownMenuItem<T>(
            value: value,
            child: Text(value.toString()),
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
      ),
    );
  }
}
