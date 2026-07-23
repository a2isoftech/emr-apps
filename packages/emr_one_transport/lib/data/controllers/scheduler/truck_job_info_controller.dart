import 'package:emr_one_transport/data/models/vor/vor_schedule.dart';
import 'package:emr_one_transport/data/services/vor_service.dart';
import 'package:flutter/foundation.dart';

class TruckJobInfoController extends ChangeNotifier {
  TruckJobInfoController(this.vorService);
  final VORService vorService;

  List<VORSchedule> vorSchedules = [];
  DateTime _selectedDate = DateTime.now();

  DateTime get _selectedLocalDay => _toLocalDateOnly(_selectedDate);

  DateTime _toLocalDateOnly(DateTime value) {
    final local = value.toLocal();
    return DateTime(local.year, local.month, local.day);
  }

  List<VORSchedule> get activeVorOnDate => vorSchedules.where((v) {
    final start = v.startDateTime;
    final end = v.endDateTime;
    if (start == null) return false;
    final day = _selectedLocalDay;
    final startDay = _toLocalDateOnly(start);
    final endDay = end != null ? _toLocalDateOnly(end) : null;
    return !startDay.isAfter(day) && (endDay == null || !endDay.isBefore(day));
  }).toList();

  List<VORSchedule> get futureVors => vorSchedules.where((v) {
    final start = v.startDateTime;
    if (start == null) return false;
    final day = _selectedLocalDay;
    final startDay = _toLocalDateOnly(start);
    return startDay.isAfter(day);
  }).toList()..sort((a, b) => a.startDateTime!.compareTo(b.startDateTime!));

  Future<void> _fetchVorSchedules(String vrm, DateTime startDate) async {
    final utcStartOfDay = DateTime(
      startDate.year,
      startDate.month,
      startDate.day,
    ).toUtc();
    final vorResponse = await vorService.getVORSchedulesByDate(
      vrm,
      utcStartOfDay,
      15,
    );
    vorSchedules = vorResponse.data ?? [];
  }

  Future<void> initialize(String vrm, DateTime startDate) async {
    _selectedDate = startDate;
    await Future.wait([_fetchVorSchedules(vrm, startDate)]);

    notifyListeners();
  }
}
