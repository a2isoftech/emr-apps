import 'package:emr_one_elv_quotes/pages/quick_quotes/controller/controller_imports.dart';

extension VinScrapPageTextExtension on ElvTerritory {
  String getScrapText(BuildContext context) {
    if (this == ElvTerritory.uk) {
      return context.l10n.vrnScrap;
    }
    return context.l10n.vinScrap;
  }

  String menuText(BuildContext context) {
    if (this == ElvTerritory.uk) {
      return context.l10n.vrnScrapQuote;
    }
    return context.l10n.vinScrapQuote;
  }

  String vinVrnText(BuildContext context) {
    if (this == ElvTerritory.uk) {
      return context.l10n.vrn;
    }
    return context.l10n.vin;
  }

  String vehicleIdentification(VehicleDetail vehicle) {
    if (this == ElvTerritory.uk) {
      return vehicle.vehicleReg ?? '';
    }
    return vehicle.vin ?? '';
  }

  int quoteNumberOfAlloys() {
    if (this == ElvTerritory.uk) {
      return 4;
    }
    return 0;
  }

  bool quoteWithBattery() {
    if (this == ElvTerritory.uk) {
      return true;
    }
    return false;
  }

  bool quoteWithCat() {
    if (this == ElvTerritory.uk) {
      return true;
    }
    return false;
  }

  int defaultVehicleKerbWeight() {
    if (this == ElvTerritory.uk) {
      return 1200;
    }
    return 3200;
  }
}
