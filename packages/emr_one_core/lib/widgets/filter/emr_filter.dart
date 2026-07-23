import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart' as ft;
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';

export 'emr_filter_auto_complete.dart';
export 'emr_filter_controller.dart';
export 'emr_filter_dropdown.dart';
export 'emr_filter_modal_picker.dart';
export 'emr_filter_modal_wrapper.dart';
export 'emr_filter_model.dart';
export 'emr_filter_popover_wrapper.dart';
export 'emr_popover.dart';

/// Changes the way the picker for an `EmrFilter` is displayed.
enum EmrFilterDisplayMode {
  /// On web (kIsWeb == true) the picker is shown as an `EmrPopover`.
  /// On mobile (everything non-web) the picker shows in a fullscreen modal.
  auto,

  /// Force the picker to show as a popover no matter the platform.
  popover,

  /// Force the picker to show as a fullscreen modal no matter the platform.
  modal,
}

class EmrFilter extends StatefulWidget {
  /// A Widget which will allow a user to choose filter options, which can be
  /// used, for example, to pass to a search request to filter the results for a
  /// grid.
  ///
  /// The Widget itself only requires a controller, which will be your own class
  /// that extends [EmrFilterController]. It will normally have a leading Widget
  /// to label the buttons.
  ///
  /// ```dart
  /// EmrFilter(
  ///   leading: const Text("Filters:"),
  ///   controller: _filterController,
  /// )
  /// ```
  ///
  /// The controller itself can be initialised with filters.
  /// Using [GplFilterController] as an example:
  ///
  /// ```dart
  /// _filterController = GplFilterController(
  ///   filters: [
  ///     EmrFilterModel<String>(
  ///       key: GplFilterController.kPartyAccountNoKey,
  ///       name: GplFilterController.kPartyAccountNoName,
  ///       enableDelete: false,
  ///     ),
  ///     EmrFilterModel<int>(
  ///       key: GplFilterController.kPublicationIdKey,
  ///       name: GplFilterController.kPublicationIdName,
  ///       enableDelete: false,
  ///     ),
  ///     EmrFilterModel<String>(
  ///       key: GplFilterController.kGradeCodeKey,
  ///       name: GplFilterController.kGradeCodeName,
  ///       enableDelete: false,
  ///     ),
  ///   ],
  /// );
  /// ```
  ///
  /// The controller is responsible for building the UI for the popovers that
  /// appear when filter buttons are clicked.
  ///
  /// Popovers should call `_filterController.updateFilter` to change one, and
  /// then call `Navigator.of(context).pop();` to close the popover.
  ///
  /// It is then possible to try to get a filter to use it:
  ///
  /// ```dart
  /// final partyAccountNo = _filterController
  ///     .tryGetFilter<String>(key: GplFilterController.kPartyAccountNoKey)
  ///     ?.value;
  /// ```
  const EmrFilter({
    required this.controller,
    super.key,
    this.leading,
    this.trailing,
    this.showAddFilter = true,
    this.filterChipBuilder = _defaultFilterChipBuilder,
    this.addFilterChipBuilder = _defaultAddFilterChipBuilder,
    this.validator,
    this.padding = EdgeInsets.zero,
    this.innerPadding = EdgeInsets.zero,
  });

  static const double defaultHeight = 38;

  final EdgeInsets padding;

  final EdgeInsets innerPadding;

  final Widget? leading;

  final Widget? trailing;

  final EmrFilterController controller;

  final bool showAddFilter;

  final Widget Function(
    BuildContext context,
    EmrFilterController controller,
    int i,
  )
  filterChipBuilder;

  final Widget Function(
    BuildContext context,
    EmrFilter filter,
    EmrFilterController controller,
  )
  addFilterChipBuilder;

  final String? Function()? validator;

  @override
  State<EmrFilter> createState() => _EmrFilterState();

  static Widget _defaultFilterChipBuilder(
    BuildContext context,
    EmrFilterController controller,
    int i,
  ) {
    final filterModel = controller.filters.value[i];
    final textColour = filterModel.value == null ? Colors.white : null;
    final backgroundColor = filterModel.value == null ? Colors.red : null;

    final wrapper =
        controller.calculatedDisplayMode == EmrFilterDisplayMode.popover
        ? EmrFilterPopoverWrapper(
            controller: controller,
            initialFilterModel: filterModel,
          )
        : EmrFilterModalWrapper(
            controller: controller,
            initialFilterModel: filterModel,
          );

    final inputChipLabelWidget = filterModel.textBuilder?.call(
      context,
      filterModel,
    );

    return InputChip(
      key: filterModel.globalKey,
      label:
          inputChipLabelWidget ??
          Text(
            filterModel.text ?? filterModel.name,
            style: TextStyle(color: textColour),
          ),
      backgroundColor: backgroundColor,
      pressElevation: 0,
      onPressed: () => _showPopoverOrModal(
        context,
        controller,
        (context) => wrapper,
        filterModel.globalKey,
      ),
      deleteIcon: Ink(
        decoration: ShapeDecoration(
          color: Theme.of(context).colorScheme.tertiary,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(4)),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(2),
          child: SizedBox(
            width: 14,
            height: 14,
            child: Center(
              child: FaIcon(
                FontAwesomeIcons.xmark,
                color: Theme.of(context).colorScheme.onTertiary,
                size: 14,
              ),
            ),
          ),
        ),
      ),
      onDeleted: filterModel.enableDelete
          ? () {
              controller.removeFilter(i);
            }
          : null,
    );
  }

  static Widget _defaultAddFilterChipBuilder(
    BuildContext context,
    EmrFilter filter,
    EmrFilterController controller,
  ) {
    final enabled = controller.newFilters().isNotEmpty;
    final foregroundColour = enabled
        ? Theme.of(context).colorScheme.surface
        : Theme.of(context).colorScheme.onSurfaceVariant;
    final compact = controller.filters.value.isNotEmpty;
    final plusIcon = FaIcon(
      FontAwesomeIcons.plus,
      color: foregroundColour,
      size: 14,
    );

    return ActionChip(
      // By default materialTapTargetSize is set to MaterialTapTargetSize.padded
      // which causes the ActionChip to have top and bottom padding in the
      // native apps. Because we need to set the leadingHeight for
      // EmrQueryLayoutScrollingBody when inside EmrQueryLayout, we set this to
      // MaterialTapTargetSize.shrinkWrap to remove the padding so that we can
      // get the padding looking correct.
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      key: controller.addFilterGlobalKey,
      avatar: compact ? null : plusIcon,
      backgroundColor: Theme.of(context).colorScheme.onSurface,
      disabledColor: Theme.of(context).dividerColor,
      label: compact
          ? SizedBox(height: 20, child: Center(child: plusIcon))
          : Text(
              context.l10n.addAFilter,
              style: TextStyle(color: foregroundColour),
            ),
      onPressed: enabled
          ? () => _showPopoverOrModal(
              context,
              controller,
              (context) => controller.addFilterContentBuilder(
                context,
                filter,
                controller,
              ),
              controller.addFilterGlobalKey,
            )
          : null,
    );
  }

  static Future<void> _showPopoverOrModal(
    BuildContext context,
    EmrFilterController controller,
    Widget Function(BuildContext) contentBuilder,
    GlobalKey targetKey,
  ) async {
    if (controller.calculatedDisplayMode == EmrFilterDisplayMode.popover) {
      await EmrPopover.show(
        context: context,
        targetKey: targetKey,
        contentBuilder: contentBuilder,
      );
    } else {
      await Navigator.of(
        context,
      ).push(EmrFilterModalPickerRoute(contentBuilder: contentBuilder));
    }
  }

  /// A [TypeAheadField] which can be used in a filter popover.
  static Widget autocomplete<T, TFilterValue>(
    Key? key,
    EmrFilterModel<dynamic> filter,
    EmrFilterController controller,
    Future<List<T>> Function(
      String pattern,
      EmrFilterController filterController,
    )
    suggestionsCallback, {
    required void Function() close,
    required String Function(T) getTitle,
    required TFilterValue Function(T) getValue,
    String Function(T)? getSubtitle,
  }) {
    final textEditingController = TextEditingController(text: filter.text);
    final textFieldFocusNode = FocusNode();

    return ft.TypeAheadField<T>(
      key: key,
      controller: textEditingController,
      focusNode: textFieldFocusNode,
      builder: (_, controller, focusNode) {
        return TextField(
          controller: controller,
          focusNode: focusNode,
          autofocus: filter.text?.isEmpty ?? true,
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
        );
      },
      suggestionsCallback: (pattern) =>
          suggestionsCallback(pattern, controller),
      itemBuilder: (context, suggestion) => ListTile(
        title: Text(getTitle(suggestion)),
        subtitle: getSubtitle != null ? Text(getSubtitle(suggestion)) : null,
      ),
      onSelected: (suggestion) {
        controller.addOrUpdateFilter(
          filter: filter as EmrFilterModel<TFilterValue>,
          text: getTitle(suggestion),
          value: getValue(suggestion),
        );

        close();
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

  /// An [EmrDatePicker] which can be used in a filter popover.
  static Widget datePicker(
    BuildContext context,
    EmrFilterModel<dynamic> filter,
    EmrFilterController controller, {
    required void Function() close,
    DateTime? firstDate,
    DateTime? lastDate,
  }) {
    final locale = Localizations.localeOf(context);

    return EmrDatePicker(
      initialDate: filter.value as DateTime?,
      firstDate: firstDate ?? DateTime(1900),
      lastDate: lastDate ?? DateTime(2100),
      onDateChanged: (DateTime date) {
        final text = DateFormat.yMd(locale.toString()).format(date);

        controller.addOrUpdateFilter(
          filter: filter as EmrFilterModel<DateTime>,
          text: text,
          value: date,
        );

        close();
      },
    );
  }

  static Widget defaultDateTimeTextBuilder<T extends DateTime>(
    BuildContext context,
    EmrFilterModel<T> filterModel, {
    String? prefix = '',
    String? suffix = '',
  }) {
    final date = DateFormat.yMd(
      Localizations.localeOf(context).toString(),
    ).format(filterModel.value ?? (throw Exception('value must not be null')));

    return Text('$prefix $date $suffix'.trim());
  }
}

class _EmrFilterState extends State<EmrFilter> {
  final _listViewScrollController = ScrollController();

  int _lastFilterCount = 0;

  @override
  void initState() {
    super.initState();

    _lastFilterCount = widget.controller.filters.value.length;

    widget.controller.filters.addListener(_onFiltersChanged);
  }

  @override
  void dispose() {
    _listViewScrollController.dispose();

    widget.controller.filters.removeListener(_onFiltersChanged);

    super.dispose();
  }

  void _onFiltersChanged() {
    // Determine when a filter is added so we can scroll to the end.
    if (widget.controller.filters.value.length > _lastFilterCount) {
      // At the point that the filter data changes, the UI hasn't yet been
      // updated, so we have to pause until it has been.
      Future.delayed(const Duration(milliseconds: 500), () {
        _listViewScrollController.animateTo(
          _listViewScrollController.position.maxScrollExtent,
          duration: const Duration(milliseconds: 250),
          curve: Curves.linear,
        );
      });
    }

    // Always update the count so we can track deleted filters.
    _lastFilterCount = widget.controller.filters.value.length;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: widget.padding,
      child: Row(
        children: [
          if (widget.leading != null)
            Padding(
              padding: const EdgeInsets.only(right: Insets.gutter / 2),
              child: widget.leading,
            ),
          Expanded(
            child: ValueListenableBuilder(
              valueListenable: widget.controller.filters,
              builder: (BuildContext context, value, Widget? child) {
                return FormField(
                  autovalidateMode: AutovalidateMode.always,
                  validator: (value) => widget.validator?.call(),
                  builder: (FormFieldState<dynamic> field) => Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      LayoutBuilder(
                        builder: (context, constraints) {
                          final compactAddButtonWidth = widget.showAddFilter
                              ? 48
                              : 0;

                          return SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                if (widget.controller.filters.value.isNotEmpty)
                                  ConstrainedBox(
                                    constraints: BoxConstraints(
                                      maxWidth:
                                          constraints.maxWidth -
                                          compactAddButtonWidth,
                                      minHeight: EmrFilter.defaultHeight,
                                      maxHeight: EmrFilter.defaultHeight,
                                    ),
                                    child: ListView.builder(
                                      shrinkWrap: true,
                                      controller: _listViewScrollController,
                                      padding: widget.innerPadding,
                                      scrollDirection: Axis.horizontal,
                                      itemCount: value.length,
                                      itemBuilder: (context, index) => Padding(
                                        padding: const EdgeInsets.only(
                                          right: Insets.gutter / 2,
                                        ),
                                        child: widget.filterChipBuilder(
                                          context,
                                          widget.controller,
                                          index,
                                        ),
                                      ),
                                    ),
                                  ),
                                if (widget.showAddFilter)
                                  Padding(
                                    padding:
                                        widget.controller.filters.value.isEmpty
                                        ? widget.innerPadding
                                        : EdgeInsets.zero,
                                    child: widget.addFilterChipBuilder(
                                      context,
                                      widget,
                                      widget.controller,
                                    ),
                                  ),
                              ],
                            ),
                          );
                        },
                      ),
                      if (field.hasError)
                        Padding(
                          padding: const EdgeInsets.only(
                            top: Insets.gutter / 2,
                          ),
                          child: Text(
                            field.errorText!,
                            style: Theme.of(context).textTheme.bodySmall!
                                .copyWith(
                                  color: Theme.of(context).colorScheme.error,
                                ),
                          ),
                        ),
                    ],
                  ),
                );
              },
            ),
          ),
          if (widget.trailing != null)
            Padding(
              padding: const EdgeInsets.only(left: Insets.gutter / 2),
              child: widget.trailing,
            ),
        ],
      ),
    );
  }
}
