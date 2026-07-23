import 'package:emr_one_transport/data/models/scheduler/unscheduled_job.dart';
import 'package:emr_one_transport/presentation/shared_widgets/scheduler/unscheduled_job_card.dart';
import 'package:flutter/material.dart';

class DraggableJobCard extends StatelessWidget {
  const DraggableJobCard(this.unscheduledJob, {super.key});
  final UnscheduledJob unscheduledJob;

  @override
  Widget build(BuildContext context) {
    return Draggable<UnscheduledJob>(
      data: unscheduledJob,
      feedback: Opacity(
        opacity: 0.9,
        child: Material(
          child: UnscheduledJobCard(
            unscheduledJob: unscheduledJob,
          ),
        ),
      ),
      childWhenDragging: UnscheduledJobCard(
        unscheduledJob: unscheduledJob,
      ),
      child: Material(
        child: MouseRegion(
          cursor: SystemMouseCursors.move,
          child: UnscheduledJobCard(
            unscheduledJob: unscheduledJob,
          ),
        ),
      ),
    );
  }
}
