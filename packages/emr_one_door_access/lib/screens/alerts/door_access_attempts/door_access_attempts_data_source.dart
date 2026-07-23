import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_door_access/emr_one_door_access.dart';
import 'package:flutter/material.dart';

class DoorAccessAttemptsDataSource
    extends EmrQueryGraphQLDataSource<DoorAccessAttemptEvent> {
  DoorAccessAttemptsDataSource({required this.doorAccessService});
  final DoorAccessService doorAccessService;

  late final ValueNotifier<DateTime?> fromDate = ValueNotifier(
    DateTime.now().startOfPreviousMonth(),
  );
  late final ValueNotifier<DateTime?> toDate = ValueNotifier(DateTime.now());

  bool withSnapshots = false;

  @override
  bool get supportsFacets => false;

  @override
  Future<void> refresh() async {
    loading.value = true;
    StaticData.ignoreCache = true;
    await onRefresh.call();
    try {
      final results = withSnapshots
          ? await doorAccessService.accessControllersService
                .searchDoorAccessAttemptSnapshots(
                  input: getSearchInput(),
                  after: after,
                  before: before,
                  first: first,
                  last: last,
                )
          : await doorAccessService.accessControllersService
                .searchDoorAccessAttempts(
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

  Input$SearchDoorAccessAttemptsInput getSearchInput() {
    return Input$SearchDoorAccessAttemptsInput(
      query: queryScope.query.replaceAll('+', ''),
      userIds:
          _getStringFilterList(DoorAccessAttemptsFilterController.kUser) ?? [],
      siteIds:
          _getStringFilterList(DoorAccessAttemptsFilterController.kSite) ?? [],
      accessControllerIds:
          _getStringFilterList(
            DoorAccessAttemptsFilterController.kAccessController,
          ) ??
          [],
      eventType:
          (_getStringFilterList(
                    DoorAccessAttemptsFilterController.kEventType,
                  ) ??
                  [])
              .firstOrNull,
      from: fromDate.value,
      to: toDate.value,
    );
  }
}
