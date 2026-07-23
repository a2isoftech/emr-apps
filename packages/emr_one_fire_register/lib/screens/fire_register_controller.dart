import 'dart:collection';
import 'dart:convert';
import 'dart:io' as io;

import 'package:collection/collection.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_fire_register/constants/constants.dart';
import 'package:emr_one_fire_register/models/models.dart';
import 'package:emr_one_fire_register/screens/fire_register_filter_controller.dart';
import 'package:emr_one_fire_register/services/fire_register_service.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class FireRegisterController {
  FireRegisterController({
    required this.fireRegisterService,
    required this.filterController,
    required this.userInfoService,
    required this.exportDataService,
    required this.searchController,
  }) {
    filterController.filters.addListener(refreshData);
  }

  final UserInfoService userInfoService;
  final ExportDataService exportDataService;
  final FireRegisterService fireRegisterService;
  final TextEditingController searchController;
  final ValueNotifier<List<PunchEvent>> _data = ValueNotifier([]);
  final ValueNotifier<List<FireRollCallLog>> _frcData = ValueNotifier([]);
  final ValueNotifier<List<MissingFromRollCall>> _mfrcData = ValueNotifier([]);
  final ValueNotifier<List<PunchEvent>> _manually = ValueNotifier([]);
  final ValueNotifier<FrcTab> frcTab = ValueNotifier(FrcTab.punches);
  final ValueNotifier<bool> isFRCLoggedPunches = ValueNotifier(false);
  HashSet<PunchEvent> selectedRows = HashSet<PunchEvent>.identity();
  HashSet<MissingFromRollCall> selectedMissingFrcRows =
      HashSet<MissingFromRollCall>.identity();

  final FireRegisterFilterController filterController;
  late EmrGridController<FireRollCallLog> fireRollCallGridController =
      EmrGridController(data: _frcData, showLoader: busy);
  late EmrGridController<PunchEvent> gridController = EmrGridController(
    data: _data,
    showLoader: busy,
  );
  late EmrGridController<MissingFromRollCall> missingFromMusterGridController =
      EmrGridController(data: _mfrcData, showLoader: busy);
  List<PunchEvent> localData = [];
  List<FireRollCallLog> localFRCData = [];
  List<MissingFromRollCall> localMissingFRCData = [];

  final _debounceableSearch = Debounceable<List<PunchEvent>>();

  ValueNotifier<bool> busy = ValueNotifier(false);
  DateTime lastDate = DateTime.now();
  String lastYard = '';
  String lastArea = '';
  bool? sortGridAsc;

  void dispose() {
    filterController.filters.removeListener(refreshData);

    _debounceableSearch.dispose();
  }

  /// Loads the filter data when the screen is first loaded.
  Future<bool> loadFilterData() async {
    final results = await fireRegisterService.getPunchDevices();

    // See if there's at least one device with the default yard code - if so
    // pre-select the filters.
    if (results.any(
      (result) =>
          result.yardCode.toUpperCase() == filterController.selectedYard,
    )) {
      // Pre-select the area if there's only one for the yard.
      final areas = results
          .where((result) => result.yardCode == filterController.selectedYard)
          .map((device) => device.deviceAreas)
          .expand((e) => e)
          .toList();

      if (areas.length == 1) {
        final areaFilter = filterController.tryGetFilter<String>(
          key: FireRegisterFilterController.kArea,
        )!;

        filterController.addOrUpdateFilter<String>(
          filter: areaFilter,
          text: areas.first.areaName,
          value: areas.first.areaName,
        );

        lastArea = areaFilter.value ?? '';

        //Pre-select zone if the only area has one zone
        if (areas.first.areaZones.length == 1) {
          final zoneFilter = filterController.tryGetFilter<String>(
            key: FireRegisterFilterController.kZone,
          )!;

          filterController.addOrUpdateFilter<String>(
            filter: zoneFilter,
            text: areas.first.areaZones.first.zoneName,
            value: areas.first.areaZones.first.zoneName,
          );

          await refreshData();
        }
      }
    }

    return results.isNotEmpty;
  }

  void searchInGrid(String pattern, {FrcTab frcTab = FrcTab.punches}) {
    busy.value = true;
    switch (frcTab) {
      case FrcTab.punches:
        if (localData.isEmpty) {
          localData = _data.value;
        }
        if (pattern.isNotEmpty) {
          _data.value = localData
              .where(
                (element) => element.subjectName.toLowerCase().contains(
                  pattern.toLowerCase(),
                ),
              )
              .toList();
        } else {
          _data.value = localData;
          localData = [];
        }
      case FrcTab.fireRollCallLogs:
        if (localFRCData.isEmpty) {
          localFRCData = _frcData.value;
        }
        if (pattern.isNotEmpty) {
          _frcData.value = localFRCData
              .where(
                (element) => element.loggedBy.toLowerCase().contains(
                  pattern.toLowerCase(),
                ),
              )
              .toList();
        } else {
          _frcData.value = localFRCData;
          localFRCData = [];
        }
      case FrcTab.missingFromMusterPoint:
        if (localMissingFRCData.isEmpty) {
          localMissingFRCData = _mfrcData.value;
        }
        if (pattern.isNotEmpty) {
          _mfrcData.value = localMissingFRCData
              .where(
                (element) => element.subjectName.toLowerCase().contains(
                  pattern.toLowerCase(),
                ),
              )
              .toList();
        } else {
          _mfrcData.value = localMissingFRCData;
          localMissingFRCData = [];
        }
    }
    busy.value = false;
  }

  void sortGrid({FrcTab frcTab = FrcTab.punches}) {
    busy.value = true;
    switch (frcTab) {
      case FrcTab.punches:
        final datainGrid = _data.value;
        if (sortGridAsc != null && sortGridAsc! == true) {
          datainGrid.sort((a, b) => a.subjectName.compareTo(b.subjectName));
        } else {
          datainGrid.sort((a, b) => b.subjectName.compareTo(a.subjectName));
        }

        _data.value = datainGrid;
      case FrcTab.fireRollCallLogs:
        final datainGrid = _frcData.value;
        if (sortGridAsc != null && sortGridAsc! == true) {
          datainGrid.sort((a, b) => a.loggedBy.compareTo(b.loggedBy));
        } else {
          datainGrid.sort((a, b) => b.loggedBy.compareTo(a.loggedBy));
        }
        _frcData.value = datainGrid;

      case FrcTab.missingFromMusterPoint:
    }
    sortGridAsc = !(sortGridAsc ?? false);
    busy.value = false;
  }

  Future<void> _refreshGridData() async {
    await _debounceableSearch.call(
      () async {
        busy.value = true;

        // Make sure both filters are set.
        final area = filterController
            .tryGetFilter<String>(key: FireRegisterFilterController.kArea)
            ?.value;

        final zone = filterController
            .tryGetFilter<String>(key: FireRegisterFilterController.kZone)
            ?.value;

        final date = filterController
            .tryGetFilter<DateTime>(key: FireRegisterFilterController.kDate)!
            .value!;

        final type = filterController
            .tryGetFilter<String>(key: FireRegisterFilterController.kOnSite)!
            .value!;

        final userType =
            filterController
                .tryGetFilter<String>(key: FireRegisterFilterController.kType)
                ?.value ??
            StringConstants.allUserTypes;

        if (area == null || zone == null) {
          return Future.value(<PunchEvent>[..._manually.value]);
        }
        if (lastDate != date || lastYard != filterController.selectedYard) {
          isFRCLoggedPunches.value = false;
          _manually.value = [];
          selectedRows = HashSet<PunchEvent>.identity();
        }

        //Reset searchbar local data
        localData = [];
        lastDate = date;
        lastYard = filterController.selectedYard;
        lastArea = area;
        final punches = await fireRegisterService.getFireRegisterPunchEvents(
          yardCode: filterController.selectedYard,
          zone: zone,
          area: area,
          date: DateTime.utc(date.year, date.month, date.day),
        );
        if (userType != StringConstants.allUserTypes) {
          punches.removeWhere(
            (element) => element.subjectType != int.parse(userType),
          );
        }
        punches.sort((a, b) => a.subjectName.compareTo(b.subjectName));
        if (type.isNotEmpty &&
            punches.isNotEmpty &&
            type != StringConstants.all) {
          final punchList = <PunchEvent>[];
          punches.groupListsBy((element) => element.badgeNo).forEach((
            key,
            value,
          ) {
            value.sort((a, b) => b.punchTime.compareTo(a.punchTime));
            final lastPunch = value.first;
            if (type == StringConstants.onSite &&
                (lastPunch.punchType == PunchTypeConstants.clockIn ||
                    lastPunch.punchType == PunchTypeConstants.enterSite)) {
              punchList.add(lastPunch);
            } else if (type == StringConstants.offSite &&
                (lastPunch.punchType == PunchTypeConstants.clockOut ||
                    lastPunch.punchType == PunchTypeConstants.leaveSite)) {
              punchList.add(lastPunch);
            }
          });

          return _updateManualEntries(punchList, userType);
        }

        return _updateManualEntries(punches, userType);
      },
      onDebounced: () {
        busy.value = false;
      },
      then: (values) {
        _data.value = values;
        busy.value = false;
        sortGridAsc = null;
        searchInGrid(searchController.text);
      },
    );
  }

  void addSelectedUser(PunchEvent punchEvent) {
    busy.value = true;
    _manually.value.add(punchEvent);
    _data.value.add(punchEvent);
    busy.value = false;
  }

  void updateGridData(PunchEvent punch) {
    final index = _data.value.indexWhere((element) => element.id == punch.id);
    _data.value[index].note = punch.note;
    if (punch.punchType != PunchTypeConstants.manual) {
      fireRegisterService.updateNote(punch.id, punch.note ?? '');
    }
  }

  List<PunchEvent> _updateManualEntries(
    List<PunchEvent> currentData,
    String userFilter,
  ) {
    if (_manually.value.isNotEmpty) {
      if (userFilter != StringConstants.allUserTypes) {
        currentData.addAll(
          _manually.value.where(
            (element) => element.subjectType == int.parse(userFilter),
          ),
        );
      } else {
        currentData.addAll(_manually.value);
      }
    }
    return currentData;
  }

  CurrentFilters getFilterValue() {
    final area = filterController
        .tryGetFilter<String>(key: FireRegisterFilterController.kArea)
        ?.value;
    final zone = filterController
        .tryGetFilter<String>(key: FireRegisterFilterController.kZone)
        ?.value;
    final date = filterController
        .tryGetFilter<DateTime>(key: FireRegisterFilterController.kDate)!
        .value!
        .toString();
    return CurrentFilters(zone: zone ?? '', date: date, area: area ?? '');
  }

  ConfimrBtn confirmBtnType() {
    if (gridController.data.value.isNotEmpty &&
        frcTab.value == FrcTab.punches &&
        !isFRCLoggedPunches.value &&
        onSiteSelected()) {
      return ConfimrBtn.rollCall;
    }
    if (frcTab.value == FrcTab.missingFromMusterPoint &&
        missingFromMusterGridController.data.value.isNotEmpty) {
      return ConfimrBtn.missingList;
    }

    return ConfimrBtn.hide;
  }

  bool showRefresh() {
    if ((filterController.filtersSelected &&
            frcTab.value == FrcTab.punches &&
            (gridController.data.value.isNotEmpty ||
                isFRCLoggedPunches.value)) ||
        (frcTab.value == FrcTab.missingFromMusterPoint)) {
      return true;
    }

    return false;
  }

  bool onSiteSelected() {
    final onSiteFilter = filterController
        .tryGetFilter<String>(key: FireRegisterFilterController.kOnSite)
        ?.value;

    return onSiteFilter == StringConstants.onSite;
  }

  Future<String?> exportToCsv(String permissionErrorMsg) async {
    final date = filterController
        .tryGetFilter<DateTime>(key: FireRegisterFilterController.kDate)!
        .value!;

    const header =
        // ignore: lines_longer_than_80_chars
        '"Present","Name","Badge Number","Punch Time","Punch Type","Type","Note","Visitor Host"';

    final excelDataRows = _data.value.map<String>((PunchEvent punchEvent) {
      return '"${selectedRows.map((punch) => punch.id).contains(punchEvent.id) 
          ? 'Present' : 'Absent'}",'
          '"${punchEvent.subjectName}",'
          '"${punchEvent.badgeNo}",'
          '"${DateFormat.Hm().format(punchEvent.punchTime)}",'
          '"${punchType(punchEvent.punchType)}",'
          '"${punchEvent.subjectType == SubjectType.employee.index
          ? 'Staff' : 'Visitor'}",'
          '"${punchEvent.note ?? ''}",'
          '"${punchEvent.visitorHost ?? ''}"';
    }).toList();

    final bytes = utf8.encode([header, ...excelDataRows].join('\n'));

    final filename =
        'FireRollCallReport_'
        '${DateFormat('dd_MM_yyyy').format(date)}.csv';

    if (kIsWeb) {
      await exportDataService.downloadFileWeb(data: bytes, fileName: filename);

      return null;
    } else {
      if (!(await exportDataService.isStoragePermissionGranted())) {
        throw Exception(permissionErrorMsg);
      }

      final fileLocation = await exportDataService.getFileName(filename);

      await io.File(fileLocation).writeAsBytes(bytes);

      return fileLocation;
    }
  }

  String punchType(int punchType) {
    switch (punchType) {
      case PunchTypeConstants.clockIn:
        return 'Clock In';
      case PunchTypeConstants.clockOut:
        return 'Clock Out';
      case PunchTypeConstants.enterSite:
        return 'Enter Site';
      case PunchTypeConstants.leaveSite:
        return 'Leave Site';
      case PunchTypeConstants.manual:
        return 'Manual';
    }
    return '';
  }

  Future<void> getFrcLogs() async {
    busy.value = true;
    final currentFilters = getFilterValue();
    try {
      _frcData.value = await fireRegisterService.getFireRollCallLogs(
        yardCode: filterController.selectedYard,
        area: currentFilters.area,
        zone: currentFilters.zone,
        date: currentFilters.date,
      );
      busy.value = false;
    } catch (e) {
      _frcData.value = [];
      busy.value = false;
    }
  }

  Future<void> loadFrcLogPunchEvents(FireRollCallLog frcLog) async {
    busy.value = true;
    for (final punchEvent in frcLog.punchData) {
      final index = _data.value.indexWhere((e) => e.id == punchEvent.id);
      //When staff or visitor with registered punch event
      if (index != -1) {
        _data.value[index] = punchEvent;
      }
      //When name from fire roll call was added manually
      else {
        _data.value.add(punchEvent);
        _manually.value.add(punchEvent);
      }
      selectedRows.add(_data.value.firstWhere((e) => e == punchEvent));
      await _refreshGridData();
      //Need to reset busy value to keep continuous loading screen
      busy.value = true;
    }
  }

  Future<void> refreshData({FrcTab? tabToRefresh}) async {
    final tab = tabToRefresh ?? frcTab.value;

    //Reset zone when area is changed
    final currentFilters = getFilterValue();
    if (currentFilters.area != lastArea) {
      lastArea = currentFilters.area;

      if (currentFilters.zone != StringConstants.all) {
        final zone = filterController.tryGetFilter<String>(
          key: FireRegisterFilterController.kZone,
        )!;

        filterController.addOrUpdateFilter<String>(
          filter: zone,
          text: StringConstants.all,
          value: StringConstants.all,
        );
      }
    }
    switch (tab) {
      case FrcTab.fireRollCallLogs:
        await getFrcLogs();
      case FrcTab.punches:
        await _refreshGridData();
      case FrcTab.missingFromMusterPoint:
        await getMissingEmployees();
    }
  }

  Future<void> refreshGrid() async {
    busy.value = true;
    if (frcTab.value == FrcTab.punches) {
      selectedRows.clear();
      isFRCLoggedPunches.value = false;
    } else if (frcTab.value == FrcTab.missingFromMusterPoint) {
      selectedMissingFrcRows.clear();
    }

    await refreshData();

    busy.value = false;
  }

  Future<void> reset(FrcTab tabToRefresh) async {
    selectedRows.clear();
    selectedMissingFrcRows.clear();
    isFRCLoggedPunches.value = false;
    await refreshData(tabToRefresh: tabToRefresh);
  }

  bool gridIsEmpty() {
    switch (frcTab.value) {
      case FrcTab.punches:
        return gridController.data.value.isEmpty;
      case FrcTab.fireRollCallLogs:
        return fireRollCallGridController.data.value.isEmpty;
      case FrcTab.missingFromMusterPoint:
        return missingFromMusterGridController.data.value.isEmpty;
    }
  }

  Future<void> getMissingEmployees() async {
    busy.value = true;
    final currentFilters = getFilterValue();
    try {
      _mfrcData.value = await fireRegisterService.getMissingEmployees(
        yardCode: filterController.selectedYard,
        date: currentFilters.dateAsUtc(),
      );
      busy.value = false;
    } catch (e) {
      _frcData.value = [];
      busy.value = false;
    }
  }

  List<PunchEvent> getUnselectedRows() {
    return _data.value
        .whereNot(
          (punch) => selectedRows.any((selected) => selected.id == punch.id),
        )
        .toList();
  }
}
