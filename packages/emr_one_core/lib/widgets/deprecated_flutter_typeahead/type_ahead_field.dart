import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart' as ft;
// ignore: implementation_imports
import 'package:flutter_typeahead/src/common/base/types.dart'
    hide SuggestionsCallback;

/// DO NOT USE THIS WIDGET!
/// This is a temporary widget that should not be used by new functionality.
/// It's purpose is only to bridge the gap between `flutter_typeahead` changing
/// how the widget is built, and us using our own `EmrPickerFormField`s.
class TypeAheadField<T> extends StatelessWidget {
  const TypeAheadField({
    required this.itemBuilder,
    required this.suggestionsCallback,
    super.key,
    this.onSuggestionSelected,
    this.textFieldConfiguration,
    this.hideOnEmpty = false,
    this.keepSuggestionsOnLoading = true,
  });

  final ValueSetter<T>? onSuggestionSelected;

  final SuggestionsItemBuilder<T> itemBuilder;

  final SuggestionsCallback<T> suggestionsCallback;

  final TextFieldConfiguration? textFieldConfiguration;

  final bool hideOnEmpty;

  final bool keepSuggestionsOnLoading;

  @override
  Widget build(BuildContext context) {
    return ft.TypeAheadField<T>(
      builder: (_, controller, focusNode) {
        return TextField(
          controller: controller,
          focusNode: focusNode,
          decoration: textFieldConfiguration?.decoration,
          onChanged: textFieldConfiguration?.onChanged,
          enableSuggestions: textFieldConfiguration?.enableSuggestions ?? true,
        );
      },
      onSelected: onSuggestionSelected,
      itemBuilder: itemBuilder,
      suggestionsCallback: (String search) async {
        return (await suggestionsCallback(search))?.toList();
      },
      hideOnEmpty: hideOnEmpty,
      retainOnLoading: keepSuggestionsOnLoading,
    );
  }
}
