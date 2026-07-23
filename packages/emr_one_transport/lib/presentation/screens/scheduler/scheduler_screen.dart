import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/widgets/favourite_filters/favourite_filter_widget.dart';
import 'package:emr_one_transport/core/constants/colors.dart';
import 'package:emr_one_transport/core/constants/string_constants.dart';
import 'package:emr_one_transport/data/controllers/scheduler/scheduler_controller.dart';
import 'package:emr_one_transport/data/models/common/enum.dart';
import 'package:emr_one_transport/data/services/date_helper.dart';
import 'package:emr_one_transport/presentation/shared_widgets/common/loading_indicator.dart';
import 'package:emr_one_transport/presentation/shared_widgets/scheduler/date_range_widget.dart';
import 'package:emr_one_transport/presentation/shared_widgets/scheduler/scheduler_info_panel.dart';
import 'package:emr_one_transport/presentation/shared_widgets/scheduler/scheduling_grid.dart';
import 'package:emr_one_transport/presentation/shared_widgets/scheduler/tab_hover_target.dart';
import 'package:emr_one_transport/presentation/shared_widgets/scheduler/third_party_grid.dart';
import 'package:emr_one_transport/presentation/shared_widgets/scheduler/unscheduled_jobs_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:universal_html/html.dart' as html;

class SchedulerScreen extends StatefulWidget {
  const SchedulerScreen({this.jobNumber, super.key});
  final int? jobNumber;

  @override
  State<SchedulerScreen> createState() => _SchedulerScreenState();
}

class _SchedulerScreenState extends State<SchedulerScreen>
    with SingleTickerProviderStateMixin {
  late SchedulerController controller;
  double rowHeight = 45;
  late html.EventListener _rightClickListener;
  late final TabController _tabController;
  final tabs = [
    StringConstants.schedulerTabInternal,
    StringConstants.schedulerTabManagedHaulier,
    StringConstants.schedulerTabThirdPartyHaulier,
  ];
  final int internalHaulierTabIndex = 0;
  final int managedHaulierTabIndex = 1;
  final int thirdPartyHaulierTabIndex = 2;
  GlobalKey<SchedulingGridState> internalGridKey =
      GlobalKey<SchedulingGridState>();
  GlobalKey<SchedulingGridState> managedGridKey =
      GlobalKey<SchedulingGridState>();
  GlobalKey<ThirdPartyGridState> thirdPartyGridKey =
      GlobalKey<ThirdPartyGridState>();
  // Track global drag state without setState
  final ValueNotifier<bool> _dragActive = ValueNotifier<bool>(false);
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: tabs.length, vsync: this);
    controller = Provider.of<SchedulerController>(context, listen: false);
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      final error = await controller.initialize(widget.jobNumber);
      if (error != null && mounted) {
        _showError(context, error);
      }
    });

    _disableRightClick();
    controller.switchTabNotifier.addListener(_switchtab);
  }

  void _showError(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message), backgroundColor: Colors.red),
    );
  }

  @override
  void dispose() {
    _enableRightClick();
    controller.dispose();
    super.dispose();
  }

  void _onGlobalDragStart() {
    _dragActive.value = true;
  }

  void _onGlobalDragEnd() {
    _dragActive.value = false;
    if (_tabController.index == internalHaulierTabIndex) {
      internalGridKey.currentState?.cancelScroll();
    }
    if (_tabController.index == managedHaulierTabIndex) {
      managedGridKey.currentState?.cancelScroll();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<SchedulerController>(
      builder: (context, ctrl, child) {
        return Stack(
          children: [
            Container(
              padding: const EdgeInsets.only(
                top: Insets.gutter / 2,
                right: Insets.gutter / 2,
                left: Insets.gutter / 2,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                spacing: Insets.gutter / 2,
                children: [
                  _buildDateSection(),
                  Expanded(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      spacing: controller.showUnscheduledJobs.value
                          ? Insets.gutter / 2
                          : 0,
                      children: [
                        ValueListenableBuilder(
                          valueListenable: controller.showUnscheduledJobs,
                          builder: (context, value, child) {
                            return Visibility(
                              visible: controller.showUnscheduledJobs.value,
                              maintainState: true, // ← keep the subtree alive
                              child: SizedBox(
                                width: 300,
                                child: Listener(
                                  behavior: HitTestBehavior.translucent,
                                  onPointerMove: (ev) {
                                    if (!_dragActive.value) return;

                                    if (_tabController.index ==
                                        internalHaulierTabIndex) {
                                      internalGridKey.currentState
                                          ?.updateScrollDirections(ev.position);
                                    }
                                    if (_tabController.index ==
                                        managedHaulierTabIndex) {
                                      managedGridKey.currentState
                                          ?.updateScrollDirections(ev.position);
                                    }
                                  },
                                  onPointerUp: (_) => _onGlobalDragEnd(),
                                  onPointerCancel: (_) => _onGlobalDragEnd(),
                                  child: UnscheduledJobsWidget(
                                    onDragStart: _onGlobalDragStart,
                                    onDragEnd: _onGlobalDragEnd,
                                    unscheduleController:
                                        controller.unscheduleController,
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                        Expanded(
                          child: SingleChildScrollView(child: _buildTabs()),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            if (controller.isloading) const LoadingIndicator(),
          ],
        );
      },
    );
  }

  Widget _buildfilter() {
    final filter = EmrFilter(controller: controller.getFilterController());
    return filter;
  }

  Widget _buildTabs() {
    final customTabBarTheme = TabBarThemeData(
      indicator: const BoxDecoration(color: TransportAppColors.blueBg),
      indicatorSize: TabBarIndicatorSize.tab,
      // splash / highlight colors per state:
      overlayColor: WidgetStateProperty.resolveWith<Color?>((
        Set<WidgetState> states,
      ) {
        if (states.contains(WidgetState.pressed)) {
          return TransportAppColors.blueBg.withAlpha(70);
        }
        if (states.contains(WidgetState.hovered)) {
          return TransportAppColors.blueBg.withAlpha(50);
        }
        if (states.contains(WidgetState.focused)) {
          return TransportAppColors.blueBg.withAlpha(70);
        }
        // default: no overlay
        return Colors.transparent;
      }),

      labelColor: Colors.white,
      unselectedLabelColor: Theme.of(context).brightness == Brightness.light
          ? TransportAppColors.darkBg
          : TransportAppColors.whiteTextColor,
    );

    final localizedTabNames = <String, String>{
      StringConstants.schedulerTabInternal: context.l10n.internalHauliers,
      StringConstants.schedulerTabManagedHaulier:
          context.l10n.managedThirdPartyHauliers,
      StringConstants.schedulerTabThirdPartyHaulier:
          context.l10n.thirdPartyHauliers,
    };
    return Column(
      children: [
        Ink(
          decoration: BoxDecoration(
            color: TransportAppColors.boxShadowColor,
            border: Border(
              top: BorderSide(color: Theme.of(context).dividerColor),
            ),
          ),
          child: Theme(
            data: Theme.of(context).copyWith(tabBarTheme: customTabBarTheme),
            child: TabBar(
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorColor: TransportAppColors.blueBg,
              controller: _tabController,
              labelPadding: EdgeInsets.zero,
              padding: EdgeInsets.zero,
              tabs: List.generate(
                tabs.length,
                (i) => TabHoverTarget(
                  label: localizedTabNames[tabs[i]] ?? '',
                  index: i,
                  controller: _tabController,
                ),
              ),
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.only(top: Insets.gutter / 4),
          height: MediaQuery.sizeOf(context).height - 220,
          width: double.infinity,
          color: Theme.of(context).brightness == Brightness.light
              ? TransportAppColors.whiteTextColor
              : TransportAppColors.darkBg,
          child: Listener(
            behavior: HitTestBehavior.translucent,
            onPointerMove: (ev) {
              if (!_dragActive.value) return;

              if (_tabController.index == internalHaulierTabIndex) {
                internalGridKey.currentState?.updateScrollDirections(
                  ev.position,
                );
              }
              if (_tabController.index == managedHaulierTabIndex) {
                managedGridKey.currentState?.updateScrollDirections(
                  ev.position,
                );
              }
            },
            onPointerUp: (_) => _onGlobalDragEnd(),
            onPointerCancel: (_) => _onGlobalDragEnd(),
            child: TabBarView(
              controller: _tabController,
              children: [
                if (controller.scheduleJobResponse.isEmpty)
                  Center(child: Text(context.l10n.noDataFound))
                else
                  SchedulingGrid(
                    key: internalGridKey,
                    jobInFocus:
                        controller.jobToFocus != null &&
                            controller.isInternal(
                              controller.jobToFocus!.jobType,
                            )
                        ? null
                        : controller.jobToFocus,
                    haulierType: HaulierType.internal,
                    truckGroupingPreference: controller.scheduleJobResponse,
                    onDragStart: _onGlobalDragStart,
                    onDragEnd: _onGlobalDragEnd,
                    onYardCollapsed: controller.onYardRowCollapsed,
                    is24HrFormat: controller.is24HourFormat,
                    showCurrentTime: DateHelper.isSameDate(
                      DateTime.now(),
                      controller.selectedDateNotifier.value,
                    ),
                  ),
                if (controller.allManagedJobs.isEmpty)
                  Center(child: Text(context.l10n.noDataFound))
                else
                  SchedulingGrid(
                    key: managedGridKey,
                    jobInFocus:
                        controller.jobToFocus != null &&
                            controller.isManaged(controller.jobToFocus!.jobType)
                        ? null
                        : controller.jobToFocus,
                    haulierType: HaulierType.managed,
                    truckGroupingPreference: controller.allManagedJobs,
                    onDragStart: _onGlobalDragStart,
                    onDragEnd: _onGlobalDragEnd,
                    onYardCollapsed: controller.onYardRowCollapsed,
                    is24HrFormat: controller.is24HourFormat,
                    showCurrentTime: DateHelper.isSameDate(
                      DateTime.now(),
                      controller.selectedDateNotifier.value,
                    ),
                  ),
                if (controller.haulierJobs.isEmpty)
                  Center(child: Text(context.l10n.noDataFound))
                else
                  ThirdPartyGrid(
                    key: thirdPartyGridKey,
                    haulierJobs: controller.haulierJobs,
                    focusedJob:
                        controller.jobToFocus != null &&
                            controller.isThirdparty(
                              controller.jobToFocus!.jobType,
                            )
                        ? null
                        : controller.jobToFocus,
                  ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildDateSection() {
    return Column(
      spacing: Insets.gutter / 2,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            DateRangeWidget(
              selectedDateNotifier: controller.selectedDateNotifier,
            ),
            const Spacer(),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: Insets.gutter),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: TransportAppColors.greyCardBg),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        controller.showUnscheduledJobs.value =
                            !controller.showUnscheduledJobs.value;
                      });
                    },
                    child: Text(
                      'Show unscheduled jobs',
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ),
                  Transform.scale(
                    scale: 0.6,
                    child: Switch.adaptive(
                      value: controller.showUnscheduledJobs.value,
                      onChanged: (bool newValue) {
                        setState(() {
                          controller.showUnscheduledJobs.value = newValue;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: Insets.gutter / 2),
            _buildInfoMenu(),
            const SizedBox(width: Insets.gutter / 2),
          ],
        ),
        Row(
          children: [
            Expanded(child: _buildfilter()),
            _getFavouriteFilterWidget(),
          ],
        ),
      ],
    );
  }

  Widget _getFavouriteFilterWidget() {
    return MenuAnchor(
      builder:
          (BuildContext context, MenuController menuController, Widget? child) {
            return IconButton(
              onPressed: () {
                if (menuController.isOpen) {
                  menuController.close();
                } else {
                  menuController.open();
                }
              },
              icon: const Icon(Icons.filter_alt),
              tooltip: 'Favourite Filters',
            );
          },
      menuChildren: [
        Column(
          children: [
            FavouriteFilters(
              module: StringConstants.favFilterSchedulerModuleName,
              filterController: controller.getFilterController(),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildInfoMenu() {
    return MenuAnchor(
      builder:
          (BuildContext context, MenuController menuController, Widget? child) {
            return Container(
              height: rowHeight,
              width: 50,
              decoration: BoxDecoration(
                border: Border.all(color: TransportAppColors.greyCardBg),
                borderRadius: const BorderRadius.all(Radius.circular(5)),
              ),
              child: IconButton(
                onPressed: () {
                  if (menuController.isOpen) {
                    menuController.close();
                  } else {
                    menuController.open();
                  }
                },
                icon: const Icon(Icons.info_outline),
                tooltip: 'Information',
              ),
            );
          },
      menuChildren: const [SizedBox(width: 440, child: SchedulerInfoPanel())],
    );
  }

  void _disableRightClick() {
    _rightClickListener = (html.Event e) {
      e.preventDefault();
    };
    html.document.addEventListener('contextmenu', _rightClickListener);
  }

  void _enableRightClick() {
    html.document.removeEventListener('contextmenu', _rightClickListener);
  }

  void _switchtab() {
    switch (controller.switchTabNotifier.value) {
      case HaulierType.internal:
        _tabController.index = internalHaulierTabIndex;
      case HaulierType.managed:
        _tabController.index = managedHaulierTabIndex;
      case HaulierType.thirdParty:
        _tabController.index = thirdPartyHaulierTabIndex;
    }
  }
}
