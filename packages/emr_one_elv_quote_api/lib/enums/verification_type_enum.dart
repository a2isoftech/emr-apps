enum VerificationTypeEnum {
  none('NONE'),
  proofOfId('PROOF_OF_ID'),
  proofOfAddress('PROOF_OF_ADDRESS'),
  signature('SIGNATURE');

  const VerificationTypeEnum(this.label);
  final String label;

  static List<String> get labels =>
      VerificationTypeEnum.values.map((e) => e.label).toList();

  static VerificationTypeEnum fromString(String value) {
    return VerificationTypeEnum.values.firstWhere(
      (e) => e.label == value,
      orElse: () => VerificationTypeEnum.none,
    );
  }
}
