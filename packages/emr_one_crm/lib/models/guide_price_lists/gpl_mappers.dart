import 'package:emr_one_crm/graphql/trader/queries/get_guide_price_list_lines.graphql.dart';
import 'package:emr_one_crm/models/guide_price_lists/guide_price_list_line.dart';

class GplMappers {
  static List<GuidePriceListLine> gplMapper(
    List<Query$GetGuidePriceDetails$priceList$nodes> node,
  ) {
    final priceListLines = <GuidePriceListLine>[];
    for (final source in node) {
      priceListLines.add(
        GuidePriceListLine(
          source.id!,
          source.contractHeaderId,
          source.manager!,
          source.accountNo!,
          source.internalNotes,
          source.externalNotes,
          source.deliveryNotes,
          source.paymentNotes,
          source.longDescription,
          ListItems(
            source.contractLineId,
            source.lineStart,
            source.lineEnd,
            source.deliveryType!,
            source.haulageAdjustment ?? 0.0,
            source.haulageCharge ?? 0.0,
            source.haulageRateUoMValue ?? 0.0,
            source.haulageChargeUoM!,
            source.publicationId,
            source.productCode!,
            source.productDescription,
            source.baseMaterialPriceUoM!,
            source.baseMaterialPriceUoMValue ?? 0.0,
            getDeltas(source.deltas),
            getItemtags(source.tags),
          ),
          softDelete: false,
          active: false,
          showTagIcon: false,
        ),
      );
    }

    return priceListLines;
  }

  static List<Deltas> getDeltas(
    List<Query$GetGuidePriceDetails$priceList$nodes$deltas> deltas,
  ) {
    final deltaList = <Deltas>[];
    for (final d in deltas) {
      deltaList.add(
        Deltas(
          d.yard,
          d.latestCommercialDeltaUoM,
          d.latestCommercialDeltaUoMValue ?? 0.0,
          d.latestOperationalDeltaUoM,
          d.latestOperationalDeltaUoMValue ?? 0.0,
        ),
      );
    }
    return deltaList;
  }

  static List<ItemTags> getItemtags(
    List<Query$GetGuidePriceDetails$priceList$nodes$tags> itemTags,
  ) {
    final tagList = <ItemTags>[];
    for (final item in itemTags) {
      tagList.add(
        ItemTags(
          item.id ?? '',
          item.category,
          item.reason,
          item.startDate ?? DateTime.now(),
          item.endDate ?? DateTime.now(),
          item.rate ?? 0.0,
          item.rateUoMValue ?? 0.0,
          item.rateUoM,
          active: item.active,
        ),
      );
    }
    return tagList;
  }
}
