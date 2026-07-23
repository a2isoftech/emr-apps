import 'package:emr_one_transport/data/models/jobs/driver_event.dart';

class JobDelay {
  JobDelay({
    this.id,
    this.selectedDelayCode,
    this.startedDateTime,
    this.endDateTime,
    this.comment,
    this.active = true,
    this.isInProgress,
  });

  factory JobDelay.fromEvent(DriverEvent event, {required bool isInProgress}) {
    return JobDelay(
      id: event.eventId,
      selectedDelayCode: event.subType,
      startedDateTime: event.started!.toLocal(),
      endDateTime: event.ended?.toLocal(),
      comment: event.comments,
      isInProgress: isInProgress,
    );
  }

  String? id;
  String? selectedDelayCode;
  DateTime? startedDateTime;
  DateTime? endDateTime;
  String? comment;
  bool active;
  bool? isInProgress;
}
