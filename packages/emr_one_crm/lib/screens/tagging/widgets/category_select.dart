import 'package:emr_one_core/extensions/extensions.dart';
import 'package:emr_one_crm/models/tagging/models.dart';
import 'package:emr_one_crm/screens/tagging/widgets/multiselect.dart';
import 'package:emr_one_crm/screens/tagging/widgets/themed_button.dart';
import 'package:flutter/material.dart';

class CategorySelect extends StatefulWidget {
  const CategorySelect({
    required this.supporting,
    required this.updateCategory,
    required this.updateTerritories,
    super.key,
  });
  final Supporting supporting;
  final void Function(int? id, String value) updateCategory;
  final void Function(List<MultiSelectEntry> territories) updateTerritories;

  @override
  State<StatefulWidget> createState() => _CategorySelectState();
}

class _CategorySelectState extends State<CategorySelect> {
  bool _showTerritories = true;

  List<MultiSelectEntry> _territories = [];

  @override
  Widget build(BuildContext context) {
    _territories = widget.supporting.territories
        .map((e) => MultiSelectEntry(e.code, e.name, selected: false))
        .toList();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Text(context.l10n.category.toUpperCase()),
        ),
        Material(
          color: Colors.blue,
          child: Autocomplete<TagCategory>(
            optionsBuilder: (TextEditingValue textEditingValue) {
              widget.updateCategory(null, textEditingValue.text);
              setState(() {
                _showTerritories = true;
              });
              if (textEditingValue.text == '') {
                return widget.supporting.categories.toList();
              } else {
                return widget.supporting.categories
                    .where(
                      (c) => c.description
                          .toLowerCase()
                          .contains(textEditingValue.text.toLowerCase()),
                    )
                    .toList();
              }
            },
            onSelected: (value) {
              widget.updateCategory(value.id, value.description);
              setState(() {
                _showTerritories = false;
              });
            },
            displayStringForOption: (TagCategory option) => option.description,
          ),
        ),
        Visibility(
          visible: _showTerritories,
          child: ThemedButton(
            text: context.l10n.selectTerritories.toUpperCase(),
            action: _showMultiSelect,
          ),
        ),
      ],
    );
  }

  Future<void> _showMultiSelect() async {
    final results = await showDialog<List<MultiSelectEntry>?>(
      context: context,
      builder: (BuildContext context) {
        return MultiSelect(
          items: _territories,
          heading: context.l10n.selectTerritories,
        );
      },
    );

    // Update UI
    if (results != null) {
      _territories = results;
      widget.updateTerritories(results);
    }
  }
}
