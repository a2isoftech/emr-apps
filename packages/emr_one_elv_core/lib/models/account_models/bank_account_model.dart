class BankAccountModel {
  BankAccountModel({
    required this.sortCode,
    required this.accountNumber,
    required this.id,
    this.bankName,
    this.accountHolderName,
  });

  String sortCode;
  String accountNumber;
  String? bankName;
  String? accountHolderName;
  int id;

  static BankAccountModel? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      return BankAccountModel(
        sortCode: json['sortCode'] as String,
        accountNumber: json['accountNumber'] as String,
        bankName: json['bankName'] as String?,
        accountHolderName: json['accountHolderName'] as String?,
        id: json['id'] as int,
      );
    }
    return null;
  }

  static List<BankAccountModel>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <BankAccountModel>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BankAccountModel.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}
