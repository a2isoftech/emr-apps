import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_yard_logistics/constants.dart';
import 'package:emr_one_yard_logistics/models/models.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';

class LotCardLotPhotos extends StatelessWidget {
  const LotCardLotPhotos({
    required this.lot,
    super.key,
  });

  final Lot lot;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const ScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: YlConstants.gridCrossAxisCount,
        crossAxisSpacing: Insets.gutter / 2,
        mainAxisSpacing: Insets.gutter / 2,
      ),
      itemCount: lot.photos!.length,
      itemBuilder: (context, index) {
        return ClipRRect(
          borderRadius: BorderRadius.circular(Insets.gutter / 2),
          child: ColoredBox(
            color: Theme.of(context).colorScheme.surface,
            child: TappableImage(
              imagePath: lot.photos![index],
              loadingIcon: const Icon(Symbols.downloading),
            ),
          ),
        );
      },
    );
  }
}
