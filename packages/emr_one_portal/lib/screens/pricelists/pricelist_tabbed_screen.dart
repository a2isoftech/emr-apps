import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_portal/portal.dart';
import 'package:flutter/material.dart';

class PricelistTabbedScreen extends StatelessWidget {
  const PricelistTabbedScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TabbedScreenWrapper(
      screenHeaderText: context.l10n.pricelists,
      currentIndex: 0,
      tabSummaries: getPriceListsTabs(
        context,
      ),
    );
  }
}

List<TabbedScreenTabSummary> getPriceListsTabs(
  BuildContext context,
) {
  return [
    TabbedScreenTabSummary(
      tab: PriceListScreen(
        tabname: context.l10n.ferrous,
      ),
      label: context.l10n.ferrous,
    ),
    TabbedScreenTabSummary(
      tab: PriceListScreen(
        tabname: context.l10n.nonFerrous,
      ),
      label: context.l10n.nonFerrous,
    ),
  ];
}
