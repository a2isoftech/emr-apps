import 'package:collection/collection.dart';
import 'package:emr_account_registration/signup.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_portal/portal.dart';
import 'package:emr_one_theme/emr_one_theme.dart';
import 'package:flutter/material.dart';

class BasketSummary extends StatelessWidget with FullExtent {
  BasketSummary({
    required this.controller,
    super.key,
  });

  final ScanTicketController controller;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final brandColours =
        theme.extension<EOBrandTheme>() ?? const EOBrandTheme();
    final activeLocale = Localizations.localeOf(context);

    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(
              Radius.circular(
                Insets.gutter,
              ),
            ),
            color: brandColours.brandColour,
          ),
          child: Padding(
            padding: const EdgeInsets.all(Insets.gutter),
            child: Column(
              children: [
                ...controller.tickets.mapIndexed(
                  (i, t) => MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: GestureDetector(
                      onTap: () {
                        controller.toggleViewTicketDetails(
                          value: true,
                          ticket: t,
                        );
                      },
                      child: Column(
                        children: [
                          Text(
                            '${t.ticketNo} ${t.depot}',
                            textAlign: TextAlign.start,
                            style: theme.textTheme.labelMedium!
                                .copyWith(color: brandColours.onBrandColour),
                          ),
                          Text(
                            ' X ${t.ticketLines.length} item(s) '
                            '  ${t.getCurrencySymbol()}${t.totalPayable()}',
                            textAlign: TextAlign.start,
                            style: theme.textTheme.labelMedium!
                                .copyWith(color: brandColours.onBrandColour),
                          ),
                          Text(
                            DateToStringHelpers.formatDateByLocale(
                              t.ticketDate,
                              activeLocale.toString(),
                            ),
                            textAlign: TextAlign.start,
                            style: theme.textTheme.labelMedium!
                                .copyWith(color: brandColours.onBrandColour),
                          ),
                          dividerRow(colour: brandColours.onBrandColour!),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
