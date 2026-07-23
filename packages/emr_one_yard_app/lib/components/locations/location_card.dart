import 'package:emr_core_api/graphql/queries/yard_app/yard_app.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_yard_app/components/card_base.dart';
import 'package:emr_one_yard_app/components/components.dart';
import 'package:flutter/material.dart';

class LocationCard extends StatelessWidget {
  const LocationCard({
    required Query$Locations$inventoryLocations$nodes location,
    required this.yardCode,
    super.key,
  }) : _location = location;

  final Query$Locations$inventoryLocations$nodes _location;
  final String yardCode;
  @override
  Widget build(BuildContext context) {
    final assets = _location.mediaAssets;
    final total = assets.length;
    assets.sort((a, b) => b.created.at.compareTo(a.created.at));
    return CardBase(
      header: Row(
        children: [
          Expanded(
            child: TextLine(
              header: context.l10n.location,
              content: _location.code,
            ),
          ),
          if (total == 0)
            Badge(
              label: const Text('!'),
              backgroundColor: Theme.of(context).colorScheme.error,
              child: const Icon(Icons.image_not_supported_outlined, size: 30),
            )
          else
            Badge(
              label: Text(total.toString()),
              backgroundColor: Theme.of(context).colorScheme.primary,
              child: const Icon(Icons.image_outlined, size: 30),
            ),
        ],
      ),
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextLine(
            header: context.l10n.description,
            content: _location.description,
          ),
          TextLine(header: context.l10n.yard, content: yardCode),
        ],
      ),
    );
  }
}
