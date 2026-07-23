import 'package:emr_one_elv_core/models/account_models/payment_method.dart';

class UpdatePaymentMethodDetailsRequest {
  UpdatePaymentMethodDetailsRequest({
    this.bankAccountId,
    this.paymentMethod,
  });

  int? bankAccountId;
  PaymentMethod? paymentMethod;

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (bankAccountId != null) {
      json['bankAccountId'] = bankAccountId;
    }
    if (paymentMethod != null) {
      json['paymentMethod'] = paymentMethod;
    }
    return json;
  }

  static UpdatePaymentMethodDetailsRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return UpdatePaymentMethodDetailsRequest(
        bankAccountId: json['bankAccountId'] as int?,
        paymentMethod: PaymentMethod.fromJson(json['paymentMethod']),
      );
    }
    return null;
  }

  static List<UpdatePaymentMethodDetailsRequest>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <UpdatePaymentMethodDetailsRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UpdatePaymentMethodDetailsRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}
