import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/widgets.dart';

extension TransportTypeExtensions on Enum$TransportType {
  String displayString(BuildContext context) => switch (this) {
    .TRUCK => context.l10n.truck,
    .$unknown => '',
  };
}
