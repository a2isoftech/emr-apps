import 'package:collection/collection.dart';
import 'package:emr_core_api/emr_core_api.dart';
import 'package:flutter/widgets.dart';

extension TicketServiceTypeListExtensions on List<Enum$TicketServiceType> {
  Future<List<Enum$TicketServiceType>> pickerItems(
    BuildContext context, {
    bool includeBlank = false,
  }) => Future.value(
    where(
      (item) => includeBlank || item != Enum$TicketServiceType.$unknown,
    ).sorted(
      (a, b) => a.displayString(context).compareTo(b.displayString(context)),
    ),
  );
}
