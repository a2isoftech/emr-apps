class UomCode {
  /// Instantiate a new enum with the provided [value].
  const UomCode._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const mt = UomCode._('MT');
  static const lb = UomCode._('LB');
  static const gt = UomCode._('GT');
  static const nt = UomCode._('NT');
  static const kg = UomCode._('KG');
  static const ld = UomCode._('LD');
  static const ea = UomCode._('EA');
  static const lt = UomCode._('LT');
  static const hr = UomCode._('HR');
  static const cwt = UomCode._('CWT');

  /// List of all possible values in this [enum][UomCode].
  static const values = <UomCode>[
    mt,
    lb,
    gt,
    nt,
    kg,
    ld,
    ea,
    lt,
    hr,
    cwt,
  ];

  static UomCode? fromJson(dynamic value) =>
      UomCodeTypeTransformer().decode(value);

  static List<UomCode>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <UomCode>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UomCode.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

class UomCodeTypeTransformer {
  factory UomCodeTypeTransformer() =>
      _instance ??= const UomCodeTypeTransformer._();

  const UomCodeTypeTransformer._();

  String encode(UomCode data) => data.value;

  UomCode? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      if (data is int) {
        switch (data) {
          case 0:
            return UomCode.mt;
          case 1:
            return UomCode.lb;
          case 2:
            return UomCode.gt;
          case 3:
            return UomCode.nt;
          case 4:
            return UomCode.kg;
          case 5:
            return UomCode.ld;
          case 6:
            return UomCode.ea;
          case 7:
            return UomCode.lt;
          case 8:
            return UomCode.hr;
          case 9:
            return UomCode.cwt;
          default:
            if (!allowNull) {
              throw ArgumentError('Unknown enum value to decode: $data');
            }
        }
      } else if (data is String) {
        switch (data) {
          case 'MT':
            return UomCode.mt;
          case 'LB':
            return UomCode.lb;
          case 'GT':
            return UomCode.gt;
          case 'NT':
            return UomCode.nt;
          case 'KG':
            return UomCode.kg;
          case 'LD':
            return UomCode.ld;
          case 'EA':
            return UomCode.ea;
          case 'LT':
            return UomCode.lt;
          case 'HR':
            return UomCode.hr;
          case 'CWT':
            return UomCode.cwt;
          default:
            if (!allowNull) {
              throw ArgumentError('Unknown enum value to decode: $data');
            }
        }
      }
    }
    return null;
  }

  static UomCodeTypeTransformer? _instance;
}
