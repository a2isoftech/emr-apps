class DataListValue {
  final String id;
  final int listId;
  final String text;
  final String value;
  final int orderIndex;
  final bool active;

  DataListValue({
    required this.id,
    required this.listId,
    required this.text,
    required this.value,
    required this.orderIndex,
    required this.active,
  });

  factory DataListValue.fromJson(Map<String, dynamic> json) =>
      _$DataListValueFromJson(json);

  Map<String, dynamic> toJson() => _$DataListValueToJson(this);
}

DataListValue _$DataListValueFromJson(Map<String, dynamic> json) =>
    DataListValue(
      id: json['id'].toString(),
      listId: json['listId'] as int,
      text: json['text'] as String,
      value: json['value'] as String,
      orderIndex: json['orderIndex'] as int,
      active: json['active'] as bool,
    );

Map<String, dynamic> _$DataListValueToJson(DataListValue instance) =>
    <String, dynamic>{
      'id': instance.id,
      'listId': instance.listId,
      'text': instance.text,
      'value': instance.value,
      'orderIndex': instance.orderIndex,
      'active': instance.active,
    };
