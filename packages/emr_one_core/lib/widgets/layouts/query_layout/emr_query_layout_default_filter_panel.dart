import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';

class EmrQueryLayoutDefaultFilterPanel<T> extends StatelessWidget {
  const EmrQueryLayoutDefaultFilterPanel({required this.controller, super.key});

  final EmrQueryLayoutController<T> controller;

  @override
  Widget build(BuildContext context) => EmrFilter(
        controller: controller.filterController!,
        padding: const EdgeInsets.only(
          right: Insets.gutter,
        ),
        innerPadding: const EdgeInsets.only(
          left: Insets.gutter,
        ),
      );
}
