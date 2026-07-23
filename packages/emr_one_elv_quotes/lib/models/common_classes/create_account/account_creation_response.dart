
import 'package:emr_one_elv_core/models/account_models/account_models.dart';

class AccountCreationResponse {
  AccountCreationResponse({
    this.result,
    this.error,
  });

  AccountModel? result;
  String? error;

  static AccountCreationResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      return AccountCreationResponse(
        result: AccountModel.fromJson(json['result']),
        error: json['error'] as String?,
      );
    }
    return null;
  }

  static List<AccountCreationResponse>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <AccountCreationResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AccountCreationResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}
