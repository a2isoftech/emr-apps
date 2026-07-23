import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_yard_management/components/live_loads_view/date_quick_view_filter_card.dart';
import 'package:emr_one_yard_management/components/live_loads_view/live_loads_filter_controller.dart';
import 'package:emr_one_yard_management/components/live_loads_view/live_loads_grid_controller.dart';
import 'package:emr_one_yard_management/components/live_loads_view/view_filter_card.dart';
import 'package:emr_one_yard_management/models/liveLoads/live_loads_model.dart';
import 'package:file_saver/file_saver.dart';
import 'package:flutter/material.dart';

class LiveLoadsFilterView extends StatelessWidget {
  const LiveLoadsFilterView({
    required this.filterController,
    required this.gridController,
    super.key,
  });
  final LiveLoadsFilterController filterController;
  final LiveLoadsGridController gridController;

  @override
  Widget build(BuildContext context) {
    final viewFilters = <String>[
      context.l10n.yardLiveLoadsStatusPlanned,
      context.l10n.yardLiveLoadsStatusOnSite,
      context.l10n.yardLiveLoadsStatusOnRoute,
      context.l10n.yardLiveLoadsStatusInBound,
      context.l10n.yardLiveLoadsStatusOutBound,
    ];
    final quickDateFilters = <String>[
      context.l10n.yardLiveLoadDateFilterThisWeek,
      context.l10n.yardLiveLoadDateFilterYesterday,
      context.l10n.yardLiveLoadDateFilterToday,
      context.l10n.yardLiveLoadDateFilterTommorow,
      context.l10n.yardLiveLoadDateFilterNextWeek,
    ];
    return SingleChildScrollView(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(Insets.gutter),
                        child: EmrFilter(controller: filterController),
                      ),
                    ),
                  ],
                ),
                ValueListenableBuilder(
                  valueListenable: gridController.isFilterDateSelected,
                  builder: (context, value, widget1) {
                    if (!gridController.isFilterDateSelected.value) {
                      return Padding(
                        padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                        child: SizedBox(
                          child: Wrap(
                            children: List.generate(
                              quickDateFilters.length,
                              (index) {
                                return ValueListenableBuilder(
                                  valueListenable:
                                      gridController.quickDateFilterValue,
                                  builder: (
                                    BuildContext context,
                                    value,
                                    Widget? child,
                                  ) {
                                    return DateQuickViewFilterCard(
                                      title: quickDateFilters[index],
                                      onClick: (value) {
                                        gridController.quickDateFilterValue
                                            .value = value!;

                                        gridController.searchChanged();
                                      },
                                      isSelected: gridController
                                              .quickDateFilterValue.value ==
                                          quickDateFilters[index],
                                    );
                                  },
                                );
                              },
                            ),
                          ),
                        ),
                      );
                    } else {
                      return Container();
                    }
                  },
                ),
              ],
            ),
          ),
          IconButton(
            style: const ButtonStyle(iconSize: WidgetStatePropertyAll(50)),
            icon: const Icon(Icons.print),
            onPressed: () async {
              if (gridController.gridController.data.value.isEmpty) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('No Data to Print!'),
                  ),
                );
                return;
              }
              await showDialog<AlertDialog>(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: Row(
                      children: [
                        const Text('Live Loads Pdf'),
                        IconButton(
                          onPressed: _downloadLiveLoads,
                          icon: const Icon(Icons.download),
                        ),
                      ],
                    ),
                    content: SizedBox(
                      width: MediaQuery.sizeOf(context).width * 0.70,
                      height: MediaQuery.sizeOf(context).height * 0.70,
                      child: FutureBuilder(
                        future: gridController.getPrintData(
                          gridController.client,
                          gridController.appConfig,
                        ),
                        builder: (context, snapshot) {
                          if (snapshot.connectionState ==
                              ConnectionState.done) {
                            return EmrPdfViewer(data: snapshot.data);
                          }

                          return const Center(
                            child: CircularProgressIndicator(),
                          );
                        },
                      ),
                    ),
                  );
                },
              );
            },
          ),
          Expanded(
            child: Wrap(
              spacing: Insets.gutter,
              runSpacing: Insets.gutter,
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                ),
                SizedBox(
                  child: Wrap(
                    children: List.generate(
                      viewFilters.length,
                      (index) {
                        return ValueListenableBuilder(
                          valueListenable: gridController.viewCardFilterValue,
                          builder: (BuildContext context, value, child) {
                            return ValueListenableBuilder(
                              valueListenable:
                                  gridController.gridController.data,
                              builder: (BuildContext context2, value1, child2) {
                                return ViewFilterCard(
                                  btnClick: (value) {
                                    gridController.viewCardFilterValue.value =
                                        value!;

                                    gridController.quickFilter();
                                  },
                                  header: viewFilters[index],
                                  bodyValue: gridController.allData
                                      .where(
                                        (element) => _getCardBodyValue(
                                          context,
                                          viewFilters[index],
                                          element,
                                        ),
                                      )
                                      .length
                                      .toString(),
                                  isSelected: gridController
                                          .viewCardFilterValue.value ==
                                      viewFilters[index],
                                );
                              },
                            );
                          },
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _downloadLiveLoads() async {
    final bytes = await gridController.getPrintData(
      gridController.client,
      gridController.appConfig,
    );
    await FileSaver.instance.saveFile(
      name: 'LiveLoads',
      bytes: bytes,
      fileExtension: 'pdf',
      mimeType: MimeType.pdf,
    );
  }

  bool _getCardBodyValue(
    BuildContext context,
    String cardName,
    LiveLoadsModel element,
  ) {
    return (cardName == context.l10n.yardLiveLoadsStatusPlanned &&
            element.status != context.l10n.yardLiveLoadsStatusRequested) ||
        (cardName == context.l10n.yardLiveLoadsStatusOnSite &&
            element.status == context.l10n.yardLiveLoadsStatusInProgress) ||
        (cardName == context.l10n.yardLiveLoadsStatusOnRoute &&
            element.status == cardName) ||
        (cardName == context.l10n.yardLiveLoadsStatusInBound &&
            (element.direction == context.l10n.yardLiveLoadsStatusIn &&
                element.status != context.l10n.yardLiveLoadsStatusCompleted &&
                element.status != context.l10n.yardLiveLoadsStatusAbandoned &&
                element.status != context.l10n.yardLiveLoadsStatusRequested)) ||
        (cardName == context.l10n.yardLiveLoadsStatusOutBound &&
            (element.direction == context.l10n.yardLiveLoadsStatusOut &&
                element.status != context.l10n.yardLiveLoadsStatusCompleted &&
                element.status != context.l10n.yardLiveLoadsStatusAbandoned &&
                element.status != context.l10n.yardLiveLoadsStatusRequested)) ||
        false;
  }
}
