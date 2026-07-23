import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/src/widgets/pagination/emr_inline_page_control.dart';
import 'package:emr_one_core/widgets/layouts/query_layout/emr_query_layout_scrolling_body.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';

@internal
class EmrQueryLayoutHybridBody<T> extends StatelessWidget {
  const EmrQueryLayoutHybridBody({
    required this.child,
    required this.controller,
    required this.scrollController,
    super.key,
    this.searchPanel,
    this.filterPanel,
    this.actionsPanel,
    this.facetsPanel,
    this.leadingHeight = 0.0,
    this.trailingHeight = 0.0,
    this.showPagingControls = true,
  });

  final Widget child;
  final EmrQueryLayoutController<T> controller;
  final Widget? searchPanel;
  final Widget? filterPanel;
  final Widget? actionsPanel;
  final Widget? facetsPanel;
  final double leadingHeight;
  final double trailingHeight;
  final ScrollController scrollController;
  final bool showPagingControls;

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
            isTrailingInline: true,
            leading: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                if (searchPanel != null)
                  Row(
                    children: [
                      if (searchPanel != null)
                        Flexible(
                          child: Padding(
                            padding:
                                const EdgeInsets.only(right: Insets.gutter),
                            child: searchPanel,
                          ),
                        ),
                      if (actionsPanel != null)
                        Padding(
                          padding: const EdgeInsets.only(right: Insets.gutter),
                          child: Row(
                            children: [
                              actionsPanel!,
                            ],
                          ),
                        ),
                    ],
                  ),
                if (filterPanel != null ||
                    (searchPanel == null && actionsPanel != null))
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      if (filterPanel != null)
                        Expanded(
                          child: filterPanel!,
                        ),
                      if (filterPanel == null) const Spacer(),
                      if (searchPanel == null && actionsPanel != null)
                        Padding(
                          padding: const EdgeInsets.only(
                            left: Insets.gutter,
                            right: Insets.gutter,
                          ),
                          child: Row(
                            children: [
                              actionsPanel!,
                            ],
                          ),
                        ),
                    ],
                  ),
              ],
            ),
            body: child,
            trailing: showPagingControls
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      EmrInlinePageControl(controller.pageControlEvents),
                    ],
                  )
                : const SizedBox.shrink(),
          ),
        ),
        // TODO: For native, show facets in a full screen sheet.
        if (facetsPanel != null) facetsPanel!,
      ],
    );
  }
}
