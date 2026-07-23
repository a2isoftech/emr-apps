import 'package:emr_core_api/graphql/schema.graphql.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/widgets.dart';

extension ContactTypeExtension on Enum$ContactType {
  String displayString(BuildContext context) {
    return switch (this) {
      Enum$ContactType.NONE => context.l10n.psnopNone,
      Enum$ContactType.OTHER => context.l10n.other,
      Enum$ContactType.MAIN => context.l10n.main,
      Enum$ContactType.DELIVERY => context.l10n.delivery,
      Enum$ContactType.REGISTERED_OFFICE => context.l10n.registeredOffice,
      Enum$ContactType.PAYMENTS => context.l10n.payments,
      Enum$ContactType.SALES_INVOICE => context.l10n.salesInvoice,
      Enum$ContactType.STATEMENT => context.l10n.statement,
      Enum$ContactType.ORDER => context.l10n.order,
      Enum$ContactType.RO_ADMIN => context.l10n.roAdmin,
      Enum$ContactType.RO_DRIVER => context.l10n.roDriver,
      Enum$ContactType.COMMUNICATION_CONTACT =>
        context.l10n.communicationContact,
      Enum$ContactType.HS_COMPLIANCE => context.l10n.hsCompliance,
      Enum$ContactType.ENV_COMPLIANCE => context.l10n.envCompliance,
      Enum$ContactType.TRANSPORT_OFFICE => context.l10n.transportOffice,
      Enum$ContactType.$unknown => '',
    };
  }
}

String localizedContactTypeLabel(
  BuildContext context,
  List<String>? contactTypes,
) {
  if (contactTypes == null || contactTypes.isEmpty) return '';

  return contactTypes
      .map((e) {
        final trimmed = e.trim();
        final type = Enum$ContactType.fromJson(trimmed);
        final label = type.displayString(context);
        // Preserve raw value for unknown/unmapped types
        return label.isNotEmpty ? label : trimmed;
      })
      .where((e) => e.isNotEmpty)
      .join(', ');
}
