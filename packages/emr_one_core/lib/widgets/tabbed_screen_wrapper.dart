import 'package:emr_one_core/eo_constants.dart';
import 'package:emr_one_theme/emr_one_theme.dart';
import 'package:flutter/material.dart';

class TabbedScreenWrapper extends StatefulWidget {
  const TabbedScreenWrapper({
    required this.screenHeaderText,
    required this.tabSummaries,
    required this.currentIndex,
    super.key,
    this.onFabPress,
    this.onBackButtonPressed,
  });
  final List<TabbedScreenTabSummary> tabSummaries;
  final String screenHeaderText;
  final int currentIndex;
  final void Function()? onFabPress;
  final void Function()? onBackButtonPressed;
  @override
  State<TabbedScreenWrapper> createState() => _TabbedScreenWrapperState();
}

class TabbedScreenTabSummary {
  TabbedScreenTabSummary({
    required this.tab,
    required this.label,
    this.showButton = true,
  });
  final Widget tab;
  final String label;
  bool showButton;
}

class _TabbedScreenWrapperState extends State<TabbedScreenWrapper> {
  @override
  Widget build(BuildContext context) => buildWebScreenWrapperTabs();

  Widget buildWebScreenWrapperTabs() {
    final brandColours = Theme.of(context).extension<EOBrandTheme>()!;
    return DefaultTabController(
      length: widget.tabSummaries.length,
      child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            color: brandColours.brandColour,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Row(
                    children: [
                      if (widget.onBackButtonPressed != null)
                        BackButton(
                          color: brandColours.onBrandColour,
                          onPressed: widget.onBackButtonPressed,
                        ),
                      Expanded(
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Text(
                            widget.screenHeaderText,
                            overflow: TextOverflow.ellipsis,
                            style: Theme.of(context)
                                .textTheme
                                .headlineMedium!
                                .copyWith(color: brandColours.onBrandColour),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                TabBar(
                  isScrollable: MediaQuery.of(context).size.width <
                      EmrOneConstants.partyTabsHeaderScrollWidth,
                  indicatorColor: Theme.of(context).colorScheme.primary,
                  labelColor: brandColours.onBrandColour,
                  unselectedLabelColor:
                      brandColours.onBrandColour!.withAlpha(128),
                  indicatorWeight: 3,
                  tabs: [
                    for (int i = 0; i < widget.tabSummaries.length; i++)
                      Tab(
                        child: Text(widget.tabSummaries[i].label),
                      ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              children: widget.tabSummaries
                  .map(
                    (
                      e,
                    ) =>
                        e.tab,
                  )
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildFabButton(VoidCallback? onPressed) {
    final theme = Theme.of(context);
    const circleFabBorder = CircleBorder();
    return Material(
      color: theme.colorScheme.secondary,
      elevation: 2,
      shape: circleFabBorder,
      child: InkWell(
        onTap: onPressed,
        customBorder: circleFabBorder,
        child: SizedBox(
          height: 56,
          width: 56,
          child: Center(
            child: Icon(
              Icons.add,
              color: theme.colorScheme.onSecondary,
            ),
          ),
        ),
      ),
    );
  }
}
