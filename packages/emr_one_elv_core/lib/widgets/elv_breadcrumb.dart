import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';

class ElvBreadCrumb extends StatelessWidget {
  const ElvBreadCrumb({required this.headings, super.key});

  final List<String> headings;

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(
        vertical: Insets.gutter / 2,
        horizontal: Insets.gutter,
      ),
      child: EmrBreadCrumb(),
    );
  }
}
