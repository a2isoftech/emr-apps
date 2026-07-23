import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';

class InspectionTabWidget extends StatefulWidget {
  const InspectionTabWidget({
    required this.selectedIndex,
    required this.tabs,
    required this.tabItems,
    required this.onTap,
    super.key,
  });
  final int selectedIndex;
  final List<Widget> tabs;
  final List<Widget> tabItems;
  final void Function(int) onTap;

  @override
  State<InspectionTabWidget> createState() => _InspectionTabWidgetState();
}

class _InspectionTabWidgetState extends State<InspectionTabWidget>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(2),
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.grey,
            ),
            borderRadius: BorderRadius.circular(
              Insets.gutter * 2,
            ),
          ),
          child: TabBar(
            controller: _tabController,
            onTap: widget.onTap,
            dividerColor: Colors.transparent,
            unselectedLabelStyle: Theme.of(context).primaryTextTheme.bodyLarge,
            labelColor: Theme.of(context).colorScheme.surface,
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorWeight: 0,
            indicator: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.circular(
                Insets.gutter * 2,
              ),
            ),
            tabs: widget.tabs
                .map(
                  (x) => Tab(
                    child: x,
                  ),
                )
                .toList(),
          ),
        ),
        const SizedBox(
          height: Insets.gutter / 2,
        ),
        Expanded(
          child: TabBarView(
            controller: _tabController,
            physics: const NeverScrollableScrollPhysics(),
            children: widget.tabItems,
          ),
        ),
      ],
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
}
