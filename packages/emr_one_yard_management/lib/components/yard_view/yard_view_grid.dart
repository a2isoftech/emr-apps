import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_yard_management/components/yard_view/yard_view_filter_controller.dart';
import 'package:flutter/material.dart';

class YardViewGrid extends StatelessWidget {
  const YardViewGrid({required this.filterController, super.key});

  static const double headerHeight = 40;
  final YardViewFilterController filterController;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        maxHeight: MediaQuery.of(context).size.height -
            (YardViewGrid.headerHeight + (2 * Insets.gutter)) -
            (100 + 8) /*filter height*/,
      ),
      padding: const EdgeInsets.all(Insets.gutter),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(Insets.gutter),
            child: EmrFilter(controller: filterController),
          ),
        ],
      ),
    );
  }
}
