import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_transport/data/models/common/enum.dart';
import 'package:flutter/material.dart';

class JobTypeBox extends StatelessWidget {
  const JobTypeBox({required this.jobType, super.key});
  final JobType jobType;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Theme.of(context).colorScheme.onSurface),
        color: Colors.white,
        borderRadius: BorderRadius.circular(3),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: Insets.gutter / 8),
        child: Text(
          jobType.abbreviation,
          maxLines: 1,
          style: Theme.of(context).textTheme.labelMedium!.copyWith(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
