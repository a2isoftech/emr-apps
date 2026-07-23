import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_sharedtypes/models/weighbridge/enums.dart';
import 'package:flutter/widgets.dart';

extension LeadSourceExtensions on LeadSource {
  String localizedLabel(BuildContext context) => switch (this) {
        LeadSource.none => context.l10n.none,
        LeadSource.scrapCarComparison => context.l10n.scrapCarComparison,
        LeadSource.carTakeBack => context.l10n.carTakeBack,
        LeadSource.auction => context.l10n.auction,
        LeadSource.emrVehicleRecycling => context.l10n.emrVehicleRecycling,
        LeadSource.b2b => context.l10n.b2b,
      };
}
