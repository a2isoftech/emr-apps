import 'dart:async';

import 'package:collection/collection.dart';
import 'package:emr_one_core/eo_constants.dart';
import 'package:emr_one_core/extensions/extensions.dart';
import 'package:emr_one_core/widgets/filter/emr_filter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';

/// A [TypeAheadField] which can be used in a filter popover.
/// When multi is set to true, the filter should be of type
/// `EmrFilterModel<List<TFilterValue>>`, otherwise it should be a
/// `EmrFilterModel<TFilterValue>`.
class EmrFilterAutoComplete<T, TFilterValue> extends StatefulWidget {
  EmrFilterAutoComplete(
    Key? key,
    this.filterModel,
    this.controller,
    this.suggestionsCallback, {
    required this.close,
    required this.getTitle,
    required this.getValue,
    this.getSubtitle,
    this.multi = false,
    this.multiPopoverSelectedItemsConstraints =
        const BoxConstraints(maxHeight: 100),
  }) : super(key: key) {
    if (multi && filterModel is! EmrFilterModel<List<TFilterValue>>) {
      throw Exception(
        'When multi is true, filterModel must be a '
        'EmrFilterModel<List<TFilterValue>>',
      );
    }
  }

  final EmrFilterModel<dynamic> filterModel;
  final EmrFilterController controller;
  final Future<Iterable<T>> Function(
    String pattern,
    EmrFilterController filterController,
  ) suggestionsCallback;
  final void Function() close;
  final String Function(T) getTitle;
  final String Function(T)? getSubtitle;
  final TFilterValue Function(T) getValue;

  /// Sets whether the user can select more than one item. When this is [true]
  /// the [filterModel] must be of type [EmrFilterModel<List<TFilterValue>>].
  final bool multi;

  /// When the [EmrFilter] is in [EmrFilterDisplayMode.popover] mode, these
  /// constraints are applied to the scrollable list of selected items.
  final BoxConstraints multiPopoverSelectedItemsConstraints;

  @override
  State<EmrFilterAutoComplete<T, TFilterValue>> createState() =>
      _EmrFilterAutoCompleteState<T, TFilterValue>();
}

class _EmrFilterAutoCompleteState<T, TFilterValue>
    extends State<EmrFilterAutoComplete<T, TFilterValue>> {
  late final TextEditingController textEditingController;

  final textFieldFocusNode = FocusNode();

  final multiSelectItems = <T>[];

  var _loadingMultiSelectItems = false;

  final _suggestionsController = SuggestionsController<T>();

  @override
  void initState() {
    super.initState();

    textEditingController = TextEditingController(
      text: widget.multi ? '' : widget.filterModel.text,
    );

    if (widget.multi) {
      final values = widget.filterModel.value as List<TFilterValue>?;

      if (values != null) {
        unawaited(_loadValues(values));
      }
    }

    // Focus the autocomplete field when there's no existing value.
    if (widget.filterModel.text?.isEmpty ?? true) {
      textFieldFocusNode.requestFocus();
    }
  }

  Future<void> _loadValues(List<TFilterValue> values) async {
    setState(() {
      _loadingMultiSelectItems = true;
    });

    final futures = values.map(
      (value) =>
          widget.suggestionsCallback(value.toString(), widget.controller),
    );

    final results = await Future.wait(futures);

    final items = results.map(
      (result) {
        return result.firstWhereOrNull(
          (element) {
            // If the values are strings, we can do a case-insensitive search.
            // This is needed when filters are added by choosing a facet.
            if (values is List<String>) {
              const cie = CaseInsensitiveEquality();
              final value = widget.getValue(element) as String;

              for (final v in values as List<String>) {
                if (cie.equals(v, value)) {
                  return true;
                }
              }

              return false;
            }

            return values.contains(widget.getValue(element));
          },
        );
      },
    ).whereType<T>();

    multiSelectItems.addAll(items);

    setState(() {
      _loadingMultiSelectItems = false;
    });
  }

  @override
  void dispose() {
    textEditingController.dispose();
    textFieldFocusNode.dispose();
    _suggestionsController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Popover layout (usually desktop).
    if (widget.controller.calculatedDisplayMode ==
        EmrFilterDisplayMode.popover) {
      return Column(
        children: [
          _typeAheadField(),
          if (widget.multi)
            ConstrainedBox(
              constraints: widget.multiPopoverSelectedItemsConstraints,
              child: _selectedItems(),
            ),
          if (widget.multi) SafeArea(child: _applyButton()),
        ],
      );
    }

    // Modal layout (usually mobile).
    return Expanded(
      child: Column(
        children: [
          _typeAheadField(),
          if (widget.multi) Expanded(child: _selectedItems()),
          if (widget.multi) SafeArea(child: _applyButton()),
        ],
      ),
    );
  }

  Widget _typeAheadField() {
    return TypeAheadField<T>(
      key: widget.key,
      focusNode: textFieldFocusNode,
      controller: textEditingController,
      builder: (_, controller, focusNode) {
        return TextField(
          controller: controller,
          focusNode: focusNode,
          decoration: InputDecoration(
            suffixIcon: textEditingController.text.isNotEmpty
                ? IconButton(
                    icon: const Icon(Icons.clear),
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onPressed: () {
                      textEditingController.clear();
                      textFieldFocusNode.requestFocus();
                    },
                  )
                : null,
          ),
          onTap: _suggestionsController.refresh,
        );
      },
      suggestionsController: _suggestionsController,
      suggestionsCallback: (pattern) async {
        final results = await widget.suggestionsCallback(
          pattern,
          widget.controller,
        );

        // Filter out any multi-select items that have already been picked.
        return results
            .where(
              (element) => !multiSelectItems
                  .map((e) => widget.getValue(e))
                  .contains(widget.getValue(element)),
            )
            .toList();
      },
      itemBuilder: (context, suggestion) => ListTile(
        title: Text(widget.getTitle(suggestion)),
        subtitle: widget.getSubtitle != null
            ? Text(widget.getSubtitle!(suggestion))
            : null,
      ),
      onSelected: (suggestion) {
        if (widget.multi) {
          setState(() => multiSelectItems.add(suggestion));
        } else {
          widget.controller.addOrUpdateFilter(
            filter: widget.filterModel as EmrFilterModel<TFilterValue>,
            text: widget.getTitle(suggestion),
            value: widget.getValue(suggestion),
          );

          widget.close();
        }
      },
      emptyBuilder: (context) => Padding(
        padding: const EdgeInsets.all(8),
        child: Text(context.l10n.noResults),
      ),
      errorBuilder: (context, error) => Padding(
        padding: const EdgeInsets.all(8),
        child: Text(
          error.toString(),
          style: TextStyle(color: Theme.of(context).colorScheme.error),
        ),
      ),
    );
  }

  Widget _selectedItems() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: Insets.gutter),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            if (_loadingMultiSelectItems)
              const Center(child: CircularProgressIndicator()),
            for (final item in multiSelectItems)
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      widget.getSubtitle != null
                          ? '${widget.getTitle(item)} '
                              '(${widget.getSubtitle!(item)})'
                          : widget.getTitle(item),
                      maxLines: 2,
                      softWrap: true,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() => multiSelectItems.remove(item));

                      _suggestionsController.refresh();
                    },
                    icon: const Icon(Icons.remove_circle),
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }

  Widget _applyButton() {
    // return const ColoredBox(color: Colors.blue, child: Text('_applyButton'));

    return ElevatedButton(
      onPressed: multiSelectItems.isNotEmpty
          ? () {
              widget.controller.addOrUpdateFilter(
                filter:
                    widget.filterModel as EmrFilterModel<List<TFilterValue>>,
                text: multiSelectItems.length > 1
                    ? '${widget.getTitle(multiSelectItems.first)} '
                        '(+${multiSelectItems.length - 1})'
                    : widget.getTitle(multiSelectItems.first),
                value: multiSelectItems.map((e) => widget.getValue(e)).toList(),
              );

              widget.close();
            }
          : null,
      child: const Text('Apply'),
    );
  }
}
