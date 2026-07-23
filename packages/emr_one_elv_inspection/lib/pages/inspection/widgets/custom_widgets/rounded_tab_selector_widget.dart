import 'package:emr_one_core/eo_constants.dart';
import 'package:flutter/material.dart';

class RoundedTabSelectorWidget extends StatefulWidget {
  const RoundedTabSelectorWidget({
    required this.tabs,
    required this.widgets,
    required this.activeTab,
    this.onChanged,
    super.key,
  });

  final List<String> tabs;
  final List<Widget> widgets;
  final String activeTab;
  final void Function(int index)? onChanged;

  @override
  State<RoundedTabSelectorWidget> createState() =>
      _RoundedTabSelectorWidgetState();
}

class _RoundedTabSelectorWidgetState extends State<RoundedTabSelectorWidget> {
  late final PageController _pageController;
  late int _currentTab;
  bool _isPageAnimatingProgrammatically = false;

  @override
  void initState() {
    super.initState();
    _currentTab = widget.tabs.indexOf(widget.activeTab);
    _pageController = PageController(initialPage: _currentTab);
  }

  @override
  void didUpdateWidget(covariant RoundedTabSelectorWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    // Parent changed the activeTab prop
    if (widget.activeTab != oldWidget.activeTab) {
      final newTab = widget.tabs.indexOf(widget.activeTab);
      if (newTab != _currentTab) {
        final index = newTab;
        _animateToPage(index);
      }
    }
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  Future<void> _animateToPage(int index) async {
    if (!mounted) return;
    _isPageAnimatingProgrammatically = true;
    try {
      await _pageController.animateToPage(
        index,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
      // Update local current tab when animation completes
      if (mounted) {
        setState(() {
          _currentTab = index;
        });
      }
    } finally {
      _isPageAnimatingProgrammatically = false;
    }
  }

  void _onTabTapped(int index) {
    if (index == _currentTab) return;
    // Optimistic UI update so the tab appears selected immediately
    setState(() => _currentTab = index);
    widget.onChanged?.call(index);
    _animateToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    if (widget.widgets.length != widget.tabs.length) {
      return const Center(child: Text('Widgets Count Error'));
    }
    const circularValue = 40.0;
    final selectedTab = widget.activeTab;

    return ColoredBox(
      color: Theme.of(context).canvasColor,
      child: Column(
        children: [
          // Pill-shaped tabs
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: Insets.gutter,
              horizontal: Insets.gutter / 2,
            ),
            child: Container(
              padding: EdgeInsets.zero,
              decoration: BoxDecoration(
                color: Theme.of(context).canvasColor,
                borderRadius: BorderRadius.circular(circularValue),
                boxShadow: [
                  BoxShadow(
                    color:
                        Theme.of(context).colorScheme.onSurface.withAlpha(50),
                    blurRadius: Insets.gutter / 2,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: GridView.builder(
                itemCount: widget.tabs.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: widget.tabs.length,
                  mainAxisExtent: 40,
                ),
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  final isSelected = (selectedTab == widget.tabs[index]) ||
                      (_currentTab == index &&
                          selectedTab == widget.tabs[index]);
                  return GestureDetector(
                    onTap: () => _onTabTapped(index),
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 200),
                      padding: const EdgeInsets.symmetric(
                        vertical: Insets.gutter / 2,
                        horizontal: Insets.gutter,
                      ),
                      decoration: BoxDecoration(
                        color: isSelected
                            ? Theme.of(context).colorScheme.onSurface
                            : Colors.transparent,
                        borderRadius: BorderRadius.circular(circularValue),
                      ),
                      child: Center(
                        child: Text(
                          widget.tabs[index],
                          style: Theme.of(context)
                              .primaryTextTheme
                              .bodyMedium!
                              .copyWith(
                                color: isSelected
                                    ? Theme.of(context).colorScheme.surface
                                    : Theme.of(context).colorScheme.onSurface,
                                overflow: TextOverflow.ellipsis,
                              ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          Expanded(
            child: PageView(
              controller: _pageController,
              physics: const NeverScrollableScrollPhysics(),
              onPageChanged: (int index) {
                _currentTab = index;
                if (!_isPageAnimatingProgrammatically) {
                  widget.onChanged?.call(index);
                }
              },
              children: List.generate(widget.widgets.length, (i) {
                return _KeepAliveWrapper(child: widget.widgets[i]);
              }),
            ),
          ),
        ],
      ),
    );
  }
}

class _KeepAliveWrapper extends StatefulWidget {
  const _KeepAliveWrapper({required this.child});
  final Widget child;
  @override
  State<_KeepAliveWrapper> createState() => _KeepAliveWrapperState();
}

class _KeepAliveWrapperState extends State<_KeepAliveWrapper>
    with AutomaticKeepAliveClientMixin<_KeepAliveWrapper> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return widget.child;
  }
}
