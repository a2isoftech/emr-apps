import 'package:emr_one_transport/data/models/scheduler/job_base.dart';
import 'package:flutter/material.dart';

class TabHoverTarget extends StatelessWidget {
  const TabHoverTarget({
    required this.label,
    required this.index,
    required this.controller,
    super.key,
  });
  final String label;
  final int index;
  final TabController controller;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            decoration: const BoxDecoration(
              border: Border(
                right: BorderSide(color: Colors.grey, width: 0.5),
                left: BorderSide(color: Colors.grey, width: 0.5),
              ),
            ),
            child: Tab(
              height: 28,
              child: DragTarget<JobBase>(
                onWillAcceptWithDetails: (_) => false,
                onMove: (_) {
                  if (controller.index != index) controller.index = index;
                },
                builder: (_, candidate, __) => Text(
                  label,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
