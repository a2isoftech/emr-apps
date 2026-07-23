class PaymentMethod {

  const PaymentMethod._(this.value);

  final String value;

  @override
  String toString() => value;
  String toJson() => value;

  static const unknown = PaymentMethod._('Unknown');
  static const bankTransfer = PaymentMethod._('BankTransfer');
  static const atm = PaymentMethod._('ATM');

  static const values = <PaymentMethod>[
    unknown,
    bankTransfer,
    atm,
  ];

  static PaymentMethod? fromJson(dynamic value) =>
      PaymentMethodTypeTransformer().decode(value);

  static List<PaymentMethod>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <PaymentMethod>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PaymentMethod.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

class PaymentMethodTypeTransformer {
  factory PaymentMethodTypeTransformer() =>
      _instance ??= const PaymentMethodTypeTransformer._();

  const PaymentMethodTypeTransformer._();

  String encode(PaymentMethod data) => data.value;
  PaymentMethod? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data.toString()) {
        case 'Unknown':
          return PaymentMethod.unknown;
        case 'BankTransfer':
          return PaymentMethod.bankTransfer;
        case 'ATM':
          return PaymentMethod.atm;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }
  static PaymentMethodTypeTransformer? _instance;
}
