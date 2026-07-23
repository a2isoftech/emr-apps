import 'package:emr_one_core/eo_constants.dart';
import 'package:flutter/material.dart';

class PartyHeader extends StatelessWidget {
  const PartyHeader({
    required this.party,
    super.key,
  });

  final String party;

  @override
  Widget build(BuildContext context) => Row(
        children: [
          Text(
            party,
            style: EmrOneConstants.kLargeHeadingTextStyle,
          ),
        ],
      );
}
