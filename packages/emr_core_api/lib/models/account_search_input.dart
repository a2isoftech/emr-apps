import 'dart:convert';

class AccountSearchInput {
  AccountSearchInput({
    this.freeText,
    this.accountTypeFilter,
    this.accountManagerFilter,
    this.accountStatusFilter,
  });

  AccountSearchInput.fromJson(Map<String, dynamic> json) {
    accountTypeFilter = json['accountTypeFilter'] == null
        ? null
        : (json['accountTypeFilter'] as List?)?.cast<String>();

    accountManagerFilter = json['accountManagerFilter'] == null
        ? null
        : (json['accountManagerFilter'] as List?)?.cast<String>();

    accountStatusFilter = json['accountStatusFilter'] == null
        ? null
        : (json['accountStatusFilter'] as List?)?.cast<String>();

    freeText = json['freeText'] as String?;
  }

  AccountSearchInput.fromJsonString(String json) {
    final obj = jsonDecode(json) as Map<String, dynamic>;
    accountTypeFilter = obj['accountTypeFilter'] == null
        ? null
        : (obj['accountTypeFilter'] as List?)?.cast<String>();
    accountManagerFilter = obj['accountManagerFilter'] == null
        ? null
        : (obj['accountManagerFilter'] as List?)?.cast<String>();
    accountStatusFilter = obj['accountStatusFilter'] == null
        ? null
        : (obj['accountStatusFilter'] as List?)?.cast<String>();

    freeText = obj['freeText'] as String?;
  }
  late String? freeText;

  late List<String>? accountTypeFilter;
  late List<String>? accountManagerFilter;
  late List<String>? accountStatusFilter;

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};

    data['accountTypeFilter'] = accountTypeFilter;
    data['accountManagerFilter'] = accountManagerFilter;
    data['accountStatusFilter'] = accountStatusFilter;

    data['freeText'] = freeText;

    return data;
  }

  String toJsonString() {
    return jsonEncode(toJson());
  }
}
