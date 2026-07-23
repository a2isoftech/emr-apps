import 'package:emr_sharedtypes/emr_sharedtypes.dart';

class UomService {
  UomService();

  List<Uom> getUoms(String territoryCode) {
    // TODO: Eventually we will need to return the list of UOMs depending on
    // where they're being used (e.g. commodity weights, rates etc), but for now
    // we're only supporting spot contracts and price lists.
    switch (territoryCode) {
      case 'A11': // UK
      case 'A21': // Holland
      case 'A24': // Germany
      case 'A25': // Spain
      case 'A26': // Italy
        return [Uom.mt, Uom.kg, Uom.ea];

      case 'A42': // USA
        return [Uom.lb, Uom.gt, Uom.nt, Uom.cwt, Uom.mt, Uom.ea];

      // Temporary solution to allow for undefined territories to function
      // while a permanent remotely configurable solution is being developed. 
      default:
       return Uom.values;
    }
  }

  bool uomValidForTerritory(Uom uom, String territoryCode) {
    try {
      return getUoms(territoryCode).contains(uom);
    } catch (e) {
      return true;
    }
  }
}
