import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/widgets.dart';

extension PrintForTicketDirectionsExtensions on PrintForTicketDirections{
  String localizedLabel(BuildContext context) => switch(this){
    PrintForTicketDirections.inward => context.l10n.inward,
    PrintForTicketDirections.outward => context.l10n.outward,
    PrintForTicketDirections.inwardAndOutward => context.l10n.inwardOutward
  };
}
