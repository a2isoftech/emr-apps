class QuoteTypeEnum {
  const QuoteTypeEnum._(this.value);
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const unknown = QuoteTypeEnum._('Unknown');
  static const collected = QuoteTypeEnum._('Collected');
  static const delivered = QuoteTypeEnum._('Delivered');

  static const values = <QuoteTypeEnum>[
    unknown,
    collected,
    delivered,
  ];

  static QuoteTypeEnum? fromJson(dynamic value) =>
      QuoteTypeEnumTypeTransformer().decode(value);

  static List<QuoteTypeEnum>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <QuoteTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = QuoteTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

class QuoteTypeEnumTypeTransformer {
  factory QuoteTypeEnumTypeTransformer() =>
      _instance ??= const QuoteTypeEnumTypeTransformer._();

  const QuoteTypeEnumTypeTransformer._();

  String encode(QuoteTypeEnum data) => data.value;

  QuoteTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data.toString()) {
        case 'Unknown':
          return QuoteTypeEnum.unknown;
        case 'Collected':
          return QuoteTypeEnum.collected;
        case 'Delivered':
          return QuoteTypeEnum.delivered;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  static QuoteTypeEnumTypeTransformer? _instance;
}
