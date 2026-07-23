import 'dart:async';

import 'package:emr_one_core/search/debounced_text_editing_controller.dart';
import 'package:emr_one_core/search/search.dart';
import 'package:flutter/material.dart';

typedef EmrOptionWidgetBuilder<T> = Widget Function(T option, {bool selected});

/// A flexible typeahead style search component which supports asynchronous
/// fetching of results in response to what is typed.
///
/// The core implementation uses [RawAutocomplete] from the Flutter SDK. For
/// more detailed documentation please refer to the documentation for that.
///
/// The widget supports the passing of several callbacks to aid in
/// customisation as well as a [suggestionProvider] which is used to
/// collate results from a source, for example an API. To implement your own
/// provider simply create a new class which extends [EmrUtilSuggestionProvider]
///
/// Use the [minQueryLengthForSuggestions] parameter to control how many
/// characters must be typed before a search is performed.
///
/// Use the [suggestionBoxHeight] parameter to control how much vertical
/// space is allocated for the suggestion list.
class EmrSearchSuggestField<T extends Object> extends StatefulWidget {
  EmrSearchSuggestField({
    required this.suggestionProvider,
    required this.onSelected,
    super.key,
    this.minQueryLengthForSuggestions = 3,
    this.suggestionBoxHeight = 150.0,
    this.fieldViewBuilder,
    this.optionsBuilder,
    this.optionsViewBuilder,
    this.optionsWidgetBuilder,
    this.displayForStringOption = defaultStringForOption,
    GlobalKey? textFieldKey,
    this.debounceDelay = DebouncedTextEditingController.kDefaultDebounceDelay,
    this.initialText,
  }) : assert(minQueryLengthForSuggestions >= 0) {
    this.textFieldKey = textFieldKey ?? GlobalKey();
  }

  final int minQueryLengthForSuggestions;
  final double suggestionBoxHeight;
  late final GlobalKey textFieldKey;
  final int debounceDelay;
  final String? initialText;

  final EmrUtilSuggestionProvider<T> suggestionProvider;
  final AutocompleteFieldViewBuilder? fieldViewBuilder;
  final AutocompleteOptionsBuilder<T>? optionsBuilder;
  final AutocompleteOptionsViewBuilder<T>? optionsViewBuilder;
  final EmrOptionWidgetBuilder<T>? optionsWidgetBuilder;
  final AutocompleteOnSelected<T> onSelected;
  final AutocompleteOptionToString<T> displayForStringOption;

  /// The default way to convert an option to a string in
  /// [displayStringForOption].
  ///
  /// Simply uses the `toString` method on the option.
  static String defaultStringForOption(dynamic option) {
    return option.toString();
  }

  @override
  State<EmrSearchSuggestField> createState() =>
      _EmrSearchSuggestFieldState<T>();
}

class _EmrSearchSuggestFieldState<T extends Object>
    extends State<EmrSearchSuggestField<T>> {
  late final TextEditingController _controller;
  late final FocusNode _focus;
  late AutocompleteOptionsBuilder<T> _optionsBuilder;
  late AutocompleteOptionsViewBuilder<T> _optionsViewBuilder;

  bool searching = false;
  String lastSearchValue = '';
  Iterable<T> suggestions = [];

  @override
  Widget build(BuildContext context) {
    return RawAutocomplete<T>(
      textEditingController: _controller,
      focusNode: _focus,
      fieldViewBuilder: widget.fieldViewBuilder ?? _fieldBuilder,
      optionsBuilder: _optionsBuilder,
      optionsViewBuilder: _optionsViewBuilder,
      onSelected: widget.onSelected,
      displayStringForOption: widget.displayForStringOption,
    );
  }

  /// Sets internal [searching] status to true/false which if [true] causes
  /// the progress spinner to be rendered
  void _setSearchingStatus([bool status = true]) {
    setState(() {
      searching = status;
    });
  }

  /// This is the default [fieldBuilder] implementation which is responsible
  /// for generating the input Widget that the user interacts with.
  Widget _fieldBuilder(
    BuildContext context,
    TextEditingController textEditingController,
    FocusNode focusNode,
    VoidCallback onFieldSubmitted,
  ) {
    return Row(
      children: [
        Expanded(
          child: TextFormField(
            key: widget.textFieldKey,
            controller: textEditingController,
            focusNode: focusNode,
            enableSuggestions: false,
            onFieldSubmitted: (value) => onFieldSubmitted(),
          ),
        ),
        _SmallSpinnerPlaceholder(searching: searching),
      ],
    );
  }

  /// This is the default [optionsBuilder] implemetation which is designed to
  /// use the widget's [suggestionProvider] to asynchronously get a set of
  /// results which match the query.
  ///
  /// It also obeys the [minQueryLengthForSuggestions] value to prevent
  /// showing results until the requisite number of chars are entered.
  Future<Iterable<T>> _defaultOptionsBuilder(
    TextEditingValue textEditingValue,
  ) async {
    _setSearchingStatus();

    if (textEditingValue.text.length < widget.minQueryLengthForSuggestions) {
      _setSearchingStatus(false);
      return [];
    }

    // Only perform a search if the search text changes.
    if (textEditingValue.text != lastSearchValue) {
      lastSearchValue = textEditingValue.text;

      suggestions =
          await widget.suggestionProvider.getSuggestions(textEditingValue.text);
    }

    _setSearchingStatus(false);

    return suggestions;
  }

  /// This is the default [optionsViewBuilder] implemetation which returns
  /// a simple [EmrUtilOptionsList] built from the generated options.
  Widget _defaultOptionsViewBuilder(
    BuildContext context,
    AutocompleteOnSelected<T> onSelected,
    Iterable<T> options,
  ) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final width = constraints.maxWidth;

        return EmrUtilOptionsList<T>(
          onSelected: onSelected,
          options: options,
          controller: _controller,
          suggestionBoxHeight: widget.suggestionBoxHeight,
          suggestionBoxWidth: width,
          optionWidgetBuilder: widget.optionsWidgetBuilder,
        );
      },
    );
  }

  @override
  void initState() {
    _controller = DebouncedTextEditingController(
      debounceDelay: widget.debounceDelay,
      text: widget.initialText,
    );
    _focus = FocusNode();
    _optionsBuilder = widget.optionsBuilder ?? _defaultOptionsBuilder;
    _optionsViewBuilder =
        widget.optionsViewBuilder ?? _defaultOptionsViewBuilder;
    super.initState();
  }

  @override
  void dispose() {
    _focus.dispose();
    _controller.dispose();
    super.dispose();
  }
}

/// This is a small animating spinner control which appears at the end of the
/// input field to show the user that a lookup is in progress.
class _SmallSpinnerPlaceholder extends StatelessWidget {
  const _SmallSpinnerPlaceholder({
    required this.searching,
  });

  final bool searching;
  static const double kSpinnerSize = 12;
  static const double kSpinnerStrokeWidth = 2;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: kSpinnerSize,
      height: kSpinnerSize,
      child: searching
          ? const CircularProgressIndicator(
              strokeWidth: kSpinnerStrokeWidth,
            )
          : Container(),
    );
  }
}

class EmrUtilOptionsList<T extends Object> extends StatelessWidget {
  const EmrUtilOptionsList({
    required this.onSelected,
    required this.options,
    required this.controller,
    required this.suggestionBoxHeight,
    required this.suggestionBoxWidth,
    super.key,
    this.optionWidgetBuilder,
  });
  final Iterable<T> options;
  final AutocompleteOnSelected<T> onSelected;
  final TextEditingController controller;
  final double suggestionBoxHeight;
  final double suggestionBoxWidth;
  final EmrOptionWidgetBuilder<T>? optionWidgetBuilder;

  static const double kTileSpaceWidth = 2;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Material(
        child: SizedBox(
          width: suggestionBoxWidth,
          height: suggestionBoxHeight,
          child: ListView.builder(
            padding: EdgeInsets.zero,
            itemCount: options.length,
            itemBuilder: (context, index) {
              final option = options.elementAt(index);
              final highlightedIndex =
                  AutocompleteHighlightedOption.of(context);
              return GestureDetector(
                onTap: () => onSelected(option),
                child: optionWidgetBuilder != null
                    ? optionWidgetBuilder!(
                        option,
                        selected: highlightedIndex == index,
                      )
                    : convertOption(
                        option,
                        selected: highlightedIndex == index,
                      ),
              );
            },
          ),
        ),
      ),
    );
  }

  Widget convertOption(T option, {bool selected = false}) {
    return ListTile(
      horizontalTitleGap: kTileSpaceWidth,
      title: Text(option.toString()),
      selected: selected,
    );
  }
}
