class BankDetailAndNotes {
  BankDetailAndNotes({
    this.bankAccountNumber,
    this.bankSortCode,
    this.notes,
  });
  String? bankAccountNumber;
  String? bankSortCode;
  String? notes;

  static BankDetailAndNotes? fromJson(dynamic value) {
    if (value is Map) {
      final json = value as Map<String, dynamic>;
      return BankDetailAndNotes(
        bankAccountNumber: json['bankAccountNumber'] as String?,
        bankSortCode: json['bankSortCode'] as String?,
        notes: json['notes'] as String?,
      );
    }
    return null;
  }
}
