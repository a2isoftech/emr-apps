import 'package:collection/collection.dart';
import 'package:emr_one_core/config/app_config.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/src/widgets/emr_card/emr_card_view_card.dart';
import 'package:emr_one_core/src/widgets/emr_card/emr_card_view_card_dismissible.dart';
import 'package:emr_one_core/src/widgets/query_layout/query_layout_loading.dart';
import 'package:emr_one_core/widgets/card/emr_card_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

export 'emr_grid_column.dart';
export 'emr_grid_controller.dart';
export 'emr_grouped_grid.dart';
export 'emr_grouped_grid_controller.dart';

/// Card View update 3/9/2025
/// The [EmrCardView] widget now accepts additional parameters for
/// the new [EmrQueryLayoutHybrid] widget. These new properties allow
/// for the layout widget to use the [EmrCardView] to build cards for
/// itself - previously it was always required that developers provided
/// their own card building and card selection logic.
///
/// Setting the [isHybrid] property to `true` will activate this new behaviour.
/// In this mode the caller is expected to provide callbacks to build elements
/// of each card, rather than the [buildItem] callback which is used in the
/// non-hybrid mode to build entire cards, [buildItem] is ignored in hybrid
/// mode.
///
/// The new properties are:
/// - [isHybrid]: A boolean that indicates whether the card view
///   is in hybrid mode. `true` activates the new properties.
/// - [dataSource]: Required if [isHybrid] is `true` as the data source
///   will be used by [EmrCardView] to manage selection.
/// - [getCardPadding]: A function that returns the padding for each card.
/// - [getCardTitle]: A function that returns the title for each card.
/// - [getCardSubtitle]: A function that returns the subtitle for each card.
/// - [getCardLeading]: A function that returns the leading
///   widget for each card.
/// - [getCardTrailing]: A function that returns the trailing
///   widget for each card.
/// - [cardWidth]: The width of each card.
/// - [cardHeight]: The height of each card.
/// - [confirmDismiss]: A callback that is called when a card is dismissed.
///   This is used to confirm whether the card should be dismissed or not.
/// - [dismissible]: A boolean that indicates whether the cards are dismissible.
class EmrCardView<TItemData> extends StatefulWidget {
  const EmrCardView({
    required this.controller,
    required this.buildItem,
    super.key,
    this.horizontalPadding = Insets.gutter / 2,
    this.verticalPadding = Insets.gutter / 2,
    this.onItemTapped,
    this.onItemLongPress,
    this.scrollController,
    this.noRecordsMessage,
    this.alternateBackgroundRowColour = false,
    this.buildCustomLoadingWidget,
    this.defaultLoadingIndicatorSize = const Size(160, 120),
    this.isHybrid = false,
    this.dataSource,
    this.getCardPadding,
    this.getCardTitle,
    this.getCardSubtitle,
    this.getCardLeading,
    this.getCardTrailing,
    this.cardWidth,
    this.cardHeight,
    this.confirmDismiss,
    this.scrollPadding,
    this.dismissible = false,
  }) : assert(
         isHybrid == false || dataSource != null,
         'dataSource must be provided if isHybrid is true',
       );

  /// A controller that will be responsible for getting and grouping the data.
  final EmrGridController<TItemData> controller;

  /// The data source that will be used to manage selection and data.
  /// This is required if [isHybrid] is `true`.
  final EmrQueryDataSource<TItemData>? dataSource;

  final EdgeInsets Function()? getCardPadding;

  final String? Function(TItemData item)? getCardTitle;

  final String? Function(TItemData item)? getCardSubtitle;

  final Widget? Function(TItemData item)? getCardLeading;

  final Widget? Function(TItemData item)? getCardTrailing;

  final ConfirmDismissCallback? confirmDismiss;

  final bool isHybrid;

  final bool dismissible;

  final double? cardWidth;

  final double? cardHeight;

  final EdgeInsets? scrollPadding;

  /// A function that builds the Card widget for each card in non-hybrid mode.
  /// In hybrid mode, this function is instead used to build the card body.
  final Widget Function(EmrGridController<TItemData> controller, TItemData, int)
  buildItem;

  /// The horizontal padding for headers, grouped headers and cells.
  final double horizontalPadding;

  /// The vertical padding for headers, grouped headers and cells.
  final double verticalPadding;

  final void Function(TItemData item)? onItemTapped;

  final void Function(TItemData item)? onItemLongPress;

  // a controller for the CustomScrollView.
  // this is useful for achieving infinite scroll capability in the list
  final ScrollController? scrollController;

  //To show a custom message when no data available in grid
  final Text? noRecordsMessage;

  // Whether to alternate the background colour of rows.
  final bool alternateBackgroundRowColour;

  // A custom widget to show when the grid is loading.
  final Widget Function()? buildCustomLoadingWidget;

  // The default size of the loading indicator.
  final Size defaultLoadingIndicatorSize;

  @override
  State<EmrCardView<TItemData>> createState() => _EmrCardViewState<TItemData>();
}

class _EmrCardViewState<TItemData> extends State<EmrCardView<TItemData>> {
  late final List<EmrCardController> _cardControllers;

  @override
  void initState() {
    super.initState();

    /// Generate controllers for each card if the view is hybrid and selectable.
    /// TODO: Need a solution for when the page size changes.
    if (_isHybridAndSelectable) {
      _cardControllers = List.generate(
        widget.controller.dataSource?.pageSize ?? 0,
        (_) => EmrCardController(),
      );

      widget.controller.dataSource?.data.addListener(_onSelectionChanged);
      widget.controller.dataSource?.selection.addListener(_onSelectionChanged);
      _onSelectionChanged();
    } else {
      _cardControllers = [];
    }
  }

  @override
  void dispose() {
    if (_isHybridAndSelectable) {
      widget.controller.dataSource?.selection.removeListener(
        _onSelectionChanged,
      );
      widget.controller.dataSource?.data.removeListener(_onSelectionChanged);
    }

    super.dispose();
  }

  @override
  Widget build(BuildContext context) => LayoutBuilder(
    builder: (BuildContext context, BoxConstraints constraints) {
      final appConfig = Provider.of<AppConfig>(context, listen: false);
      final dismissible =
          widget.dismissible && widget.isHybrid && !appConfig.isWeb;

      return Stack(
        children: [
          Positioned.fill(
            child: ValueListenableBuilder(
              valueListenable: widget.controller.data,
              builder: (BuildContext context, value, Widget? child) =>
                  SingleChildScrollView(
                    padding: widget.scrollPadding,
                    controller: widget.scrollController,
                    child: Padding(
                      padding: const EdgeInsets.all(Insets.gutter),
                      child: Wrap(
                        spacing: Insets.gutter * 2,
                        runSpacing: Insets.gutter * 2,
                        children: widget.controller.data.value
                            .mapIndexed(
                              (index, element) => switch (widget.isHybrid) {
                                true =>
                                  !dismissible
                                      ? EmrCardViewCard(
                                          controller: _isHybridAndSelectable
                                              ? _cardControllers[index %
                                                    _cardControllers.length]
                                              : null,
                                          leading: widget.getCardLeading?.call(
                                            element,
                                          ),
                                          trailing: widget.getCardTrailing
                                              ?.call(element),
                                          title: widget.getCardTitle?.call(
                                            element,
                                          ),
                                          subtitle: widget.getCardSubtitle
                                              ?.call(element),
                                          cardWidth: !appConfig.isWeb
                                              ? null
                                              : widget.cardWidth,
                                          cardHeight: widget.cardHeight,
                                          padding:
                                              widget.getCardPadding?.call() ??
                                              const EdgeInsets.all(
                                                Insets.gutter,
                                              ),
                                          onSelected: _isHybridAndSelectable
                                              ? ({bool selected = false}) {
                                                  if (selected) {
                                                    widget.dataSource!
                                                        .addToSelection(
                                                          element,
                                                        );
                                                  } else {
                                                    widget.dataSource!
                                                        .removeFromSelection(
                                                          element,
                                                        );
                                                  }
                                                }
                                              : null,
                                          child: widget.buildItem(
                                            widget.controller,
                                            element,
                                            index,
                                          ),
                                        )
                                      : EmrCardViewCardDismissible<TItemData>(
                                          item: element,
                                          onDismissed: (direction) {
                                            widget.dataSource?.removeItem(
                                              element,
                                            );
                                          },
                                          confirmDismiss: widget.confirmDismiss,
                                          controller:
                                              _cardControllers[index %
                                                  _cardControllers.length],
                                          leading: widget.getCardLeading?.call(
                                            element,
                                          ),
                                          trailing: widget.getCardTrailing
                                              ?.call(element),
                                          title: widget.getCardTitle?.call(
                                            element,
                                          ),
                                          subtitle: widget.getCardSubtitle
                                              ?.call(element),
                                          cardWidth: !appConfig.isWeb
                                              ? null
                                              : widget.cardWidth,
                                          cardHeight: widget.cardHeight,
                                          padding:
                                              widget.getCardPadding?.call() ??
                                              const EdgeInsets.all(
                                                Insets.gutter,
                                              ),
                                          onSelected:
                                              ({bool selected = false}) {
                                                if (selected) {
                                                  widget.dataSource!
                                                      .addToSelection(element);
                                                } else {
                                                  widget.dataSource!
                                                      .removeFromSelection(
                                                        element,
                                                      );
                                                }
                                              },
                                          child: widget.buildItem(
                                            widget.controller,
                                            element,
                                            index,
                                          ),
                                        ),
                                _ => widget.buildItem(
                                  widget.controller,
                                  element,
                                  index,
                                ),
                              },
                            )
                            .toList(),
                      ),
                    ),
                  ),
            ),
          ),
          Center(
            child: ValueListenableBuilder(
              valueListenable: widget.controller.showLoader,
              builder: (context, value, child) {
                if (value) {
                  return widget.buildCustomLoadingWidget?.call() ??
                      const EmrQueryLayoutLoadingIndicator();
                } else if (widget.controller.data.value.isEmpty &&
                    widget.noRecordsMessage != null) {
                  return widget.noRecordsMessage ?? const SizedBox();
                } else {
                  return const SizedBox();
                }
              },
            ),
          ),
        ],
      );
    },
  );

  bool get _isHybridAndSelectable =>
      widget.isHybrid &&
      widget.controller.dataSource != null &&
      widget.controller.rowSelectionMode != RowSelectionMode.none;

  void _onSelectionChanged() {
    for (var i = 0; i < widget.controller.dataSource!.data.value.length; i++) {
      final item = widget.controller.dataSource!.data.value[i];
      if (item != null) {
        _cardControllers[i].isSelected.value = widget
            .dataSource!
            .selection
            .value
            .contains(item);
      }
    }
  }
}
