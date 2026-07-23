import 'package:emr_flutter_theme/emr_flutter_theme.dart';
import 'package:flutter/material.dart';

class InspectionProbabilityWidget extends StatelessWidget {
  const InspectionProbabilityWidget({this.value = 0, super.key});
  final int value;
  @override
  Widget build(BuildContext context) {
    Color color;
    if (value <= 100 && value >= 76) {
      color = EmrColours.primaryGreen;
    } else if (value <= 74 && value >= 51) {
      color = EmrColours.secondaryYellow;
    } else {
      color = EmrColours.secondaryRed;
    }
    return Text(
      '$value%',
      style: Theme.of(context)
          .textTheme
          .bodyMedium!
          .copyWith(color: color, fontWeight: FontWeight.bold),
    );
  }
}
