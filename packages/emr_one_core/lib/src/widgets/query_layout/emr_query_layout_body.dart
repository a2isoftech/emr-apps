import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/widgets/layouts/query_layout/emr_query_layout_default_menu_panel.dart';
import 'package:emr_one_core/widgets/layouts/query_layout/emr_query_layout_scrolling_body.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';

@internal
class EmrQueryLayoutBody<T> extends StatelessWidget {
  const EmrQueryLayoutBody({
    required this.child,
    required this.controller,
    required this.scrollController,
    super.key,
    this.searchPanel,
    this.filterPanel,
    this.actionsPanel,
    this.facetsPanel,
    this.menuItems = const [],
    this.leadingHeight = 0.0,
    this.trailingHeight = 0.0,
  });

  final Widget child;
  final EmrQueryLayoutController<T> controller;
  final Widget? searchPanel;
  final Widget? filterPanel;
  final Widget? actionsPanel;
  final Widget? facetsPanel;
  final List<Widget> menuItems;
  final double leadingHeight;
  final double trailingHeight;
  final ScrollController scrollController;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: EmrQueryLayoutScrollingBody(
            enableAnimation: !kIsWeb,
            scrollController: scrollController,
            leadingHeight: leadingHeight,
            trailingHeight: trailingHeight,
            leading: Column(
              children: [
                Visibility(
                  visible: searchPanel != null,
                  child: Flexible(
                    child: Padding(
                      padding: const EdgeInsets.only(right: Insets.gutter),
                      child: searchPanel,
                    ),
                  ),
                ),
                if (filterPanel != null) const SizedBox(height: Insets.gutter),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    if (filterPanel != null)
                      Expanded(
                        child: filterPanel!,
                      ),
                    if (filterPanel == null) const Spacer(),
                    Row(
                      children: [
                        if (actionsPanel != null)
                          Padding(
                            padding:
                                const EdgeInsets.only(right: Insets.gutter),
                            child: Row(
                              children: [
                                actionsPanel!,
                              ],
                            ),
                          ),
                        if (menuItems.isNotEmpty) ...[
                          EmrQueryLayoutDefaultMenuPanel(
                            controller: controller,
                          ),
                          const SizedBox(width: Insets.gutter),
                        ],
                      ],
                    ),
                  ],
                ),
              ],
            ),
            body: child,
            trailing: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                EmrPageControl(controller.pageControlEvents),
              ],
            ),
          ),
        ),
        // TODO: For native, show facets in a full screen sheet.
        if (facetsPanel != null) facetsPanel!,
      ],
    );
  }
}
