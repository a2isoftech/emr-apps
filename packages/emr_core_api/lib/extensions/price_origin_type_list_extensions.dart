import 'package:collection/collection.dart';
import 'package:emr_core_api/emr_core_api.dart';
import 'package:flutter/widgets.dart';

extension PriceOriginTypeListExtensions on List<Enum$PriceOriginType> {
  Future<List<Enum$PriceOriginType>> pickerItems(
    BuildContext context, {
    bool includeBlank = false,
  }) => Future.value(
    where(
      (item) => includeBlank || item != Enum$PriceOriginType.$unknown,
    ).sorted(
      (a, b) => a.displayString(context).compareTo(b.displayString(context)),
    ),
  );
}
