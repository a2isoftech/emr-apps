import 'package:emr_core_api/graphql/schema.graphql.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/widgets.dart';

extension ServiceTypeExtension on Enum$ServiceType {
  String displayString(BuildContext context) {
    return switch (this) {
      Enum$ServiceType.NONE => context.l10n.psnopNone,
      Enum$ServiceType.TRADER_FERROUS => context.l10n.traderFerrous,
      Enum$ServiceType.TRADER_FERROUS_PASSIVE =>
        context.l10n.traderFerrousPassive,
      Enum$ServiceType.TRADER_NON_FERROUS => context.l10n.traderNonFerrous,
      Enum$ServiceType.TRADER_NON_FERROUS_PASSIVE =>
        context.l10n.traderNonFerrousPassive,
      Enum$ServiceType.SALES => context.l10n.sales,
      Enum$ServiceType.TRANSPORT => context.l10n.onTrack,
      Enum$ServiceType.TRADE_SUPPLIER => context.l10n.tradeSuppliers,
      Enum$ServiceType.OVERHEAD_SUPPLIER => context.l10n.overheadSuppliers,
      Enum$ServiceType.CREDIT_CONTROLLER => context.l10n.creditControl,
      Enum$ServiceType.DEBT_MANAGER => context.l10n.debtManager,
      Enum$ServiceType.$unknown => '',
    };
  }
}

String localizedServiceTypeLabel(BuildContext context, String? raw) {
  if (raw == null || raw.isEmpty) return '';
  final type = Enum$ServiceType.fromJson(raw.trim());
  final label = type.displayString(context);
  if (label.isEmpty && type == Enum$ServiceType.$unknown) {
    return raw;
  }
  return label;
}
