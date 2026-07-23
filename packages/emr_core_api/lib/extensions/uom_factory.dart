import 'package:emr_core_api/graphql/schema.graphql.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';

extension UomFactory on Enum$Uom {
  Uom toUomModel() => switch (this) {
        Enum$Uom.MT => Uom.mt,
        Enum$Uom.LB => Uom.lb,
        Enum$Uom.GT => Uom.gt,
        Enum$Uom.NT => Uom.nt,
        Enum$Uom.KG => Uom.kg,
        Enum$Uom.LD => Uom.ld,
        Enum$Uom.EA => Uom.ea,
        Enum$Uom.LT => Uom.lt,
        Enum$Uom.HR => Uom.hr,
        Enum$Uom.CWT => Uom.cwt,
        Enum$Uom.$unknown => throw ArgumentError.value(this, 'apiuom'),
      };
}
