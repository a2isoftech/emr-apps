import 'package:emr_one_theme/emr_one_theme.dart';
import 'package:flutter/material.dart';

class LocationHeader extends StatelessWidget {
  const LocationHeader({
    required this.title,
    super.key,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Material(
      color:
          Theme.of(context).extension<EOBrandTheme>()!.appBarBackgroundColour,
      child: SizedBox(
        height: 50,
        child: Center(
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
              color: Theme.of(context).colorScheme.onPrimary,
            ),
          ),
        ),
      ),
    );
  }
}
