import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_door_access/emr_one_door_access.dart';
import 'package:flutter/material.dart';

class ScheduleUpdatesDataSource
    extends EmrQueryGraphQLDataSource<ScheduleUpdateEvent> {
  ScheduleUpdatesDataSource({required this.doorAccessService});
  final DoorAccessService doorAccessService;

  late final ValueNotifier<DateTime?> fromDate = ValueNotifier(
    DateTime.now().startOfPreviousMonth(),
  );
  late final ValueNotifier<DateTime?> toDate = ValueNotifier(DateTime.now());

  @override
  bool get supportsFacets => false;

  @override
  Future<void> refresh() async {
    loading.value = true;
    await onRefresh.call();
    try {
      final results = await doorAccessService.accessControllersService
          .searchScheduleUpdates(
            input: getSearchInput(),
            after: after,
            before: before,
            first: first,
            last: last,
          );

      recordCount = results.totalCount;
      pageInfo = results.pageInfo;
      data.value = results.data;
    } finally {
      loading.value = false;
    }
  }

  List<String>? _getStringFilterList(String key) =>
      (queryScope.filters[key] as List<String?>?)?.whereType<String>().toList();

  Input$SearchScheduleUpdateInput getSearchInput() {
    return Input$SearchScheduleUpdateInput(
      query: queryScope.query.replaceAll('+', ''),
      siteIds:
          _getStringFilterList(ScheduleUpdatesFilterController.kSite) ?? [],
      accessControllerIds:
          _getStringFilterList(
            ScheduleUpdatesFilterController.kAccessController,
          ) ??
          [],
      from: fromDate.value,
      to: toDate.value,
    );
  }
}
