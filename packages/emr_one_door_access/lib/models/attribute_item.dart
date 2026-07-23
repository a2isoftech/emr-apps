class AttributeItem {
  AttributeItem({required this.key, required this.value});

  factory AttributeItem.fromJson(Map<String, dynamic> json) {
    return AttributeItem(
      key: json['key'] as String? ?? '',
      value: json['value'] as String? ?? '',
    );
  }
  final String key;
  final String value;

  Map<String, dynamic> toJson() {
    return {'key': key, 'value': value};
  }
}
