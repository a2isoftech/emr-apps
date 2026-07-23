import 'dart:async';

import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/widgets/form_styles.dart';
import 'package:flutter/material.dart';

class TypeAheadSearchGeneric<T> extends StatefulWidget {
  const TypeAheadSearchGeneric({
    required this.suggestionsCallback,
    required this.controller,
    required this.valueSelector,
    this.defaultSelectedItems,
    super.key,
    this.itemBuilder,
    this.onSuggestionSelected,
    this.onEnterKeyPressed,
    this.label,
    this.hint,
    this.validatorCallback,
    this.onCleared,
  });

  final FutureOr<Iterable<T>> Function(String) suggestionsCallback;
  final Widget Function(BuildContext, T)? itemBuilder;
  final void Function(T)? onSuggestionSelected;
  final void Function(String)? onEnterKeyPressed;
  final String? label;
  final String? hint;
  final String? Function(String?)? validatorCallback;
  final String Function(T object) valueSelector;
  final T? defaultSelectedItems;
  final void Function()? onCleared;
  final TextEditingController controller;

  @override
  State<TypeAheadSearchGeneric<T>> createState() =>
      _TypeAheadSearchGenericState<T>();
}

class _TypeAheadSearchGenericState<T> extends State<TypeAheadSearchGeneric<T>> {
  late T _selectedItem;

  @override
  void initState() {
    super.initState();
    if (widget.defaultSelectedItems != null) {
      _selectedItem = widget.defaultSelectedItems as T;
      widget.controller.text = widget.valueSelector.call(_selectedItem);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TypeAheadFormField<T>(
          suggestionsCallback: (pattern) {
            return widget.suggestionsCallback(pattern);
          },
          itemBuilder: (context, T availableOptions) {
            if (widget.itemBuilder == null) {
              final option = widget.valueSelector(availableOptions);
              return ListTile(title: Text(option));
            }
            return widget.itemBuilder!.call(context, availableOptions);
          },
          onSuggestionSelected: (T availableOption) {
            final option = availableOption;
            widget.controller.text = widget.valueSelector.call(option);
            _selectedItem = option;
            if (widget.onSuggestionSelected != null) {
              widget.onSuggestionSelected!.call(option);
            }
          },
          noItemsFoundBuilder: (context) => SizedBox(
            height: 50,
            child: Center(child: Text(context.l10n.noRecordsMessage)),
          ),
          textFieldConfiguration: TextFieldConfiguration(
            onSubmitted: (value) {
              if (widget.onEnterKeyPressed != null) {
                widget.onEnterKeyPressed!.call(value);
              }
            },
            controller: widget.controller,
            decoration: FormStyles.textFieldDecoration(context).copyWith(
              isDense: true,
              contentPadding: const EdgeInsets.all(12),
              hintText: widget.hint,
              labelText: widget.label,
              labelStyle: const TextStyle(color: Colors.grey),
              suffixIcon: IconButton(
                color: Colors.green,
                onPressed: () {
                  widget.controller.clear();
                  if (widget.onCleared != null) {
                    widget.onCleared!.call();
                  }
                },
                icon: const Icon(Icons.clear),
              ),
            ),
          ),
          validator: widget.validatorCallback,
        ),
      ],
    );
  }
}
