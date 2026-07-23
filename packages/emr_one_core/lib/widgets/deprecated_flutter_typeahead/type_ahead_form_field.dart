import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart' hide SuggestionsCallback;

/// DO NOT USE THIS WIDGET!
/// This is a temporary widget that should not be used by new functionality.
/// It's purpose is only to bridge the gap between `flutter_typeahead` changing
/// how the widget is built, and us using our own `EmrPickerFormField`s.
class TypeAheadFormField<T> extends StatelessWidget {
  const TypeAheadFormField({
    required this.itemBuilder,
    required this.suggestionsCallback,
    super.key,
    this.autovalidateMode,
    this.validator,
    this.onSuggestionSelected,
    this.textFieldConfiguration,
    this.autoFlipDirection = false,
    this.noItemsFoundBuilder,
    this.enabled = true,
    this.errorBuilder,
  });

  final AutovalidateMode? autovalidateMode;

  final FormFieldValidator<String>? validator;

  final ValueSetter<T>? onSuggestionSelected;

  final SuggestionsItemBuilder<T> itemBuilder;

  final SuggestionsCallback<T> suggestionsCallback;

  final TextFieldConfiguration? textFieldConfiguration;

  final bool autoFlipDirection;

  final Widget Function(BuildContext)? noItemsFoundBuilder;

  final bool enabled;

  final Widget Function(BuildContext, Object)? errorBuilder;

  @override
  Widget build(BuildContext context) {
    return TypeAheadField<T>(
      controller: textFieldConfiguration?.controller,
      builder: (_, controller, focusNode) {
        return TextFormField(
          controller: controller,
          focusNode: focusNode,
          autovalidateMode: autovalidateMode,
          validator: validator,
          decoration: textFieldConfiguration?.decoration,
          onChanged: textFieldConfiguration?.onChanged,
          onFieldSubmitted: textFieldConfiguration?.onSubmitted,
          enableSuggestions: textFieldConfiguration?.enableSuggestions ?? true,
          enabled: enabled,
        );
      },
      onSelected: onSuggestionSelected,
      itemBuilder: itemBuilder,
      suggestionsCallback: (String search) async {
        final data = await suggestionsCallback(search);

        return data?.toList();
      },
      autoFlipDirection: autoFlipDirection,
      emptyBuilder: noItemsFoundBuilder,
      errorBuilder: errorBuilder,
    );
  }
}

typedef SuggestionsCallback<T> = FutureOr<Iterable<T>?> Function(String search);

// https://github.com/AbdulRahmanAlHamali/flutter_typeahead/commit/94057d038d8057532df86574a9adace56c30f5a1?diff=split#diff-ce8597989735fe7cae4c84725f2602ca5c429733b10eac7e4a6fa6c2470c505b
class TextFieldConfiguration {
  TextFieldConfiguration({
    this.controller,
    this.decoration = const InputDecoration(),
    this.onChanged,
    this.onSubmitted,
    this.enableSuggestions = true,
  });

  final TextEditingController? controller;

  final InputDecoration decoration;

  final ValueChanged<String>? onChanged;

  final ValueChanged<String>? onSubmitted;

  final bool enableSuggestions;
}
