import 'package:collection/collection.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/widgets/form_styles.dart';
import 'package:emr_one_inform/common/date_utility.dart';
import 'package:emr_one_inform/models/selected_dates.dart';
import 'package:emr_one_inform/widgets/date_picker_dialog.dart';
import 'package:emr_one_inform/widgets/inform_assign_multiple.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:responsive_grid/responsive_grid.dart';

class SearchWidget extends StatefulWidget {
  const SearchWidget({
    required this.searchOptions,
    required this.initialState,
    this.onStateChanged,
    this.onSearchCriteriaCleared,
    this.canClearSearch = false,
    super.key,
  });

  final List<SearchOption<dynamic>> searchOptions;
  final Map<String, dynamic>? initialState;
  final void Function(Map<String, dynamic>)? onStateChanged;
  final void Function()? onSearchCriteriaCleared;
  final bool canClearSearch;

  @override
  State<SearchWidget> createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  final ValueNotifier<List<SearchOption<dynamic>>> _selectedOptions =
      ValueNotifier([]);

  @override
  void initState() {
    super.initState();
    if (widget.initialState != null) {
      _selectedOptions.value = widget.initialState!.keys.map(
        (e) {
          final option =
              widget.searchOptions.firstWhere((x) => x.propertyName == e);
          option.value = widget.initialState![e];
          return option;
        },
      ).toList();
    }

    _selectedOptions.value = [
      ..._selectedOptions.value,
      ...widget.searchOptions.where(
        (e) =>
            e.isPinned &&
            !_selectedOptions.value
                .any((x) => e.propertyName == x.propertyName),
      ),
    ];

    toggleDefaultSearchOption();
  }

  void toggleDefaultSearchOption() {
    if (!widget.canClearSearch) {
      if (_selectedOptions.value.length == 1) {
        _selectedOptions.value.first.canBeDeleted = false;
      }

      if (_selectedOptions.value.length > 1) {
        _selectedOptions.value.first.canBeDeleted = true;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 20,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  context.l10n.search,
                  style: EmrOneConstants.kMediumHeadingTextStyle,
                ),
                const SizedBox(width: 30),
                PopupMenuButton<SearchOption<dynamic>>(
                  child: const Icon(Icons.add),
                  itemBuilder: (context) {
                    return widget.searchOptions
                        .where(
                          (e) => !_selectedOptions.value
                              .any((x) => e.propertyName == x.propertyName),
                        )
                        .map(
                          (e) => PopupMenuItem<SearchOption<dynamic>>(
                            value: e,
                            child: Text(e.displayText),
                          ),
                        )
                        .toList();
                  },
                  onSelected: (value) async {
                    await _edit(value);
                  },
                ),
              ],
            ),
            const SizedBox(height: 5),
            ResponsiveGridRow(
              children: [
                ResponsiveGridCol(
                  child: ValueListenableBuilder(
                    valueListenable: _selectedOptions,
                    builder: (context, value, child) {
                      return Wrap(
                        spacing: 5,
                        runSpacing: 5,
                        children: [
                          ...value.map((e) {
                            return InputChip(
                              label: Text(
                                '${e.displayText}: ${e.asString(context)}',
                              ),
                              pressElevation: 0,
                              onPressed: () async {
                                await _edit(e);
                              },
                              deleteIcon: !e.canBeDeleted
                                  ? null
                                  : Ink(
                                      decoration: ShapeDecoration(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .tertiary,
                                        shape: const RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(4),
                                          ),
                                        ),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(2),
                                        child: FaIcon(
                                          FontAwesomeIcons.xmark,
                                          color: Theme.of(context)
                                              .colorScheme
                                              .onTertiary,
                                          size: 14,
                                        ),
                                      ),
                                    ),
                              onDeleted: () {
                                if (e.canBeDeleted) {
                                  if (e.isPinned) {
                                    e.value = null;
                                    _selectedOptions.value = [
                                      ..._selectedOptions.value,
                                    ];
                                    toggleDefaultSearchOption();
                                  } else {
                                    _selectedOptions.value = _selectedOptions
                                        .value
                                        .where((x) => x != e)
                                        .toList();
                                  }
                                  _invokeStateChangeCallback();
                                }
                              },
                            );
                          }),
                        ],
                      );
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _invokeStateChangeCallback() {
    if (widget.onStateChanged != null) {
      widget.onStateChanged!.call(
        {for (final x in _selectedOptions.value) x.propertyName: x.value},
      );
    }
  }

  Future<void> _edit(SearchOption<dynamic> selectedOption) async {
    final option = await selectedOption._edit(context);
    if (option != null) {
      final existingOption = _selectedOptions.value
          .firstWhereOrNull((e) => e.propertyName == option.propertyName);
      if (existingOption == null) {
        if (!mounted) return;
        if ((option.asString(context)?.isNotEmpty ?? false) ||
            option.isPinned) {
          _selectedOptions.value = [..._selectedOptions.value, option];
          toggleDefaultSearchOption();
        }
      } else {
        if (!mounted) return;
        if (option.asString(context)?.isNotEmpty ?? false) {
          existingOption.value = option.value;
          _selectedOptions.value = [..._selectedOptions.value];
        } else {
          if (!option.isPinned) {
            _selectedOptions.value = _selectedOptions.value
                .where((e) => e != existingOption)
                .toList();
          }
        }
      }
      _invokeStateChangeCallback();
    }
  }
}

abstract class SearchOption<T> {
  SearchOption({
    required this.displayText,
    required this.propertyName,
    this.isPinned = false,
    this.canBeDeleted = true,
    this.value,
  });

  final String displayText;
  final String propertyName;
  final bool isPinned;
  bool canBeDeleted;
  T? value;

  String? asString(BuildContext context) {
    return value?.toString();
  }

  Future<SearchOption<T>?> _edit(BuildContext context);

  Widget _defaultEditDialog({
    required BuildContext context,
    required Widget child,
  }) =>
      AlertDialog(
        title: Text(displayText),
        content: child,
        actions: [
          TextButton(
            onPressed: () => context.pop(),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () => context.pop(this),
            child: const Text('Ok'),
          ),
        ],
      );
}

class TextSearchOption extends SearchOption<String> {
  TextSearchOption({
    required super.displayText,
    required super.propertyName,
    super.isPinned = false,
    super.value,
  });

  final textController = TextEditingController();

  @override
  Future<TextSearchOption?> _edit(BuildContext context) async {
    textController.text = asString(context) ?? '';
    return showDialog<TextSearchOption>(
      context: context,
      builder: (context) => _defaultEditDialog(
        context: context,
        child: TextFormField(
          controller: textController,
          decoration: InputDecoration(
            labelText: displayText,
            hintText: displayText,
            isDense: true,
            contentPadding: const EdgeInsets.all(12),
          ),
          onChanged: (text) {
            value = text;
          },
        ),
      ),
      barrierDismissible: false,
    );
  }
}

class DropdownSearchOption extends DropdownSearchOptionGeneric<String> {
  DropdownSearchOption({
    required super.displayText,
    required super.propertyName,
    required super.datasource,
    super.isPinned = false,
  }) : super(text: (e) => e, child: Text.new);
}

class DropdownSearchOptionGeneric<T> extends SearchOption<T> {
  DropdownSearchOptionGeneric({
    required super.displayText,
    required super.propertyName,
    required this.datasource,
    required this.text,
    required this.child,
    super.isPinned = false,
    super.value,
  });

  final List<T> datasource;
  final String Function(T) text;
  final Widget Function(T) child;

  @override
  Future<DropdownSearchOptionGeneric<T>?> _edit(BuildContext context) async {
    return showDialog<DropdownSearchOptionGeneric<T>>(
      context: context,
      builder: (context) => _defaultEditDialog(
        context: context,
        child: DropdownButtonHideUnderline(
          child: DropdownButtonFormField<T>(
            decoration:
                InputDecoration(labelText: displayText, hintText: displayText),
            icon: const Icon(Icons.arrow_drop_down),
            iconSize: 30,
            isExpanded: true,
            items: datasource.map((e) {
              return DropdownMenuItem<T>(
                value: e,
                child: Text(text(e)),
              );
            }).toList(),
            initialValue: value,
            onChanged: (T? value) {
              this.value = value;
            },
          ),
        ),
      ),
      barrierDismissible: false,
    );
  }

  @override
  String? asString(BuildContext context) {
    if (value == null) return null;
    return text(value as T);
  }
}

class TypeaheadSearchOption extends SearchOption<String> {
  TypeaheadSearchOption({
    required super.displayText,
    required super.propertyName,
    required this.datasource,
    required this.sourceCallback,
    super.isPinned = false,
    super.value,
  });

  final List<String>? datasource;
  final Future<List<String>> Function(String)? sourceCallback;
  final _textController = TextEditingController();

  @override
  Future<TypeaheadSearchOption?> _edit(BuildContext context) async {
    _textController.text = asString(context) ?? '';
    return showDialog<TypeaheadSearchOption>(
      context: context,
      builder: (context) => _defaultEditDialog(
        context: context,
        child: TypeAheadFormField<String>(
          suggestionsCallback: (searchText) async {
            if (datasource != null) {
              return datasource!
                  .where(
                    (e) => e.toLowerCase().contains(searchText.toLowerCase()),
                  )
                  .toList();
            }

            if (sourceCallback != null) return sourceCallback!.call(searchText);

            return const Iterable<String>.empty();
          },
          itemBuilder: (context, String value) {
            return ListTile(title: Text(value));
          },
          onSuggestionSelected: (String value) {
            _textController.text = value;
            this.value = value;
          },
          noItemsFoundBuilder: (context) => SizedBox(
            height: 50,
            child: Center(child: Text(context.l10n.noRecordsMessage)),
          ),
          textFieldConfiguration: TextFieldConfiguration(
            controller: _textController,
            decoration: InputDecoration(
              labelText: displayText,
              hintText: displayText,
              suffixIcon: _textController.text.isEmpty
                  ? null
                  : IconButton(
                      onPressed: () {
                        _textController.clear();
                        value = null;
                      },
                      icon: const Icon(Icons.clear),
                    ),
            ),
          ),
        ),
      ),
      barrierDismissible: false,
    );
  }
}

class DateRangeSearchOption extends SearchOption<SelectedDates> {
  DateRangeSearchOption({
    required super.displayText,
    required super.propertyName,
    super.isPinned = false,
    super.value,
  });

  @override
  String? asString(BuildContext context) {
    if (value == null) return null;
    final activeLocale = Localizations.localeOf(context);
    if (value!.type == SelectedDateType.date && value!.date != null) {
      return DateFormat.yMd(activeLocale.toString())
          .format(value!.date!.toLocal());
    }
    if (value!.type == SelectedDateType.dateRange && value!.dateRange != null) {
      return '''
${DateFormat.yMd(activeLocale.toString()).format(value!.dateRange!.start.toLocal())} - ${DateFormat.yMd(activeLocale.toString()).format(value!.dateRange!.end.toLocal())}''';
    }
    return null;
  }

  @override
  Future<DateRangeSearchOption?> _edit(BuildContext context) async {
    final result = await showDialog<SelectedDates>(
      context: context,
      builder: (context) => DatePickerWidget(
        selectedDate: value ??
            SelectedDates.date(
              date: DateTime.now().dateOnly,
            ),
        datePickerType: DatePickerType.range,
        minDate: DateTime(2020),
        maxDate: DateTime.now().oneYearAhead(),
      ),
      barrierDismissible: false,
    );

    if (result != null) {
      value = result;
      return this;
    }

    return null;
  }
}

class ScanSearchOption extends TextSearchOption {
  ScanSearchOption({
    required super.displayText,
    required super.propertyName,
    super.isPinned = false,
    super.value,
  });

  @override
  Future<ScanSearchOption?> _edit(BuildContext context) async {
    final scannedCode =
        await ScanHelper.startInlineCodeScan(context, title: 'Scan');
    if (scannedCode?.isNotEmpty ?? false) {
      value = scannedCode;
      return this;
    }
    return null;
  }
}

class TypeaheadSearchOptionGeneric<T> extends SearchOption<T> {
  TypeaheadSearchOptionGeneric({
    required super.displayText,
    required super.propertyName,
    required this.datasource,
    required this.sourceCallback,
    required this.labelBuilder,
    required this.widgetBuilder,
    super.isPinned = false,
    super.value,
  });

  final List<T>? datasource;
  final Future<List<T>> Function(String)? sourceCallback;
  final _textController = TextEditingController();
  final String Function(T obj) labelBuilder;
  final Widget Function(T obj) widgetBuilder;

  @override
  Future<TypeaheadSearchOptionGeneric<T>?> _edit(BuildContext context) async {
    _textController.text = asString(context) ?? '';
    return showDialog<TypeaheadSearchOptionGeneric<T>>(
      context: context,
      builder: (context) => _defaultEditDialog(
        context: context,
        child: TypeAheadFormField<T>(
          suggestionsCallback: (searchText) async {
            if (datasource != null) {
              return datasource!
                  .where(
                    (e) => labelBuilder
                        .call(e)
                        .toLowerCase()
                        .contains(searchText.toLowerCase()),
                  )
                  .toList();
            }

            if (sourceCallback != null) return sourceCallback!.call(searchText);

            return [];
          },
          itemBuilder: (context, T value) {
            return widgetBuilder.call(value);
          },
          onSuggestionSelected: (T value) {
            _textController.text = labelBuilder.call(value);
            this.value = value;
          },
          noItemsFoundBuilder: (context) => SizedBox(
            height: 50,
            child: Center(child: Text(context.l10n.noRecordsMessage)),
          ),
          textFieldConfiguration: TextFieldConfiguration(
            controller: _textController,
            decoration: FormStyles.textFieldDecoration(context).copyWith(
              labelText: displayText,
              hintText: displayText,
              suffixIcon: _textController.text.isEmpty
                  ? null
                  : IconButton(
                      onPressed: () {
                        _textController.clear();
                        value = null;
                      },
                      icon: const Icon(Icons.clear),
                    ),
            ),
          ),
        ),
      ),
      barrierDismissible: false,
    );
  }

  @override
  String? asString(BuildContext context) {
    return value == null ? null : labelBuilder.call(value as T);
  }
}

class TypeaheadMultiSearchOption extends SearchOption<List<String>> {
  TypeaheadMultiSearchOption({
    required super.displayText,
    required super.propertyName,
    required this.datasource,
    required this.sourceCallback,
    super.isPinned = false,
    super.value,
  });

  final List<String> datasource;
  final Future<List<String>> Function(String)? sourceCallback;
  final _textController = TextEditingController();

  @override
  String? asString(BuildContext context) {
    return value?.toString();
  }

  @override
  Future<TypeaheadMultiSearchOption?> _edit(BuildContext context) async {
    _textController.text = asString(context) ?? '';
    return showDialog<TypeaheadMultiSearchOption>(
      context: context,
      builder: (context) => _defaultEditDialog(
        context: context,
        child: SizedBox(
          height: 200,
          width: 600,
          child: SingleChildScrollView(
            child: AssignMultipleEntity<String>(
              key: UniqueKey(),
              suggestionsCallback: (searchText) async {
                final list = datasource
                    .where(
                      (e) => e.toLowerCase().contains(searchText.toLowerCase()),
                    )
                    .toList();

                if (list.isNotEmpty) {
                  return list;
                }

                if (sourceCallback != null) {
                  return sourceCallback!.call(searchText);
                }

                return const Iterable<String>.empty();
              },
              itemBuilder: (context, String value) {
                return ListTile(title: Text(value));
              },
              onSuggestionSelected: addJobId,
              valueSelector: (e) => e,
              hint: 'Select Job Ids',
              label: 'Select Job Ids',
              validatorCallback: (value) => (value == null || value.isEmpty)
                  ? 'Atleast 1 item is required'
                  : null,
              onItemDeleted: removejobId,
              defaultSelectedItems: value,
            ),
          ),
        ),
      ),
      barrierDismissible: false,
    );
  }

  Future<void> addJobId(String jobId) async {
    if (!datasource.any((e) => e == jobId)) {
      datasource.add(jobId);
    }
    value ??= [];
    if (!value!.any((e) => e == jobId)) {
      value!.add(jobId);
    }
  }

  Future<void> removejobId(String jobId) async {
    datasource.removeWhere((e) => e == jobId);
    value!.removeWhere((e) => e == jobId);
  }
}
