import 'package:emr_core_api/graphql/schema.graphql.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_elv_core/models/elv_territory_enum.dart';
import 'package:emr_one_elv_core/models/enums/quote_status_enum.dart';
import 'package:emr_one_elv_quotes/extensions/quote_search_extensions.dart';
import 'package:emr_one_elv_quotes/models/quote_search/quote_search_record.dart';
import 'package:emr_one_elv_quotes/pages/quote_search/quote_card_item_details.dart';
import 'package:flutter/material.dart';

class QuoteCard extends StatelessWidget {
  const QuoteCard({
    required this.quoteSearchRecord,
    required this.activeTerritory,
    super.key,
  });

  final QuoteSearchRecord quoteSearchRecord;
  final ElvTerritory activeTerritory;

  @override
  Widget build(BuildContext context) {
    final badgeColor =
        switch (quoteSearchRecord.quoteStatus.facetTermToQuoteStatusEnum()) {
      QuoteStatusEnum.confirmed => Theme.of(context).colorScheme.primary,
      QuoteStatusEnum.abandoned => Theme.of(context).colorScheme.secondary,
      QuoteStatusEnum.draft => Theme.of(context).colorScheme.tertiary,
      _ => Theme.of(context).colorScheme.error,
    };

    return SizedBox(
      width: 320,
      child: EmrCard(
        title: 'Quote #: ${quoteSearchRecord.id.split('/').last}',
        trailing: Badge(
          label: Text(quoteSearchRecord.quoteStatus),
          backgroundColor: badgeColor,
          padding: const EdgeInsets.symmetric(
            horizontal: Insets.gutter / 2,
            vertical: Insets.gutter / 4,
          ),
        ),
        onSelected: ({bool? selected}) {
          quoteSearchRecord.quoteStatus == Enum$QuoteStatus.DRAFT.name
              ? context.goNamed(
                  NamedRoutes.elvQuickQuote,
                  params: {
                    'batchQuoteId': quoteSearchRecord.batchQuoteBundleId,
                  },
                )
              : context.goNamed(
                  NamedRoutes.elvQuotesSummary,
                  params: {
                    'batchQuoteId': quoteSearchRecord.id.split('/').last,
                  },
                );
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: Insets.gutter / 2,
                left: Insets.gutter,
                right: Insets.gutter,
                bottom: Insets.gutter,
              ),
              child: QuoteCardItemDetails(
                quoteSearchRecord: quoteSearchRecord,
                activeTerritory: activeTerritory,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
