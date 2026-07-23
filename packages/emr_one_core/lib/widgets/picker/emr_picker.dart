import 'package:collection/collection.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart' as ft;

enum EmrPickerMode {
  /// Displays a flyout on web, or full screen modal on iOS/Android, that lets
  /// the user search for an item.
  search,

  /// A typeahead field.
  inline,

  /// A simple dropdown list.
  dropdown,
}

class EmrPicker<T extends Object> extends StatefulWidget {
  /// A standard picker with a title, and optional subtitle and validation.
  /// [onItemSelected] is called when the result from `EmrModal.picker` is not
  /// null.
  /// The [mode] determines how the picker is displayed:
  /// - [EmrPickerMode.search]: Displays a flyout on web, or full screen modal
  ///   on iOS/Android, that lets the user search for an item.
  /// - [EmrPickerMode.inline]: An inline Typeahead field that shows suggestions
  ///   as the user types.
  /// - [EmrPickerMode.dropdown]: A simple dropdown list.
  const EmrPicker({
    required this.items,
    required this.itemTitleText,
    required this.mode,
    super.key,
    this.initialValue,
    this.validator,
    this.itemSubtitleText = _defaultItemSubtitleText,
    this.onItemSelected,
    this.labelText,
    this.controller,
    this.enabled = true,
    this.readOnly = false,
    this.autovalidateMode = AutovalidateMode.disabled,
    this.onInlineFocusChanged,
    this.onCleared,
  }) : assert(initialValue == null || controller == null);

  static String _defaultItemSubtitleText(Object item) => '';

  final String? initialValue;

  final Future<List<T>> Function(String) items;

  final String? labelText;

  final String Function(T) itemTitleText;

  final String Function(T) itemSubtitleText;

  final FormFieldValidator<String?>? validator;

  final void Function(T)? onItemSelected;

  final void Function()? onCleared;

  final TextEditingController? controller;

  final bool enabled;

  final bool readOnly;

  final EmrPickerMode mode;

  final void Function({required bool hasFocus})? onInlineFocusChanged;

  final AutovalidateMode autovalidateMode;

  @override
  State<EmrPicker<T>> createState() => _EmrPickerState<T>();
}

class _EmrPickerState<T extends Object> extends State<EmrPicker<T>> {
  late final _controller = TextEditingController(text: widget.initialValue);

  TextEditingController get controller => widget.controller ?? _controller;

  late final _inlineFocusNode = FocusNode(onKeyEvent: _onKeyEvent);

  late Future<List<T>> _dropdownItems;

  @override
  void initState() {
    super.initState();

    _inlineFocusNode.addListener(_inlineFocusChanged);

    _dropdownItems = _loadDropdownItems;
  }

  Future<List<T>> get _loadDropdownItems async {
    if (widget.mode != EmrPickerMode.dropdown) {
      return [];
    }

    return widget.items('');
  }

  @override
  void dispose() {
    _inlineFocusNode.removeListener(_inlineFocusChanged);
    _inlineFocusNode.dispose();

    _controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // A typeahead field.
    if (widget.mode == EmrPickerMode.inline) {
      return _typeAheadField();
    }

    // A simple dropdown list.
    if (widget.mode == EmrPickerMode.dropdown) {
      return _dropdownList();
    }

    final emrFormMode = EmrForm.modeOf(context);

    // An adaptive search UI.
    return Padding(
      // This top padding is to fix an issue when the picker is at the top of a
      // SingleChildScrollView, where the top of the label is clipped when the
      // view's children cause it to scroll.
      padding: EdgeInsets.only(top: widget.labelText != null ? 6 : 0),
      child: TextFormField(
        enableInteractiveSelection: false,
        showCursor: false,
        decoration: InputDecoration(
          labelText: widget.labelText,
          hintText: context.l10n.selectAnOption,
          suffixIcon: (widget.onCleared != null &&
                  controller.text.isNotEmpty &&
                  widget.enabled &&
                  !widget.readOnly)
              ? IconButton(
                  icon: const Icon(Icons.clear),
                  onPressed: () {
                    controller.clear();

                    widget.onCleared!();
                  },
                )
              : null,
          errorStyle:
              // Hide the validation message when in grid mode.
              emrFormMode == EmrFormMode.grid
                  ? const TextStyle(fontSize: 0)
                  : null,
        ),
        controller: controller,
        mouseCursor: widget.readOnly || !widget.enabled
            ? null
            : SystemMouseCursors.click,
        onFieldSubmitted: widget.readOnly
            ? null
            : (_) => _pick(context), // Handle enter keypress to pick.
        onTap: widget.readOnly ? null : () => _pick(context),
        enabled: widget.enabled,
        readOnly: true,
        validator: widget.validator,
      ),
    );
  }

  Future<void> _pick(BuildContext context) async {
    final value = await EmrModal.picker<T>(
      context,
      titleText: context.l10n.selectAnOption,
      itemsFuture: widget.items,
      itemTitleText: widget.itemTitleText,
      itemSubtitleText: widget.itemSubtitleText,
    );

    if (value != null) {
      controller.text = widget.itemTitleText(value);

      widget.onItemSelected?.call(value);
    }
  }

  Widget _typeAheadField() => widget.readOnly
      ? TextFormField(
          readOnly: true,
          enabled: widget.enabled,
          controller: controller,
          decoration: InputDecoration(
            hintText: context.l10n.selectAnOption,
          ),
        )
      : ft.TypeAheadField<T>(
          controller: controller,
          focusNode: _inlineFocusNode,
          builder: (context, controller, focusNode) {
            final emrFormMode = EmrForm.modeOf(context);

            return TextFormField(
              controller: controller,
              focusNode: focusNode,
              enabled: widget.enabled,
              decoration: InputDecoration(
                hintText: context.l10n.selectAnOption,
                suffixIcon: (widget.onCleared != null &&
                        controller.text.isNotEmpty &&
                        widget.enabled)
                    ? IconButton(
                        icon: const Icon(Icons.clear),
                        onPressed: () {
                          controller.clear();

                          widget.onCleared!();
                        },
                      )
                    : null,
                errorStyle:
                    // Hide the validation message when in grid mode.
                    emrFormMode == EmrFormMode.grid
                        ? const TextStyle(fontSize: 0)
                        : null,
              ),
              validator: widget.validator,
              autovalidateMode: widget.autovalidateMode,
            );
          },
          suggestionsCallback: (pattern) async {
            final results = await widget.items(pattern);
            final patternLowerCase = pattern.toLowerCase();

            // Even though [pattern] is passed to the items callback, for
            // scenarios where we're using a local list of items, we need to
            // filter the results here, to maintain the functionality as it was
            // before the [pattern] was passed.
            return results
                .where(
                  (x) =>
                      widget
                          .itemTitleText(x)
                          .toLowerCase()
                          .contains(patternLowerCase) ||
                      widget
                          .itemSubtitleText(x)
                          .toLowerCase()
                          .contains(patternLowerCase),
                )
                .toList();
          },
          itemBuilder: (context, suggestion) {
            final subtitleText = widget.itemSubtitleText(suggestion);

            return ListTile(
              title: Text(widget.itemTitleText(suggestion)),
              subtitle: subtitleText.isNotEmpty ? Text(subtitleText) : null,
            );
          },
          onSelected: (suggestion) {
            controller.text = widget.itemTitleText(suggestion);

            widget.onItemSelected?.call(suggestion);
          },
          emptyBuilder: (context) => Padding(
            padding: const EdgeInsets.all(Insets.gutter),
            child: Text(context.l10n.noResults),
          ),
          errorBuilder: (context, error) => Padding(
            padding: const EdgeInsets.all(Insets.gutter),
            child: Text(
              error.toString(),
              style: TextStyle(color: Theme.of(context).colorScheme.error),
            ),
          ),
          loadingBuilder: (context) => const SizedBox(
            height: 55,
            child: Center(child: CircularProgressIndicator()),
          ),
        );

  /// Handle the escape key to unfocus the inline field which causes the inline
  /// picker suggestions to close.
  KeyEventResult _onKeyEvent(FocusNode _, KeyEvent event) {
    if (event.logicalKey == LogicalKeyboardKey.escape) {
      _inlineFocusNode.unfocus();
    }

    return KeyEventResult.ignored;
  }

  void _inlineFocusChanged() => widget.onInlineFocusChanged?.call(
        hasFocus: _inlineFocusNode.hasFocus,
      );

  Widget _dropdownList() {
    return widget.readOnly
        ? TextFormField(
            readOnly: true,
            enabled: widget.enabled,
            controller: controller,
            decoration: InputDecoration(
              hintText: context.l10n.selectAnOption,
            ),
          )
        : FutureBuilder(
            future: _dropdownItems,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                final emptyItems = <DropdownMenuItem<T>>[];

                return DropdownButtonFormField<T>(
                  items: emptyItems,
                  hint: Text('${context.l10n.loading}...'),
                  onChanged: null,
                );
              }

              if (snapshot.hasError) {
                return Padding(
                  padding: const EdgeInsets.all(Insets.gutter),
                  child: Text(
                    snapshot.error.toString(),
                    style:
                        TextStyle(color: Theme.of(context).colorScheme.error),
                  ),
                );
              }
              final items = snapshot.data!;

              final selectedItem = items.firstWhereOrNull(
                (item) => widget.itemTitleText(item) == controller.text,
              );

              return DropdownButtonFormField<T>(
                items: items.map((item) {
                  return DropdownMenuItem<T>(
                    value: item as T?,
                    child: Text(widget.itemTitleText(item)),
                  );
                }).toList(),
                initialValue: selectedItem,
                onChanged: widget.enabled
                    ? (value) {
                        widget.onItemSelected?.call(value!);
                      }
                    : null,
                hint: Text(context.l10n.selectAnOption),
                validator: (value) {
                  return widget.validator?.call(
                    value == null ? '' : widget.itemTitleText(value),
                  );
                },
                autovalidateMode: widget.autovalidateMode,
                errorBuilder: (context, errorText) {
                  final emrFormMode = EmrForm.modeOf(context);

                  // Hide the validation message when in grid mode.
                  if (emrFormMode == EmrFormMode.grid) {
                    return const SizedBox.shrink();
                  }

                  final colours = Theme.of(context).colorScheme;
                  final textTheme = Theme.of(context).textTheme;
                  final errorStyle =
                      textTheme.bodySmall!.copyWith(color: colours.error);

                  return Text(errorText, style: errorStyle);
                },
              );
            },
          );
  }
}
