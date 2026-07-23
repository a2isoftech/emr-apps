import 'package:collection/collection.dart';
import 'package:emr_core_api/emr_core_api.dart';
import 'package:flutter/widgets.dart';

extension TransportTypeListExtensions on List<Enum$TransportType> {
  Future<List<Enum$TransportType>> pickerItems(
    BuildContext context, {
    bool includeBlank = false,
  }) => Future.value(
    where(
      (item) => includeBlank || item != Enum$TransportType.$unknown,
    ).sorted(
      (a, b) => a.displayString(context).compareTo(b.displayString(context)),
    ),
  );
}
