import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/widgets/form_styles.dart';
import 'package:emr_one_inform/common/date_utility.dart';
import 'package:emr_one_inform/constants/constants_export.dart';
import 'package:emr_one_inform/models/form_models.dart';
import 'package:emr_one_inform/models/selected_dates.dart';
import 'package:emr_one_inform/widgets/widgets_export.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:responsive_grid/responsive_grid.dart';

class InformSearchWidget extends StatefulWidget {
  const InformSearchWidget({
    required this.searchOptions,
    required this.initialState,
    this.onStateChanged,
    this.clearSearchEnabled = false,
    this.onSearchCriteriaCleared,
    super.key,
  });

  final List<SearchOption<dynamic>> searchOptions;
  final KeyValuePair<String, dynamic>? initialState;
  final bool clearSearchEnabled;
  final void Function(KeyValuePair<String, dynamic>)? onStateChanged;
  final void Function()? onSearchCriteriaCleared;

  @override
  State<InformSearchWidget> createState() => _InformSearchWidgetState();
}

class _InformSearchWidgetState extends State<InformSearchWidget> {
  SearchOption<dynamic>? _selectedOption;

  @override
  void initState() {
    super.initState();
    if (widget.initialState != null) {
      _selectedOption = widget.searchOptions
          .firstWhere((e) => e.propertyName == widget.initialState!.key);
      _selectedOption!.value = widget.initialState!.value;
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
            Text(
              context.l10n.search,
              style: FormAppTextStyles.listviewTitleTextColor,
            ),
            const SizedBox(height: 5),
            ResponsiveGridRow(
              children: [
                ResponsiveGridCol(
                  child: Wrap(
                    spacing: 5,
                    runSpacing: 5,
                    children: [
                      ...widget.searchOptions.map((e) {
                        return InputChip(
                          label: Text(
                            '''${e.displayText}${_selectedOption == e ? ': ${e.asString(context)}' : ''}''',
                          ),
                          selectedColor: FormAppColors.success,
                          selected: _selectedOption == e,
                          pressElevation: 0,
                          onPressed: () async {
                            await _edit(e);
                          },
                        );
                      }),
                      if (widget.clearSearchEnabled && _selectedOption != null)
                        ElevatedButton.icon(
                          onPressed: () {
                            setState(() {
                              _selectedOption = null;
                            });
                            widget.onSearchCriteriaCleared?.call();
                          },
                          icon: const Icon(Icons.clear),
                          label: Text(context.l10n.clear),
                        ),
                    ],
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
    if (widget.onStateChanged != null && _selectedOption != null) {
      widget.onStateChanged!.call(
        KeyValuePair(
          key: _selectedOption!.propertyName,
          value: _selectedOption!.value,
        ),
      );
    }
  }

  Future<void> _edit(SearchOption<dynamic> selectedOption) async {
    final option = await selectedOption._edit(context);
    if (option != null &&
        option.value != null &&
        option.value.toString().isNotEmpty) {
      _selectedOption = option;

      _invokeStateChangeCallback();
    }
  }
}

abstract class SearchOption<T> {
  SearchOption({
    required this.displayText,
    required this.propertyName,
    this.value,
  });

  final String displayText;
  final String propertyName;
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
    super.value,
  });

  final _textController = TextEditingController();

  @override
  Future<TextSearchOption?> _edit(BuildContext context) async {
    _textController.text = asString(context) ?? '';
    return showDialog<TextSearchOption>(
      context: context,
      builder: (context) => _defaultEditDialog(
        context: context,
        child: InformTextBox(
          controller: _textController,
          labelText: displayText,
          hintText: displayText,
          onChanged: (text) {
            value = text;
          },
        ),
      ),
      barrierDismissible: false,
    );
  }
}

class DateSearchOption extends SearchOption<DateTime> {
  DateSearchOption({
    required super.displayText,
    required super.propertyName,
    super.value,
  });

  @override
  String? asString(BuildContext context) {
    if (value == null) return null;
    final activeLocale = Localizations.localeOf(context);
    return DateFormat.yMd(activeLocale.toString()).format(value!.toLocal());
  }

  @override
  Future<DateSearchOption?> _edit(BuildContext context) async {
    final result = await showDialog<SelectedDates>(
      context: context,
      builder: (context) => DatePickerWidget(
        selectedDate: SelectedDates.date(
          date: value ?? DateTime.now().dateOnly,
        ),
        datePickerType: DatePickerType.date,
        minDate: DateTime.now().oneYearBehind(),
        maxDate: DateTime.now().oneYearAhead(),
      ),
      barrierDismissible: false,
    );
    if (result != null) {
      value = result.date;
      return this;
    }
    return null;
  }
}

class DateRangeSearchOption extends SearchOption<SelectedDates> {
  DateRangeSearchOption({
    required super.displayText,
    required super.propertyName,
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
        minDate: DateTime.now().oneYearBehind(),
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

class DropdownSearchOption extends SearchOption<String> {
  DropdownSearchOption({
    required super.displayText,
    required super.propertyName,
    required this.datasource,
    super.value,
  });

  final List<String> datasource;

  @override
  Future<DropdownSearchOption?> _edit(BuildContext context) async {
    return showDialog<DropdownSearchOption>(
      context: context,
      builder: (context) => _defaultEditDialog(
        context: context,
        child: DropdownButtonHideUnderline(
          child: DropdownButtonFormField<String>(
            decoration: FormAppDecorations.dropdownDecoration
                .copyWith(labelText: displayText, hintText: displayText),
            icon: FormAppIcons.dropdownList,
            iconSize: 30,
            isExpanded: true,
            items: datasource.map((e) {
              return DropdownMenuItem<String>(
                value: e,
                child: Text(e),
              );
            }).toList(),
            initialValue: value,
            onChanged: (String? value) {
              this.value = value;
            },
          ),
        ),
      ),
      barrierDismissible: false,
    );
  }
}

class TypeaheadSearchOption extends TypeaheadSearchOptionGeneric<String> {
  TypeaheadSearchOption({
    required super.displayText,
    required super.propertyName,
    required super.datasource,
    required super.sourceCallback,
  }) : super(
          labelBuilder: (e) => e,
          widgetBuilder: (e) => ListTile(title: Text(e)),
        );
}

class TypeaheadSearchOptionGeneric<T> extends SearchOption<T> {
  TypeaheadSearchOptionGeneric({
    required super.displayText,
    required super.propertyName,
    required this.datasource,
    required this.sourceCallback,
    required this.labelBuilder,
    required this.widgetBuilder,
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

class ScanSearchOption extends TextSearchOption {
  ScanSearchOption({
    required super.displayText,
    required super.propertyName,
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
