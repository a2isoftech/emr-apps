import 'package:collection/collection.dart';
import 'package:emr_core_api/emr_core_api.dart';
import 'package:flutter/widgets.dart';

extension TicketCategoryListExtensions on List<Enum$TicketCategory> {
  Future<List<Enum$TicketCategory>> pickerItems(
    BuildContext context, {
    bool includeBlank = false,
  }) => Future.value(
    where(
      (item) => includeBlank || item != Enum$TicketCategory.$unknown,
    ).sorted(
      (a, b) => a.displayString(context).compareTo(b.displayString(context)),
    ),
  );
}
