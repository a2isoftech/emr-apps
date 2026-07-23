import 'package:emr_one_crm/graphql/trader/schema.graphql.dart';
import 'package:emr_sharedtypes/constants.dart';


  extension UomToApiEnumExtension on Uom {
  Enum$Uom asApiEnum() {
    switch (this) {
      case Uom.unknown:
        return Enum$Uom.$unknown;
      case Uom.mt:
        return Enum$Uom.MT;
      case Uom.lb:
        return Enum$Uom.LB;
      case Uom.gt:
        return Enum$Uom.GT;
      case Uom.nt:
        return Enum$Uom.NT;
      case Uom.kg:
        return Enum$Uom.KG;
      case Uom.ld:
        return Enum$Uom.LD;
      case Uom.ea:
        return Enum$Uom.EA;
      case Uom.lt:
        return Enum$Uom.LT;
      case Uom.hr:
        return Enum$Uom.HR;
      case Uom.cwt:
        return Enum$Uom.CWT;
    }
  }
}  
