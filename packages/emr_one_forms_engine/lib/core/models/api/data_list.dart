class DataList {
  final int id;
  final String listName;
  final bool isActive;

  DataList({
    required this.id,
    required this.listName,
    required this.isActive,
  });

  factory DataList.fromJson(Map<String, dynamic> json) =>
      _$DataListFromJson(json);

  Map<String, dynamic> toJson() => _$DataListToJson(this);
}

DataList _$DataListFromJson(Map<String, dynamic> json) => DataList(
      id: json['id'] as int,
      listName: json['listName'] as String,
      isActive: json['isActive'] as bool,
    );

Map<String, dynamic> _$DataListToJson(DataList instance) => <String, dynamic>{
      'id': instance.id,
      'listName': instance.listName,
      'isActive': instance.isActive,
    };
