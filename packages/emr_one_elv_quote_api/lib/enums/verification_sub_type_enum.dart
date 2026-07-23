enum VerificationSubTypeEnum {
  none('NONE'),
  ukDrivingLicense('UK_DRIVING_LICENSE'),
  ukEuEeaPassport('UK_EU_EEA_PASSPORT'),
  euNationalIdCard('EU_NATIONAL_ID_CARD'),
  utilityBill('UTILITY_BILL'),
  bankStatement('BANK_STATEMENT'),
  councilTaxDemandLetter('COUNCIL_TAX_DEMAND_LETTER'),
  creditDebitCardStatement('CREDIT_DEBIT_CARD_STATEMENT'),
  ukEuDrivingLicense('UK_EU_DRIVING_LICENSE'),
  biometricImmigrationDocument('BIOMETRIC_IMMIGRATION_DOCUMENT'),
  euDrivingLicense('EU_DRIVING_LICENSE'),
  hmrcCorrespondence('HMRC_CORRESPONDANCE'),
  mortgageStatement('MORTGAGE_STATEMENT'),
  ukFirearmLicense('UK_FIREARM_LICENSE');

  const VerificationSubTypeEnum(this.label);
  final String label;

  static List<String> get labels =>
      VerificationSubTypeEnum.values.map((e) => e.label).toList();

  static VerificationSubTypeEnum fromString(String value) {
    return VerificationSubTypeEnum.values.firstWhere(
      (e) => e.label == value,
      orElse: () => VerificationSubTypeEnum.none,
    );
  }

  static Map<String, VerificationSubTypeEnum> get identificationTypes => {
        verificationSubTypeText(none): none,
        verificationSubTypeText(ukDrivingLicense): ukDrivingLicense,
        verificationSubTypeText(ukEuDrivingLicense): ukEuDrivingLicense,
        verificationSubTypeText(euDrivingLicense): euDrivingLicense,
        verificationSubTypeText(ukEuEeaPassport): ukEuEeaPassport,
        verificationSubTypeText(biometricImmigrationDocument):
            biometricImmigrationDocument,
        verificationSubTypeText(euNationalIdCard): euNationalIdCard,
        verificationSubTypeText(ukFirearmLicense): ukFirearmLicense,
      };

  static Map<String, VerificationSubTypeEnum> get proofOfAddressTypes => {
        verificationSubTypeText(none): none,
        verificationSubTypeText(utilityBill): utilityBill,
        verificationSubTypeText(bankStatement): bankStatement,
        verificationSubTypeText(councilTaxDemandLetter): councilTaxDemandLetter,
        verificationSubTypeText(creditDebitCardStatement):
            creditDebitCardStatement,
        verificationSubTypeText(hmrcCorrespondence): hmrcCorrespondence,
        verificationSubTypeText(mortgageStatement): mortgageStatement,
      };

  static String verificationSubTypeText(VerificationSubTypeEnum e) =>
      e.label.replaceAll('_', ' ');
}
