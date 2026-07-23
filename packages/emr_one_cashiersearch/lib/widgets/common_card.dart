import 'package:emr_one_core/eo_constants.dart';
import 'package:flutter/material.dart';

class CommonCard extends StatelessWidget {
  const CommonCard({
    required this.body,
    required this.footer,
    super.key,
    this.titleSideWidget,
  });
  final Widget? titleSideWidget;
  final Widget body;
  final List<Widget> footer;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        body,
        const Padding(
          padding: EdgeInsets.symmetric(vertical: Insets.gutter),
          child: Divider(
            thickness: 1,
            height: 1,
          ),
        ),
        ...footer,
      ],
    );
  }
}
