class PickerItem<TKey, TValue> {
  PickerItem(
    this.key,
    this.value, {
    this.metadata = const {},
  });

  PickerItem.empty()
    : key = '' as TKey,
      value = '' as TValue,
      metadata = const {};

  final TKey key;

  final TValue value;

  final Map<String, Object> metadata;

  @override
  String toString() {
    if (value.toString().isEmpty) {
      return '$key';
    }

    return '$key ($value)';
  }
}
