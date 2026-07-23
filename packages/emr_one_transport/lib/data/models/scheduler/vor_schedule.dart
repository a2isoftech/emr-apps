import 'package:json_annotation/json_annotation.dart';

part 'vor_schedule.g.dart';

@JsonSerializable(fieldRename: FieldRename.none)
class VorSchedule {
  VorSchedule({
    required this.startDateTime,
    required this.endDateTime,
    required this.reason,
    required this.notes,
  });

  factory VorSchedule.fromJson(Map<String, dynamic> json) =>
      _$VorScheduleFromJson(json);

  // Lazily compute and cache the number of slots the VOR occupies on scheduler
  int get durationSlots {
    _durationSlots ??=
        ((endDateTime.difference(startDateTime).inMinutes) / 15).ceil();
    return _durationSlots!;
  }

  // Calculate the starting slot index based on midnight (12:00 AM)
  int get startIndex {
    if (_startIndex == null) {
      final scheduledMinutes = startDateTime.toLocal().hour * 60 +
          startDateTime.toLocal().minute +
          15;
      _startIndex = scheduledMinutes ~/ 15; // Each slot is 15 minutes
    }
    return _startIndex!;
  }

  VorSchedule copyWith({
    DateTime? startDateTime,
    DateTime? endDateTime,
    String? reason,
    String? notes,
  }) {
    return VorSchedule(
      startDateTime: startDateTime ?? this.startDateTime,
      endDateTime: endDateTime ?? this.endDateTime,
      reason: reason ?? this.reason,
      notes: notes ?? this.notes,
    );
  }

  Map<String, dynamic> toJson() => _$VorScheduleToJson(this);
  final DateTime startDateTime;
  final DateTime endDateTime;
  final String reason;
  final String notes;
  int? _durationSlots;
  int? _startIndex;
}
