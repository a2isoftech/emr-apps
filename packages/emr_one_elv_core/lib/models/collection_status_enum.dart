class CollectionStatusEnum {
  const CollectionStatusEnum._(this.value);

  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const unknown = CollectionStatusEnum._('Unknown');
  static const pendingAllocation = CollectionStatusEnum._('PendingAllocation');
  static const allocated = CollectionStatusEnum._('Allocated');

  static const values = <CollectionStatusEnum>[
    unknown,
    pendingAllocation,
    allocated,
  ];

  static CollectionStatusEnum? fromJson(dynamic value) =>
      CollectionStatusEnumTypeTransformer().decode(value);

  static List<CollectionStatusEnum>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <CollectionStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CollectionStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

class CollectionStatusEnumTypeTransformer {
  factory CollectionStatusEnumTypeTransformer() =>
      _instance ??= const CollectionStatusEnumTypeTransformer._();

  const CollectionStatusEnumTypeTransformer._();
  String encode(CollectionStatusEnum data) => data.value;
  CollectionStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data.toString()) {
        case 'Unknown':
          return CollectionStatusEnum.unknown;
        case 'PendingAllocation':
          return CollectionStatusEnum.pendingAllocation;
        case 'Allocated':
          return CollectionStatusEnum.allocated;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  static CollectionStatusEnumTypeTransformer? _instance;
}
