import 'dart:typed_data';

import 'package:emr_one_core/config/app_config.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_yard_management/components/live_loads_view/live_loads_filter_controller.dart';
import 'package:emr_one_yard_management/enums/from_to_date.dart';
import 'package:emr_one_yard_management/enums/live_loads_status.dart';
import 'package:emr_one_yard_management/models/liveLoads/live_loads_filter_model.dart';
import 'package:emr_one_yard_management/models/liveLoads/live_loads_model.dart';
import 'package:emr_one_yard_management/models/liveLoads/live_loads_print_model.dart';
import 'package:emr_one_yard_management/models/liveLoads/live_loads_print_wrap_model.dart';
import 'package:emr_one_yard_management/models/liveLoads/live_loads_search_model.dart';
import 'package:emr_one_yard_management/repository/liveLoads/live_loads_repository.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class LiveLoadsGridController {
  LiveLoadsGridController({
    required this.context,
    required this.client,
    required this.appConfig,
    required this.filterController,
  }) {
    filterController.filters.addListener(searchChanged);
    searchChanged();
    viewCardFilterValue.value = context.l10n.yardLiveLoadsStatusPlanned;
    quickDateFilterValue.value = context.l10n.yardLiveLoadDateFilterToday;
  }
  final BuildContext context;
  final BaseClient client;
  final AppConfig appConfig;
  List<LiveLoadsModel> allData = [];
  final ValueNotifier<List<LiveLoadsModel>> _data = ValueNotifier([]);
  final LiveLoadsFilterController filterController;

  ValueNotifier<String> quickDateFilterValue = ValueNotifier('');
  ValueNotifier<String> viewCardFilterValue = ValueNotifier('');

  ValueNotifier<bool> busy = ValueNotifier(false);
  ValueNotifier<bool> isFilterDateSelected = ValueNotifier(false);
  bool noFilters = true;
  ValueNotifier<bool> rowSelected = ValueNotifier(false);
  String? liveloadsSearchValue = '';

  late EmrGridController<LiveLoadsModel> gridController =
      EmrGridController(data: _data);

  Future<List<LiveLoadsModel>> searchChanged() async {
    final filters = await filterController.getCurrentFilters();
    if (filters == null) {
      isFilterDateSelected.value = false;
      return _data.value;
    } else if (filters.startDate != null && filters.endDate != null) {
      isFilterDateSelected.value = true;
    } else {
      isFilterDateSelected.value = false;
    }

    if (filters.search != null && filters.search!.isNotEmpty) {
      if (filters.search != liveloadsSearchValue) {
        searchCommentFilter(filters.search!.toLowerCase());
        return _data.value;
      }
    }

    if (filters.yard != null) {
      busy.value = true;
      await getLiveLoads(
        client,
        appConfig,
        LiveLoadsFilterModel(
          search: LiveLoadsSearchModel(
            yard: filters.yard,
            customer: filters.customer ?? '',
            startDate: filters.startDate.dateOnly ??
                getFromOrToDate(
                  FromToDate.fromDate,
                ),
            endDate: filters.endDate.dateOnly ??
                getFromOrToDate(
                  FromToDate.toDate,
                ),
            status: '',
            search: '',
          ),
        ),
      );
      await quickFilter();
    }

    busy.value = false;
    return _data.value;
  }

  DateTime getFromOrToDate(FromToDate val) {
    if (quickDateFilterValue.value ==
        context.l10n.yardLiveLoadDateFilterThisWeek) {
      if (val == FromToDate.fromDate) {
        return DateTime.now()
            .subtract(Duration(days: DateTime.now().weekday - 1))
            .dateOnly;
      } else {
        return DateTime.now().dateOnly;
      }
    } else if (quickDateFilterValue.value ==
        context.l10n.yardLiveLoadDateFilterYesterday) {
      return DateTime.now().subtract(const Duration(days: 1)).dateOnly;
    } else if (quickDateFilterValue.value ==
        context.l10n.yardLiveLoadDateFilterToday) {
      return DateTime.now().dateOnly;
    } else if (quickDateFilterValue.value ==
        context.l10n.yardLiveLoadDateFilterTommorow) {
      return DateTime.now().add(const Duration(days: 1)).dateOnly;
    } else if (quickDateFilterValue.value ==
        context.l10n.yardLiveLoadDateFilterNextWeek) {
      if (val == FromToDate.fromDate) {
        return DateTime.now()
            .add(
              Duration(
                days: (DateTime.daysPerWeek - DateTime.now().weekday) + 1,
              ),
            )
            .dateOnly;
      } else {
        return DateTime.now()
            .add(
              const Duration(
                days: DateTime.daysPerWeek,
              ),
            )
            .dateOnly;
      }
    } else {
      return DateTime.now().dateOnly;
    }
  }

  void searchCommentFilter(String searchComment) {
    liveloadsSearchValue = searchComment;
    if (allData.isNotEmpty && searchComment.isNotEmpty) {
      _data.value = allData
          .where(
            (element) =>
                element.type.toLowerCase().contains(searchComment) ||
                element.haulierName.toLowerCase().contains(searchComment) ||
                element.jobNumber.toString().contains(searchComment) ||
                element.customerLocation.toLowerCase().contains(searchComment),
          )
          .toList();
    }
  }

  void filterByStatus(String status) {
    if (_data.value.isNotEmpty && status.isNotEmpty) {
      _data.value = _data.value
          .where(
            (element) =>
                element.status.contains(status) ||
                (status == context.l10n.yardLiveLoadsStatusInProgress &&
                    element.status.toLowerCase().contains(
                          LiveLoadsStatus.inProgress.name.toLowerCase(),
                        )) ||
                (status == context.l10n.yardLiveLoadsStatusOnRoute &&
                    element.status.toLowerCase().contains(
                          LiveLoadsStatus.onRoute.name.toLowerCase(),
                        )) ||
                (status == context.l10n.yardLiveLoadsStatusOnSite &&
                    element.status
                        .toLowerCase()
                        .contains(LiveLoadsStatus.onSite.name.toLowerCase())) ||
                status == context.l10n.yardLiveLoadsStatusAny,
          )
          .toList();
    }
  }

  Future<void> quickFilter() async {
    if (viewCardFilterValue.value.isNotEmpty) {
      _data.value = allData
          .where(
            (element) =>
                (viewCardFilterValue.value ==
                        context.l10n.yardLiveLoadsStatusPlanned &&
                    element.status !=
                        context.l10n.yardLiveLoadsStatusRequested) ||
                (viewCardFilterValue.value ==
                        context.l10n.yardLiveLoadsStatusOnSite &&
                    element.status ==
                        context.l10n.yardLiveLoadsStatusInProgress) ||
                (viewCardFilterValue.value ==
                        context.l10n.yardLiveLoadsStatusOnRoute &&
                    element.status == viewCardFilterValue.value) ||
                (viewCardFilterValue.value ==
                        context.l10n.yardLiveLoadsStatusInBound &&
                    element.direction == context.l10n.yardLiveLoadsStatusIn &&
                    element.status !=
                        context.l10n.yardLiveLoadsStatusCompleted &&
                    element.status !=
                        context.l10n.yardLiveLoadsStatusAbandoned &&
                    element.status !=
                        context.l10n.yardLiveLoadsStatusRequested) ||
                (viewCardFilterValue.value ==
                        context.l10n.yardLiveLoadsStatusOutBound &&
                    element.direction == context.l10n.yardLiveLoadsStatusOut &&
                    element.status !=
                        context.l10n.yardLiveLoadsStatusCompleted &&
                    element.status !=
                        context.l10n.yardLiveLoadsStatusAbandoned &&
                    element.status !=
                        context.l10n.yardLiveLoadsStatusRequested),
          )
          .toList();
    }
    final filters = await filterController.getCurrentFilters();
    if (filters != null) {
      if (filters.status != null && filters.status!.isNotEmpty) {
        filterByStatus(filters.status!);
      }
      if (filters.search != null && filters.search!.isNotEmpty) {
        searchCommentFilter(filters.search!.toLowerCase());
      }
    }
  }

  Future<void> getLiveLoads(
    BaseClient client,
    AppConfig config,
    LiveLoadsFilterModel filterModel,
  ) async {
    final response =
        await LiveLoadsRepository.getLiveLoads(client, config, filterModel)
            .catchError((Object err) {
      busy.value = false;
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(err.toString()),
            backgroundColor: Colors.red,
          ),
        );
      }
      return Future.value(<LiveLoadsModel>[]);
    });
    allData = response;
    busy.value = false;
  }

  Future<Uint8List?> getPrintData(BaseClient client, AppConfig config) async {
    final filters = await filterController.getCurrentFilters();
    if (filters != null) {
      if (filters.yard != null) {
        final startDate = filters.startDate.dateOnly ??
            getFromOrToDate(
              FromToDate.fromDate,
            );

        final endDate = filters.endDate.dateOnly ??
            getFromOrToDate(
              FromToDate.toDate,
            );
        if (_data.value.isNotEmpty) {
          final request = LiveLoadsPrintWrapModel(
            yard: filters.yard!,
            fromDate: startDate.toIso8601date,
            toDate: endDate.toIso8601date,
            liveLoadsList: _data.value
                .map(
                  (e) => LiveLoadsPrintModel(
                    date: e.scheduledDate.toIso8601date,
                    direction: e.direction,
                    job: e.jobNumber.toString(),
                    status: e.status,
                    haulier: e.haulierName,
                    customer: e.customerLocation,
                    planned: e.planned.toString(),
                    actual: e.actual.toString(),
                    remaining: e.remaining.toString(),
                    instructions: e.instruction.toString(),
                  ),
                )
                .toList(),
          );
          return LiveLoadsRepository.printLiveLoads(
            client,
            config,
            request,
          );
        }
      }
    }
    return null;
  }
}
