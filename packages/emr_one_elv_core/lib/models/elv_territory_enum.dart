import 'package:emr_one_core/extensions/build_context_extensions.dart';
import 'package:emr_one_elv_core/models/inspection_search_result.dart' hide VehicleDetail;
import 'package:emr_one_elv_core/models/models.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

enum ElvTerritory { uk, usa }

extension TerritoryConverter on String {
  ElvTerritory toElvTerritory() {
    switch (toUpperCase()) {
      case 'A42':
        return ElvTerritory.usa;
      case 'A11':
      default:
        return ElvTerritory.uk;
    }
  }
}

extension TerritoryLogic on ElvTerritory {
  String vehicleIdentifierTitle(BuildContext context) {
    switch (this) {
      case ElvTerritory.uk:
        return context.l10n.vrn;
      case ElvTerritory.usa:
        return context.l10n.vin;
    }
  }

  int vehicleIdentifierMaxLength() {
    switch (this) {
      case ElvTerritory.uk:
        return 7;
      case ElvTerritory.usa:
        return 17;
    }
  }

  String changePostCodeText(BuildContext context) {
    switch (this) {
      case ElvTerritory.uk:
        return context.l10n.changePostCode;
      case ElvTerritory.usa:
        return context.l10n.changeZipCode;
    }
  }

  String searchHintText(BuildContext context) {
    switch (this) {
      case ElvTerritory.uk:
        return context.l10n.searchPartyQuoteNoVrn;
      case ElvTerritory.usa:
        return context.l10n.searchPartyQuoteNoVin;
    }
  }

  String territoryCode() {
    switch (this) {
      case ElvTerritory.uk:
        return 'A11';
      case ElvTerritory.usa:
        return 'A42';
    }
  }

  int numberOfDeliveredPrices() {
    switch (this) {
      case ElvTerritory.uk:
        return 3;
      case ElvTerritory.usa:
        return 1;
    }
  }

  int numberOfCollectedPrices() {
    switch (this) {
      case ElvTerritory.uk:
        return 3;
      case ElvTerritory.usa:
        return 1;
    }
  }

  String countryCode() {
    switch (this) {
      case ElvTerritory.uk:
        return 'UK';
      case ElvTerritory.usa:
        return 'US';
    }
  }

  String addressLookupCountryCode() {
    switch (this) {
      case ElvTerritory.uk:
        return 'GBR';
      case ElvTerritory.usa:
        return 'US';
    }
  }

  String dateFormat(DateTime date) {
    switch (this) {
      case ElvTerritory.uk:
        return DateFormat.yMd('en_GB').format(date);
      case ElvTerritory.usa:
        return DateFormat.yMd('en_US').format(date);
    }
  }

  bool showPostCodeField() {
    switch (this) {
      case ElvTerritory.uk:
        return true;
      case ElvTerritory.usa:
        return false;
    }
  }

  bool showLeadSourceField() {
    switch (this) {
      case ElvTerritory.uk:
        return true;
      case ElvTerritory.usa:
        return false;
    }
  }

  bool startWithNoSelectedYard() {
    switch (this) {
      case ElvTerritory.uk:
        return true;
      case ElvTerritory.usa:
        return false;
    }
  }

  bool priceAdjustmentReasonRequired() {
    switch (this) {
      case ElvTerritory.uk:
        return true;
      case ElvTerritory.usa:
        return false;
    }
  }

  bool emailIsRequired() {
    switch (this) {
      case ElvTerritory.uk:
        return true;
      case ElvTerritory.usa:
        return false;
    }
  }

  bool canCollect() {
    switch (this) {
      case ElvTerritory.uk:
        return true;
      case ElvTerritory.usa:
        return false;
    }
  }

  bool enforceIdentifierMinLength() {
    switch (this) {
      case ElvTerritory.uk:
        return false;
      case ElvTerritory.usa:
        return true;
    }
  }

  bool canShowCatValue() {
    switch (this) {
      case ElvTerritory.uk:
        return true;
      case ElvTerritory.usa:
        return false;
    }
  }

  bool showVRNOnSummaryScreen() {
    switch (this) {
      case ElvTerritory.uk:
        return true;
      case ElvTerritory.usa:
        return false;
    }
  }

  bool requiredSealNumber() {
    switch (this) {
      case ElvTerritory.uk:
        return true;
      case ElvTerritory.usa:
        return false;
    }
  }

  bool requiredSerialNumber() {
    switch (this) {
      case ElvTerritory.uk:
        return true;
      case ElvTerritory.usa:
        return false;
    }
  }

  int initialQuoteNumberOfAlloys() {
    switch (this) {
      case ElvTerritory.uk:
        return 0;
      case ElvTerritory.usa:
        return 4;
    }
  }

  int initialQuoteNumberOfSteels() {
    switch (this) {
      case ElvTerritory.uk:
        return 0;
      case ElvTerritory.usa:
        return 0;
    }
  }

  int initialQuoteNumberOfChromes() {
    switch (this) {
      case ElvTerritory.uk:
        return 0;
      case ElvTerritory.usa:
        return 0;
    }
  }

  bool initialQuoteWithBattery() {
    switch (this) {
      case ElvTerritory.uk:
        return false;
      case ElvTerritory.usa:
        return true;
    }
  }

  String getCountry(BuildContext context) {
    switch (this) {
      case ElvTerritory.uk:
        return context.l10n.countryUK;
      case ElvTerritory.usa:
        return context.l10n.countryUS;
    }
  }

  bool canShowChrome({
    bool ukAllowChromeWheels = false,
    bool usaAllowChromeWheels = false,
  }) {
    switch (this) {
      case ElvTerritory.uk:
        return ukAllowChromeWheels;
      case ElvTerritory.usa:
        return usaAllowChromeWheels;
    }
  }

  bool displayMultipleCats({
    bool ukDisplayMultipleCats = false,
    bool usaDisplayMultipleCats = false,
  }) {
    switch (this) {
      case ElvTerritory.uk:
        return ukDisplayMultipleCats;
      case ElvTerritory.usa:
        return usaDisplayMultipleCats;
    }
  }

  String documentButtonText(BuildContext context) {
    switch (this) {
      case ElvTerritory.uk:
        return context.l10n.documents;
      case ElvTerritory.usa:
        return context.l10n.vehicleParts;
    }
  }

  String currencyCode() {
    switch (this) {
      case ElvTerritory.uk:
        return 'GBP';
      case ElvTerritory.usa:
        return 'USD';
    }
  }
}

extension LocalisedIdentifierVR on InspectionResult {
  String identifier(ElvTerritory activeTerritory) {
    switch (activeTerritory) {
      case ElvTerritory.uk:
        return vehicleDetail.vin ?? '';
      case ElvTerritory.usa:
        return vehicleDetail.vin ?? '';
    }
  }
}

extension LocalisedIdentifierVD on VehicleDetail {
  String identifier(ElvTerritory activeTerritory) {
    switch (activeTerritory) {
      case ElvTerritory.uk:
        return vehicleReg ?? '';
      case ElvTerritory.usa:
        return vin ?? '';
    }
  }
}
