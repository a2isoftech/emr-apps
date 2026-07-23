import 'package:emr_one_core/widgets/chips/emr_status_chip.dart';

class HistoryTimelineModel {
  HistoryTimelineModel({
    required this.title,
    this.dateTime,
    this.userName,
    this.subtitle,
    this.comments,
    this.statusType = StatusType.information,
  });

  final DateTime? dateTime;
  final String title;
  final String? userName;
  final String? subtitle;
  final String? comments;
  final StatusType statusType;

  bool get isCompleted =>
      dateTime != null && dateTime!.isBefore(DateTime.now());
}
