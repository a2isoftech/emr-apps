import 'package:emr_flutter_theme/emr_flutter_theme.dart';
import 'package:flutter/material.dart';

class InspectionAddIcon extends StatelessWidget {
  const InspectionAddIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircleAvatar(
        backgroundColor: EmrColours.primaryWhite,
        radius: 20,
        child: CircleAvatar(
          backgroundColor: EmrColours.primaryBlue,
          radius: 18,
          child: Center(
            child: Icon(
              Icons.add,
              color: EmrColours.primaryWhite,
            ),
          ),
        ),
      ),
    );
  }
}
