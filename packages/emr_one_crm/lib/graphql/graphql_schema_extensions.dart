import 'package:emr_one_crm/graphql/trader/schema.graphql.dart' as crm;
import 'package:emr_sharedtypes/emr_sharedtypes.dart';

extension Enum$ContractLineDeliveryMethodExtensions
    on crm.Enum$ContractLineDeliveryMethod {
  String toDisplayString() {
    switch (this) {
      case crm.Enum$ContractLineDeliveryMethod.DELIVERED:
        return 'Delivered';
      case crm.Enum$ContractLineDeliveryMethod.COLLECTED:
        return 'Collected';
      case crm.Enum$ContractLineDeliveryMethod.COLLECTED_LESS_CHARGE:
        return 'Collected less charge';
      case crm.Enum$ContractLineDeliveryMethod.COLLECTED_FULLY_CHARGED:
        return 'Collected fully charged';
      case crm.Enum$ContractLineDeliveryMethod.BOTH:
        return 'Both';
      case crm.Enum$ContractLineDeliveryMethod.$unknown:
        return 'Unknown';
    }
  }
}

extension Enum$UomExtensions on crm.Enum$Uom {
  Uom toUom() {
    switch (this) {
      case crm.Enum$Uom.MT:
        return Uom.mt;
      case crm.Enum$Uom.LB:
        return Uom.lb;
      case crm.Enum$Uom.GT:
        return Uom.gt;
      case crm.Enum$Uom.NT:
        return Uom.nt;
      case crm.Enum$Uom.KG:
        return Uom.kg;
      case crm.Enum$Uom.LD:
        return Uom.ld;
      case crm.Enum$Uom.EA:
        return Uom.ea;
      case crm.Enum$Uom.LT:
        return Uom.lt;
      case crm.Enum$Uom.HR:
        return Uom.hr;
      case crm.Enum$Uom.CWT:
        return Uom.cwt;
      case crm.Enum$Uom.$unknown:
        return Uom.unknown;
    }
  }
}
