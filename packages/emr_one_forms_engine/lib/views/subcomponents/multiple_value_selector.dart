import 'dart:async';

import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_forms_engine/emr_one_forms_engine.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MultipleValueSelector<T> extends StatefulWidget {
  const MultipleValueSelector({
    required this.suggestionsCallback,
    required this.valueSelector,
    this.defaultSelectedItems,
    super.key,
    this.itemBuilder,
    this.onSuggestionSelected,
    this.label,
    this.hint,
    this.validatorCallback,
    this.onItemDeleted,
  });

  final FutureOr<Iterable<T>> Function(String) suggestionsCallback;
  final Widget Function(BuildContext, T)? itemBuilder;
  final void Function(T)? onSuggestionSelected;
  final String? label;
  final String? hint;
  final String? Function(String?)? validatorCallback;
  final String Function(T object) valueSelector;
  final void Function(T)? onItemDeleted;
  final List<T>? defaultSelectedItems;

  @override
  State<MultipleValueSelector<T>> createState() =>
      _MultipleValueSelectorState<T>();
}

class _MultipleValueSelectorState<T> extends State<MultipleValueSelector<T>> {
  final _typeAheadController = TextEditingController();
  final List<T> _selectedItems = List.empty(growable: true);

  @override
  void initState() {
    super.initState();
    if (widget.defaultSelectedItems?.isNotEmpty ?? false) {
      _selectedItems.addAll(widget.defaultSelectedItems!);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TypeAheadFormField<T>(
          suggestionsCallback: widget.suggestionsCallback,
          itemBuilder: (context, T availableOptions) {
            if (widget.itemBuilder == null) {
              final option = widget.valueSelector(availableOptions);
              return ListTile(title: Text(option));
            }
            return widget.itemBuilder!.call(context, availableOptions);
          },
          onSuggestionSelected: (T availableOption) {
            final option = availableOption;
            _typeAheadController.text = '';
            setState(() {
              if (_selectedItems
                  .where(
                    (e) =>
                        widget.valueSelector(e) == widget.valueSelector(option),
                  )
                  .isEmpty) {
                _selectedItems.add(option);

                if (widget.onSuggestionSelected != null) {
                  widget.onSuggestionSelected!.call(option);
                }
              }
            });
          },
          noItemsFoundBuilder: (context) => const SizedBox(
            height: 50,
            child: Center(child: Text('No records found.')),
          ),
          textFieldConfiguration: TextFieldConfiguration(
            controller: _typeAheadController,
            decoration: InputDecoration(
              border: const OutlineInputBorder(),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: FormColors.information),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Theme.of(context).dividerColor,
                ),
              ),
              hintText: widget.hint,
              labelText: widget.label,
            ),
          ),
          validator: widget.validatorCallback,
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
          child: Wrap(
            runSpacing: 5,
            spacing: 5,
            children: _selectedItems
                .map(
                  (e) => InputChip(
                    label: Text(widget.valueSelector(e)),
                    pressElevation: 0,
                    deleteIcon: Ink(
                      decoration: ShapeDecoration(
                        color: Theme.of(context).colorScheme.tertiary,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(4)),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(2),
                        child: FaIcon(
                          FontAwesomeIcons.xmark,
                          color: Theme.of(context).colorScheme.onTertiary,
                          size: 14,
                        ),
                      ),
                    ),
                    onDeleted: () {
                      setState(() {
                        _selectedItems.remove(e);
                      });
                      if (widget.onItemDeleted != null) {
                        widget.onItemDeleted!.call(e);
                      }
                    },
                  ),
                )
                .toList(),
          ),
        ),
      ],
    );
  }
}

class MultipleTextValueSelector extends MultipleValueSelector<String> {
  MultipleTextValueSelector({
    required this.dataSource,
    super.key,
    super.defaultSelectedItems,
    super.onSuggestionSelected,
    super.label,
    super.hint,
    super.validatorCallback,
    super.onItemDeleted,
  }) : super(
          suggestionsCallback: (searchText) => dataSource.isNotEmpty
              ? dataSource
                  .where(
                    (e) => e.toLowerCase().contains(searchText.toLowerCase()),
                  )
                  .toList()
              : const Iterable<String>.empty(),
          valueSelector: (e) => e,
        );

  final List<String> dataSource;
}
