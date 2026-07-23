import 'package:emr_flutter_theme/emr_flutter_theme.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';

class HeaderField extends StatelessWidget {
  const HeaderField({
    required this.title,
    required this.value,
    super.key,
  });
  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(Insets.gutter),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(color: EmrColours.primaryWhite),
          ),
          Text(
            value,
            style: const TextStyle(
              color: EmrColours.primaryWhite,
              fontSize: 24,
            ),
          ),
        ],
      ),
    );
  }
}
