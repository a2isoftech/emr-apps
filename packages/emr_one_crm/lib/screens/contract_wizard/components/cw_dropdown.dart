import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';

class CWDropdownField<T> extends StatefulWidget {
  const CWDropdownField({
    required this.controller,
    required this.label,
    required this.hintText,
    required this.items,
    required this.onChanged,
    this.initialValue,
    this.validator,
    super.key,
  });

  final dynamic controller;
  final String label;
  final String hintText;
  final List<T> items;
  final ValueChanged<T?> onChanged;
  final T? initialValue;
  final String? Function(T?)? validator;

  @override
  State<CWDropdownField<T>> createState() => _CWDropdownFieldState<T>();
}

class _CWDropdownFieldState<T> extends State<CWDropdownField<T>> {
  T? _selectedValue;

  @override
  void initState() {
    super.initState();
    _selectedValue = widget.initialValue;
  }

  @override
  void didUpdateWidget(covariant CWDropdownField<T> oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.initialValue != widget.initialValue) {
      setState(() {
        _selectedValue = widget.initialValue;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FormHeadingRow(
          headings: [
            widget.label,
          ],
          isLeading: true,
        ),
        DropdownButtonFormField<T>(
          initialValue: _selectedValue,
          items: widget.items
              .map(
                (item) => DropdownMenuItem<T>(
                  value: item,
                  child: Text(item.toString()),
                ),
              )
              .toList(),
          decoration: InputDecoration(
            hintText: widget.hintText,
            border: const OutlineInputBorder(),
            contentPadding: const EdgeInsets.symmetric(
              horizontal: Insets.gutter / 2,
              vertical: Insets.gutter / 2,
            ),
          ),
          onChanged: (value) {
            if (value == _selectedValue) return;
            setState(() => _selectedValue = value);
            widget.onChanged(value);
          },
          validator: widget.validator,
        ),
      ],
    );
  }
}
