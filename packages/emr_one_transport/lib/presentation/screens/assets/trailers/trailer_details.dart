import 'package:emr_one_core/eo_constants.dart';
import 'package:emr_one_core/extensions/build_context_extensions.dart';
import 'package:emr_one_transport/data/models/trailers/transport_trailer.dart';
import 'package:flutter/material.dart';

class TrailerDetails extends StatelessWidget {
  const TrailerDetails({required this.trailer, super.key});

  final TransportTrailer trailer;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      width: 500,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            detailRow(context, context.l10n.assetCode, trailer.assetNumber),
            detailRow(context, context.l10n.costCenter, trailer.costCenter),
            detailRow(context, context.l10n.yard, trailer.yardCode),
            detailRow(context, context.l10n.status, trailer.status),
            detailRow(context, context.l10n.assetType, trailer.trailerType),
            detailRow(context, context.l10n.condition, trailer.condition),
            detailRow(context, context.l10n.description, trailer.description),
          ],
        ),
      ),
    );
  }

  Widget detailRow(BuildContext context, String label, String? value) {
    return Padding(
      padding: const EdgeInsets.only(bottom: Insets.gutter),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SelectableText(
            label,
            style: Theme.of(
              context,
            ).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(width: Insets.gutter * 4),
          Expanded(
            child: SelectableText(
              value ?? '',
              textAlign: TextAlign.right,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
        ],
      ),
    );
  }
}
