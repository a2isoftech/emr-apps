import 'package:emr_one_cashiersearch/emr_one_cashiersearch.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';

class LineSection extends StatelessWidget {
  const LineSection({required this.line, super.key});
  final TicketLine line;

  @override
  Widget build(BuildContext context) {
    final images = buildLineImages(
      grossMediaAssets: line.mediaAssets,
      tareMediaAssets: line.deductions
          .expand((deduction) => deduction.mediaAssets)
          .toList(),
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '${context.l10n.line} ${line.lineNumber!} - '
          '${line.productId?.split('/').lastOrNull ?? ''}',
          style: Theme.of(
            context,
          ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w600),
        ),
        const SizedBox(height: Insets.gutter / 2),
        LineImageGrid(images: images),
      ],
    );
  }

  List<LineImage> buildLineImages({
    required List<MediaAsset> grossMediaAssets,
    required List<MediaAsset> tareMediaAssets,
  }) {
    final images = [
      ...grossMediaAssets.map(
        (grossMediaAsset) =>
            LineImage(mediaAsset: grossMediaAsset, type: ImageType.gross),
      ),
      ...tareMediaAssets.map(
        (tareMediaAsset) =>
            LineImage(mediaAsset: tareMediaAsset, type: ImageType.tare),
      ),
    ];
    images.sort(
      (a, b) => a.mediaAsset.modified!.at.compareTo(b.mediaAsset.modified!.at),
    );
    return images;
  }
}
