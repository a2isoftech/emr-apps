import 'dart:ui';

import 'package:emr_sharedtypes/constants.dart';

enum PricingOption { fromGpl, manual }

enum CrmDeliveryMethod {
  delivered,
  collected,
  collectedLessCharge,
  collectedFullyCharged,
  both
}

enum CrmCurrencyCodeEnum {
  usd('USD'),
  gbp('GBP'),
  eur('EUR');

  const CrmCurrencyCodeEnum(this.code);
  final String code;

  static CrmCurrencyCodeEnum fromCode(String? code) {
    if (code == null) return CrmCurrencyCodeEnum.eur;
    return CrmCurrencyCodeEnum.values.firstWhere(
      (e) => e.code.toUpperCase() == code.toUpperCase(),
      orElse: () => CrmCurrencyCodeEnum.eur,
    );
  }
}

class CrmDeliveryMethodInfo {
  const CrmDeliveryMethodInfo(this.name, this.methodId);
  final String name;
  final CrmDeliveryMethod methodId;
}

class EmrOneCrmConstants {
  static const double kPartyHeaderFontSize = 32;
  static const String legacy = 'Legacy';
  static const String systemGenerated = 'SystemGenerated';
  static const int pricelistCreationTotalSteps = 6;
  static const int contractCreationTotalSteps = 7;
}

class EmrOneCrmTelemetry {
  static const String kCreateContract = 'crmCreateContract';
  static const String kPartyPricesContractToggle =
      'crmPartyPricesContractToggle';
  static const String kPartyPricesMobBottomNav = 'crmPartyPricesMobBottomNav';
  static const String kPartyPricesSearch = 'crmPartyPricesSearch';
  static const String kPartyPricesDetailsScreen = 'crmPartyPricesDetailsScreen';
  static const String kPartyPricesMobFAB = 'crmPartyPricesMobFAB';
  static const String kPartyScreenMobFAB = 'crmPartyScreenMobFAB';
  static const String kPartyPricesSort = 'crmPartyPricesSort';
  static const String kPartyPricesPop = 'crmPartyPricesPop';
  static const String kCreateMaskedLines = 'crmCreateMaskLines';
}

class EmrOneCrmColours {
  static const Color secondaryRedProgressBackColor =
      Color.fromARGB(255, 248, 205, 213);
  static const Color secondaryYellowProgressBackColor =
      Color.fromARGB(255, 250, 237, 199);
  static const secondaryGreenProgressBackColor =
      Color.fromARGB(255, 210, 249, 232);
}

class AccountTypeConstants {
  static const excludedAccountTypeNames = [
    'sales',
    'supplier',
  ];
}

enum ModalResult {
  contractClosedRefreshPrices,
}

class CrmCurrencyConstants {
  static const CrmCurrencyCodeEnum defaultCurrency = CrmCurrencyCodeEnum.eur;

  static const Map<String, CrmCurrencyCodeEnum> territoryCurrencyMap = {
    'A42': CrmCurrencyCodeEnum.usd,
    'A11': CrmCurrencyCodeEnum.gbp,
    'A24': CrmCurrencyCodeEnum.eur,
    'A21': CrmCurrencyCodeEnum.eur,
    'A25': CrmCurrencyCodeEnum.eur,
    'A26': CrmCurrencyCodeEnum.eur,
  };

  static const List<CrmCurrencyCodeEnum> supportedCurrencies = [
    CrmCurrencyCodeEnum.usd,
    CrmCurrencyCodeEnum.gbp,
    CrmCurrencyCodeEnum.eur,
  ];

  static List<String> get supportedCurrencyCodes =>
      supportedCurrencies.map((e) => e.code).toList();

  static CrmCurrencyCodeEnum getCurrencyForTerritory(String? territory) {
    if (territory == null || territory.trim().isEmpty) {
      return defaultCurrency;
    }
    return territoryCurrencyMap[territory.toUpperCase().trim()] ??
        defaultCurrency;
  }
}

class UomTypeConstants {
  static const List<Uom> collectedDeltaUoms = [
    Uom.lb,
    Uom.gt,
    Uom.mt,
    Uom.nt,
    Uom.cwt,
  ];
}
