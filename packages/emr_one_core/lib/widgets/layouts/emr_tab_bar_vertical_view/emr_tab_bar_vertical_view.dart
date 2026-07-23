import 'package:emr_one_core/config/config.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/widgets/layouts/emr_tab_bar_vertical_view/emr_form_buttons.dart';
import 'package:emr_one_core/widgets/layouts/query_layout/emr_action.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:provider/provider.dart';

export 'package:emr_one_core/widgets/layouts/emr_tab_bar_vertical_view/actions/actions.dart';
export 'package:emr_one_core/widgets/layouts/emr_tab_bar_vertical_view/emr_tab_bar_vertical_view_card.dart';
export 'package:emr_one_core/widgets/layouts/emr_tab_bar_vertical_view/emr_tab_bar_vertical_view_item.dart';
export 'package:emr_one_core/widgets/layouts/emr_tab_bar_vertical_view/emr_tab_bar_vertical_view_responsive_columns_card.dart';

/// A view containing a TabBar (on web only) and a vertical list of items
/// which can be arranged in one or more columns per row as appropriate for for
/// the display. By default, if [columns] is not provided, the view will display
/// a single column per row.
class EmrTabBarVerticalView extends StatefulWidget {
  EmrTabBarVerticalView({
    required this.children,
    List<int>? columns,
    super.key,
    this.onSave,
    this.onCancel,
    this.buttons = const [],
    this.saveButtonText = .save,
  }) {
    this.columns = columns ?? List.filled(children.length, 1);

    final totalCount = this.columns.fold(0, (prev, element) => prev + element);
    assert(totalCount == children.length);
  }

  late final List<int> columns;

  final List<EmrTabBarVerticalViewItem> children;

  final void Function()? onSave;

  final void Function()? onCancel;

  final List<TextButton> buttons;

  final EmrFormButtonsSaveButtonText saveButtonText;

  @override
  State<EmrTabBarVerticalView> createState() => _EmrTabBarVerticalViewState();
}

class _EmrTabBarVerticalViewState extends State<EmrTabBarVerticalView>
    with SingleTickerProviderStateMixin {
  late final TabController _tabBarController;

  final _scrollController = ScrollController();

  final List<List<EmrTabBarVerticalViewItem>> _rows = [];

  final _scrollViewKey = GlobalKey();

  final List<GlobalKey> _keys = [];

  final List<String> _tabTexts = [];

  @override
  void initState() {
    super.initState();

    // Group the children into rows based on the columns per row and generate
    // a GlobalKey and text for the tab.
    widget.columns.fold(0, (prev, element) {
      final row = widget.children.sublist(prev, prev + element);
      _rows.add(row);

      _keys.add(GlobalKey());

      _tabTexts.add(row.map((e) => e.title).join(' & '));

      return prev + element;
    });

    _tabBarController = TabController(length: _rows.length, vsync: this);

    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_onScroll);
    _tabBarController.dispose();
    _scrollController.dispose();

    super.dispose();
  }

  void _onScroll() {
    // Only attempt to keep the tabs in sync when the user is scrolling.
    // When the view is scrolling as a result of a tab being clicked, we don't
    // want to do anything.
    if (_scrollController.position.userScrollDirection ==
        ScrollDirection.idle) {
      return;
    }

    // Determine if the user has scrolled to the bottom and select the last tab.
    if (_scrollController.offset >=
        _scrollController.position.maxScrollExtent) {
      _tabBarController.animateTo(_keys.length - 1);
      return;
    }

    // Otherwise find the first row that is visible and select that tab.
    final scrollView =
        _scrollViewKey.currentContext!.findRenderObject()! as RenderBox;

    final index = _keys.indexWhere((key) {
      if (key.currentContext == null) {
        return false;
      }

      final ro = key.currentContext!.findRenderObject()!;
      final b = ro.paintBounds;
      final y = ro.getTransformTo(scrollView).getTranslation().y;

      return y + b.center.dy >= 0;
    });

    if (index != -1) {
      _tabBarController.animateTo(index);
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      children: [
        Expanded(
          child: DefaultTabController(
            length: widget.children.length,
            child: Column(
              children: [
                if (context.read<AppConfig>().isWeb)
                  TabBar(
                    controller: _tabBarController,
                    isScrollable: true,
                    tabAlignment: TabAlignment.start,
                    tabs: [for (final text in _tabTexts) Tab(text: text)],
                    onTap: _scrollToIndex,
                  ),
                Expanded(
                  child: ColoredBox(
                    color: theme.colorScheme.surfaceContainerHighest,
                    child: SingleChildScrollView(
                      key: _scrollViewKey,
                      controller: _scrollController,
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: Insets.gutter / 2,
                          right: Insets.gutter / 2,
                          bottom: Insets.gutter,
                        ),
                        child: Column(
                          children: [
                            for (final row in _rows)
                              Row(
                                key: _keys[_rows.indexOf(row)],
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  for (final item in row)
                                    _item(
                                      child: item,
                                      showTitle: widget.children.length > 1,
                                    ),
                                ],
                              ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        EmrFormButtons(
          onSave: widget.onSave,
          onCancel: widget.onCancel,
          buttons: widget.buttons,
          saveButtonText: widget.saveButtonText,
        ),
      ],
    );
  }

  Widget _item({
    required EmrTabBarVerticalViewItem child,
    bool showTitle = true,
  }) {
    final editAction = child.actions[CardEditActionIntent] as CardEditAction?;
    final addAction = child.actions[CardAddActionIntent] as CardAddAction?;

    return Actions(
      actions: child.actions,
      child: Expanded(
        child: Padding(
          padding: const EdgeInsets.all(Insets.gutter / 2),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: Insets.gutter / 2,
                  bottom: Insets.gutter / 2,
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: showTitle
                          ? Text(
                              child.title,
                              style: EmrOneConstants.kOpenSans18BoldTextStyle,
                            )
                          : const SizedBox.shrink(),
                    ),
                    if (addAction != null) _actionButton(addAction),
                    if (editAction != null) _actionButton(editAction),
                  ],
                ),
              ),
              EmrSecurityContainer(
                allowedPermissions: child.allowedPermissions,
                child: child,
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _scrollToIndex(int index) {
    final key = _keys[index];

    if (key.currentContext == null) {
      return;
    }

    Scrollable.ensureVisible(
      key.currentContext!,
      duration: const Duration(milliseconds: 500),
    );
  }

  Widget _actionButton(EmrAction action) => ValueListenableBuilder(
    valueListenable: action.actionEnabled,
    builder: (context, enabled, _) => TextButton(
      onPressed: enabled
          ? () {
              Actions.invoke(context, action.createIntent(context));
            }
          : null,
      child: Row(
        children: [
          Icon(action.icon, size: 12),
          const SizedBox(width: Insets.gutter / 4),
          Text(action.label),
        ],
      ),
    ),
  );
}
