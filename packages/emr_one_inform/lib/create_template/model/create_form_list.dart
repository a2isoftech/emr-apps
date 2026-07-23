class FormList {
  FormList({
    this.id,
    this.listName,
    this.listValues,
    this.createdBy,
    this.createdDate,
    this.modifiedBy,
    this.modifiedDate,
    this.isActive,
  });

  factory FormList.fromJson(Map<String, dynamic> json) =>
      _$CreateFormListFromJson(json);

  final int? id;
  final String? listName;
  final String? listValues;
  final String? createdBy;
  final DateTime? createdDate;
  final String? modifiedBy;
  final DateTime? modifiedDate;
  final bool? isActive;

  Map<String, dynamic> toJson() => createFormListToJson(this);
}

FormList _$CreateFormListFromJson(
  Map<String, dynamic> json,
) =>
    FormList(
      id: json['id'] as int?,
      listName: json['listName'] as String?,
      listValues: json['listValues'] as String?,
      createdBy: json['createdBy'] as String?,
      createdDate: json['createdDate'] == null
          ? null
          : DateTime.parse(json['createdDate'] as String),
      modifiedBy: json['modifiedBy'] as String?,
      modifiedDate: json['modifiedDate'] == null
          ? null
          : DateTime.parse(json['modifiedDate'] as String),
      isActive: json['isActive'] as bool?,
    );

Map<String, dynamic> createFormListToJson(
  FormList instance,
) =>
    <String, dynamic>{
      'id': instance.id,
      'listName': instance.listName,
      'listValues': instance.listValues,
      'createdBy': instance.createdBy,
      'createdDate': instance.createdDate?.toIso8601String(),
      'modifiedBy': instance.modifiedBy,
      'modifiedDate': instance.modifiedDate?.toIso8601String(),
      'isActive': instance.isActive,
    };
