import 'package:flutter/material.dart';

class AutoCompleteEntry {
  AutoCompleteEntry(this.id, this.value);
  int id;
  String value = '';
}

class AutoCompleteSection extends StatefulWidget {
  const AutoCompleteSection({
    required this.header,
    required this.entries,
    required this.updateSection,
    super.key,
  });
  final String header;
  final List<AutoCompleteEntry> entries;
  final void Function(int? id, String value) updateSection;

  @override
  State<StatefulWidget> createState() => _AutoCompleteSectionState();
}

class _AutoCompleteSectionState extends State<AutoCompleteSection> {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Text(widget.header),
              ),
              Material(
                color: Colors.blue,
                child: Autocomplete<AutoCompleteEntry>(
                  optionsBuilder: (TextEditingValue textEditingValue) {
                    widget.updateSection(null, textEditingValue.text);
                    if (textEditingValue.text == '') {
                      return widget.entries;
                    } else {
                      return widget.entries
                          .where(
                            (c) => c.value
                                .toLowerCase()
                                .contains(textEditingValue.text.toLowerCase()),
                          )
                          .toList();
                    }
                  },
                  onSelected: (value) {
                    widget.updateSection(value.id, value.value);
                  },
                  displayStringForOption: (AutoCompleteEntry entry) =>
                      entry.value,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
