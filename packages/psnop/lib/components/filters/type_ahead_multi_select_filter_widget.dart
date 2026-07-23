import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';

class TypeAheadMultiSelectFilter<T> extends StatelessWidget {
  const TypeAheadMultiSelectFilter({
    required this.context,
    required this.controller,
    required this.deselectItem,
    required this.itemName,
    required this.itemSelected,
    required this.noItemsFoundMessage,
    required this.onChanged,
    required this.selectedItems,
    required this.selectItem,
    required this.selectedTitle,
    required this.suggestionCallback,
    required this.title,
    super.key,
    this.validator,
  });

  final BuildContext context;
  final TextEditingController controller;
  final void Function(T) deselectItem;
  final String Function(T) itemName;
  final bool Function(T) itemSelected;
  final String noItemsFoundMessage;
  final void Function(T) onChanged;
  final Iterable<dynamic> selectedItems;
  final void Function(T) selectItem;
  final String Function() selectedTitle;
  final SuggestionsCallback<T> suggestionCallback;
  final String title;
  final FormFieldValidator<String>? validator;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Padding(
        padding: const EdgeInsets.all(
          Insets.gutter,
        ),
        child: TypeAheadFormField(
          errorBuilder: (
            context,
            error,
          ) {
            return Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 20,
              ),
              child: Text(
                context.l10n.psnopErrorOccurredMessage,
                style: TextStyle(
                  color: Theme.of(context).colorScheme.error,
                ),
              ),
            );
          },
          itemBuilder: (BuildContext context, T? itemData) {
            if (itemData == null) {
              return Container();
            }
            final notifier = ValueNotifier<bool>(
              itemSelected(itemData),
            );
            return ValueListenableBuilder(
              valueListenable: notifier,
              builder: (
                BuildContext context,
                dynamic value,
                Widget? child,
              ) {
                return CheckboxListTile(
                  title: Text(itemName(itemData)),
                  value: notifier.value,
                  onChanged: (value) {
                    notifier.value = value!;
                    onChanged(itemData);
                    if (itemSelected(itemData)) {
                      deselectItem(itemData);
                    } else {
                      selectItem(itemData);
                    }
                  },
                  controlAffinity: ListTileControlAffinity.trailing,
                );
              },
            );
          },
          noItemsFoundBuilder: (context) {
            if (selectedItems.isEmpty) {
              return Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 20,
                ),
                child: Text(
                  noItemsFoundMessage,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Theme.of(context).disabledColor,
                  ),
                ),
              );
            } else {
              return Container(
                height: 0,
              );
            }
          },
          onSuggestionSelected: (suggestion) {},
          suggestionsCallback: suggestionCallback,
          textFieldConfiguration: TextFieldConfiguration(
            controller: controller,
            decoration: InputDecoration(
              labelText: selectedItems.isNotEmpty
                  ? selectedItems.length > 1
                      ? '$title: ${context.l10n.psnopMulti}'
                      : '$title: ${selectedTitle()}'
                  : title,
            ),
          ),
          validator: validator,
        ),
      ),
    );
  }
}
