import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';

extension Enum$UomExtensions on Enum$Uom {
  Uom toUom() {
    switch (this) {
      case Enum$Uom.MT:
        return Uom.mt;
      case Enum$Uom.LB:
        return Uom.lb;
      case Enum$Uom.GT:
        return Uom.gt;
      case Enum$Uom.NT:
        return Uom.nt;
      case Enum$Uom.KG:
        return Uom.kg;
      case Enum$Uom.LD:
        return Uom.ld;
      case Enum$Uom.EA:
        return Uom.ea;
      case Enum$Uom.LT:
        return Uom.lt;
      case Enum$Uom.HR:
        return Uom.hr;
      case Enum$Uom.CWT:
        return Uom.cwt;
      case Enum$Uom.$unknown:
        return Uom.unknown;
    }
  }
}
