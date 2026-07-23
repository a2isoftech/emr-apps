import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';

class ElvTab extends StatelessWidget {
  const ElvTab({
    required this.heading,
    required this.onTap,
    required this.selected,
    super.key,
  });

  final String heading;
  final void Function() onTap;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              bottom: Insets.gutter / 2,
            ),
            child: Text(
              heading,
              style: EmrOneConstants.kBannerTextStyle.copyWith(fontSize: 16),
            ),
          ),
          Container(
            height: 5,
            width: 150,
            color: selected ? Colors.green : null,
          ),
        ],
      ),
    );
  }
}
