import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/helpers/selector_button.dart';
import 'package:flutter/material.dart';

/// Displays a picker intended for use in a dialog such as [Flyout]
///
/// The caller must provide the  [titleText] which will be shown at the top
/// of the picker. The caller must provide an [itemsFuture] which is a future
/// that resolves to a [List<T>], providing a set of items to be shown to
/// the user.
///
/// The caller must provide a callback to get the text to show for each item
/// via the [getItemTitleText] parameter.
///
/// The caller can optionally provide a callback to show 'sub text' for each
/// item by providing a callback via the [getItemSubTitleText] parameter.
///
/// The caller can enable filtering, which is off by default with [allowFilter].
/// If filtering is enabled, the caller must provide [filterCallback] which will
/// be called as the user types into the filter in order to return a complete
/// or subset of items.
///
/// Provide a value for [filterText] to override the default helper text shown
/// in the filter text box.
///
/// Provide a value for [compareCallback] to optionally support sorting of the
/// items.
///
class EOMultiPickerDialog<T> extends StatefulWidget {
  const EOMultiPickerDialog({
    required this.titleText,
    required this.itemsFuture,
    required this.getItemTitleText,
    super.key,
    this.getItemSubTitleText,
    this.allowFilter = false,
    this.filterCallback,
    this.filterText,
    this.compareCallback,
  }) : assert(
          filterCallback != null || allowFilter == false,
          'If allowFilter is set to true, filterCallback must be provided',
        );

  final Future<List<T>> itemsFuture;
  final String titleText;
  final String? filterText;
  final bool allowFilter;
  final String Function(T item) getItemTitleText;
  final String Function(T item)? getItemSubTitleText;
  final bool Function(T item, String filterTextLower)? filterCallback;
  final int Function(T a, T b)? compareCallback;

  @override
  State<EOMultiPickerDialog<T>> createState() => _EOMultiPickerDialogState<T>();
}

class _EOMultiPickerDialogState<T> extends State<EOMultiPickerDialog<T>> {
  late TextEditingController filterController;
  final ValueNotifier<String> _filterTextNotifier = ValueNotifier<String>('');
  String? filterText;

  @override
  void initState() {
    super.initState();
    filterController = TextEditingController();
    filterController.addListener(_filterChanged);
  }

  @override
  void dispose() {
    filterController.removeListener(_filterChanged);
    filterController.dispose();
    super.dispose();
  }

  void _filterChanged() {
    filterText = filterController.text;
    _filterTextNotifier.value = filterController.text;
  }

  final selectedItems = List<T>.empty(growable: true);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<T>>(
      future: widget.itemsFuture,
      builder: (context, snapshot) {
        if (snapshot.hasData == false) {
          return const CircularProgressIndicator.adaptive();
        }
        return Material(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    widget.titleText,
                    style: EmrOneConstants.kSmallHeadingTextStyle,
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () => Navigator.of(context).pop(),
                    icon: const Icon(Icons.close),
                  ),
                ],
              ),
              if (widget.allowFilter)
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: Insets.gutter),
                  child: TextFormField(
                    controller: filterController,
                    decoration: InputDecoration(
                      labelText: widget.filterText ?? 'Type to filter...',
                    ),
                  ),
                ),
              ValueListenableBuilder<String>(
                valueListenable: _filterTextNotifier,
                builder: (BuildContext context, String value, Widget? child) {
                  final filterTextLower = filterText?.toLowerCase();
                  final filteredValues =
                      filterTextLower == null || !widget.allowFilter
                          ? snapshot.data!
                          : snapshot.data!
                              .where(
                                (element) => widget.filterCallback!(
                                  element,
                                  filterTextLower,
                                ),
                              )
                              .toList();

                  if (widget.compareCallback != null) {
                    filteredValues.sort(widget.compareCallback);
                  }

                  //Clear out selected items hidden by the new query
                  selectedItems.removeWhere(
                    (element) => !filteredValues.contains(element),
                  );

                  return Expanded(
                    child: ListView.builder(
                      itemCount: filteredValues.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: Insets.gutter / 2,
                          ),
                          child: SelectorButtonHelper.create(
                            context: context,
                            selected:
                                selectedItems.contains(filteredValues[index]),
                            onPressed: () {
                              setState(() {
                                if (selectedItems
                                    .contains(filteredValues[index])) {
                                  selectedItems.remove(filteredValues[index]);
                                } else {
                                  selectedItems.add(filteredValues[index]);
                                }
                              });
                            },
                            child: SizedBox(
                              height: 64,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                      vertical: Insets.gutter / 2,
                                    ),
                                    child: Row(
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              widget.getItemTitleText(
                                                filteredValues[index],
                                              ),
                                              textAlign: TextAlign.start,
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .tertiary,
                                              ),
                                            ),
                                            if (widget.getItemSubTitleText !=
                                                null)
                                              Text(
                                                widget.getItemSubTitleText!(
                                                  filteredValues[index],
                                                ),
                                                textAlign: TextAlign.start,
                                              ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  );
                },
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: Insets.gutter / 2,
                ),
                child: ElevatedButton(
                  onPressed: selectedItems.isNotEmpty
                      ? () => Navigator.of(context).pop(selectedItems)
                      : null,
                  child: Text(context.l10n.ok.toUpperCase()),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
