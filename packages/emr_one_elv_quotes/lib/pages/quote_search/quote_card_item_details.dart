import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_elv_core/models/elv_territory_enum.dart';
import 'package:emr_one_elv_quotes/models/quote_search/quote_search_record.dart';
import 'package:flutter/material.dart';

class QuoteCardItemDetails extends StatelessWidget {
  const QuoteCardItemDetails({
    required this.quoteSearchRecord,
    required this.activeTerritory,
    super.key,
  });

  final QuoteSearchRecord quoteSearchRecord;
  final ElvTerritory activeTerritory;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FormHeadingRow(
          textStyle: EmrOneConstants.kOpenSans12BoldTextStyle,
          headings: [
            context.l10n.account,
            quoteSearchRecord.accountCode,
          ],
        ),
        FormHeadingRow(
          textStyle: EmrOneConstants.kOpenSans12BoldTextStyle,
          headings: [
            context.l10n.yard,
            quoteSearchRecord.yardCode,
          ],
        ),
        FormHeadingRow(
          textStyle: EmrOneConstants.kOpenSans12BoldTextStyle,
          headings: [
            context.l10n.priceType,
            quoteSearchRecord.priceType,
          ],
        ),
        FormHeadingRow(
          textStyle: EmrOneConstants.kOpenSans12BoldTextStyle,
          headings: [
            context.l10n.appointmentDate,
            quoteSearchRecord.collectionDate
                    ?.asyMMdtime(Localizations.localeOf(context)) ??
                '-',
          ],
        ),
        FormHeadingRow(
          textStyle: EmrOneConstants.kOpenSans12BoldTextStyle,
          headings: [
            context.l10n.vehiclesQuoted,
            _showQuotedVehicleInfo(),
          ],
        ),
        FormHeadingRow(
          textStyle: EmrOneConstants.kOpenSans12BoldTextStyle,
          headings: [
            context.l10n.postCode,
            quoteSearchRecord.postCode ?? '-',
          ],
        ),
        FormHeadingRow(
          textStyle: EmrOneConstants.kOpenSans12BoldTextStyle,
          headings: [
            context.l10n.quoteSource,
            quoteSearchRecord.quoteSource,
          ],
        ),
        FormHeadingRow(
          textStyle: EmrOneConstants.kOpenSans12BoldTextStyle,
          headings: [
            context.l10n.createdDate,
            quoteSearchRecord.createdDate
                .asyMMdtime(Localizations.localeOf(context)),
          ],
        ),
      ],
    );
  }

  String _showQuotedVehicleInfo() {
    return quoteSearchRecord.vehiclesQuoted == 1
        ? activeTerritory == ElvTerritory.uk
            ? quoteSearchRecord.vrnList.firstOrNull ?? '-'
            : quoteSearchRecord.vinList.firstOrNull ?? '-'
        : quoteSearchRecord.vehiclesQuoted.toString();
  }
}
