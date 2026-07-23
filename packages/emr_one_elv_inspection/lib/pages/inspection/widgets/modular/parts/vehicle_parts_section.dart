import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';

class VehiclePartsSection extends StatelessWidget {
  const VehiclePartsSection({required this.children, super.key});

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(Insets.gutter),
          child: Text(
            '${context.l10n.vehicle} ${context.l10n.parts}',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: children
              .map(
                (e) => Padding(
                  padding: const EdgeInsets.all(
                    Insets.gutter,
                  ),
                  child: e,
                ),
              )
              .toList(),
        ),
      ],
    );
  }
}
