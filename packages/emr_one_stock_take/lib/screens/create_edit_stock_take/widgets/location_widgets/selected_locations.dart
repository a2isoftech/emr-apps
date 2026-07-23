import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_stock_take/models/stocktake_location.dart';
import 'package:flutter/material.dart';

class SelectedLocations extends StatelessWidget {
  const SelectedLocations({required this.locations, this.onRemove, super.key});

  final List<StocktakeLocation> locations;
  final void Function(
    StocktakeLocation location,
  )? onRemove;

  @override
  Widget build(BuildContext context) {
    final reversedLocations = locations.reversed.toList();
    return ListView.builder(
      itemCount: reversedLocations.length,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(
            vertical: Insets.gutter / 2,
          ),
          child: SelectedLocationDetail(
            location: reversedLocations[index],
            onRemove: (location) {
              onRemove?.call(reversedLocations[index]);
            },
          ),
        );
      },
    );
  }
}

class SelectedLocationDetail extends StatelessWidget {
  const SelectedLocationDetail({
    required this.location,
    this.onRemove,
    super.key,
  });

  final StocktakeLocation location;
  final void Function(
    StocktakeLocation location,
  )? onRemove;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return EmrCard(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${location.code} - ${location.description}',
                  style: theme.textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
                if (location.productCode != '' || location.productDesc != '')
                  Text(
                    '${location.productCode} - '
                    '${location.productDesc ?? '-'}',
                    style: Theme.of(context).textTheme.bodyMedium,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
              ],
            ),
          ),
          SizedBox(
            height: 45,
            width: 45,
            child: IconButton(
              onPressed: () {
                onRemove?.call(location);
              },
              icon: const Icon(
                Icons.delete_outlined,
                size: 22,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
