// Multi Select widget
// This widget is reusable
// https://www.kindacode.com/article/flutter-making-a-dropdown-multiselect-with-checkboxes/
import 'package:emr_one_core/extensions/extensions.dart';
import 'package:flutter/material.dart';

class MultiSelectEntry {
  MultiSelectEntry(
    this.key,
    this.value, {
    required this.selected,
  });
  String key = '';
  String value = '';
  bool selected = false;
}

class MultiSelect extends StatefulWidget {
  const MultiSelect({required this.items, required this.heading, super.key});
  final List<MultiSelectEntry> items;
  final String heading;

  @override
  State<StatefulWidget> createState() => _MultiSelectState();
}

class _MultiSelectState extends State<MultiSelect> {
// This function is triggered when a checkbox is checked or unchecked
  void _itemChange(String itemKey, bool isSelected) {
    setState(() {
      final item = widget.items.where((i) => i.key == itemKey).first;
      item.selected = isSelected;
    });
  }

  // this function is called when the Cancel button is pressed
  void _cancel() {
    Navigator.pop(context);
  }

// this function is called when the Submit button is tapped
  void _submit() {
    Navigator.pop(context, widget.items);
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(widget.heading),
      content: SingleChildScrollView(
        child: ListBody(
          children: widget.items
              .map(
                (item) => CheckboxListTile(
                  value: item.selected,
                  title: Text(item.value),
                  controlAffinity: ListTileControlAffinity.leading,
                  onChanged: (isChecked) => _itemChange(item.key, isChecked!),
                ),
              )
              .toList(),
        ),
      ),
      actions: [
        TextButton(
          onPressed: _cancel,
          child: Text(context.l10n.cancel),
        ),
        ElevatedButton(
          onPressed: _submit,
          child: Text(context.l10n.submit),
        ),
      ],
    );
  }
}
