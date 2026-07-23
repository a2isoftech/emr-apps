import 'package:emr_core_api/graphql/queries/yard_app/yard_app.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';

class LocationHeaderDetails extends StatelessWidget {
  const LocationHeaderDetails({
    required this.location,
    required this.yardCode,
    super.key,
  });

  final Query$Location$inventoryLocation location;
  final String yardCode;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Theme.of(context).primaryColor,
      child: Padding(
        padding: const EdgeInsets.all(Insets.gutter),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    location.code,
                    style: Theme.of(context).primaryTextTheme.headlineSmall,
                  ),
                  const SizedBox(height: Insets.gutter / 8),
                  Text(
                    location.description,
                    style: Theme.of(context).primaryTextTheme.bodyMedium,
                  ),
                ],
              ),
            ),
            Text(
              yardCode,
              style: Theme.of(
                context,
              ).primaryTextTheme.labelLarge?.copyWith(fontWeight: .bold),
            ),
          ],
        ),
      ),
    );
  }
}
