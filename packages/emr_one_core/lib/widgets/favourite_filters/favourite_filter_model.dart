class FavouriteFilterModel {
  FavouriteFilterModel({
    required this.key,
    this.value,
    this.text,
  });

  factory FavouriteFilterModel.fromJson(Map<String, dynamic> json) {
    return FavouriteFilterModel(
      key: json['key'] as String,
      text: json['text'] as String?,
      value: json['value'] is String && _isIsoString(json['value'] as String)
          ? DateTime.parse(json['value'] as String)
          : json['value'],
    );
  }

  final String key;
  final String? text;
  final dynamic value;

  Map<String, dynamic> toJson() => <String, dynamic>{
        'key': key,
        'text': text,
        'value':
            value is DateTime ? (value as DateTime).toIso8601String() : value,
      };

  static bool _isIsoString(String str) {
    try {
      DateTime.parse(str);
      return true;
    } catch (e) {
      return false;
    }
  }
}
