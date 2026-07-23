import 'package:emr_one_cashiersearch/emr_one_cashiersearch.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';

class LineImageGrid extends StatelessWidget {
  const LineImageGrid({required this.images, super.key});
  final List<LineImage> images;

  @override
  Widget build(BuildContext context) {
    return images.isEmpty
        ? Padding(
            padding: const EdgeInsetsGeometry.all(Insets.gutter),
            child: Center(
              child: Text(
                context.l10n.noImagesFound,
                textAlign: TextAlign.center,
              ),
            ),
          )
        : GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent:
                  TicketConstants.kTicketMediaGalleryCardMaxWidth,
              mainAxisSpacing: Insets.gutter / 2,
              crossAxisSpacing: Insets.gutter / 2,
            ),
            itemCount: images.length,
            itemBuilder: (context, index) {
              final item = images[index];

              return Column(
                children: [
                  Expanded(child: ImageThumbnail(mediaAsset: item.mediaAsset)),
                  const SizedBox(height: Insets.gutter / 4),
                  Text(
                    item.type == ImageType.gross
                        ? context.l10n.gross
                        : context.l10n.tare,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              );
            },
          );
  }
}
