class CreateFormListRequest {
  CreateFormListRequest({
    this.id,
    this.listName,
    this.listValues,
    this.createdBy,
    this.createdDate,
    this.isActive,
  });

  factory CreateFormListRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateFormListRequestFromJson(json);
  final int? id;
  final String? listName;
  final String? listValues;
  final String? createdBy;
  final DateTime? createdDate;
  final bool? isActive;

  Map<String, dynamic> toJson() => _$CreateFormListRequestToJson(this);
}

CreateFormListRequest _$CreateFormListRequestFromJson(
  Map<String, dynamic> json,
) =>
    CreateFormListRequest(
      id: json['id'] as int,
      createdBy: json['createdBy'] as String?,
      listName: json['listName'] as String?,
      listValues: json['listValues'] as String?,
      createdDate: json['createdDate'] == null
          ? null
          : DateTime.parse(json['createdDate'] as String),
      isActive: json['isActive'] as bool?,
    );

Map<String, dynamic> _$CreateFormListRequestToJson(
  CreateFormListRequest instance,
) =>
    <String, dynamic>{
      'id': instance.id,
      'listName': instance.listName,
      'listValues': instance.listValues,
      'createdBy': instance.createdBy,
      'createdDate': instance.createdDate?.toIso8601String(),
      'isActive': instance.isActive,
    };

class UpdateFormListRequest {
  UpdateFormListRequest({
    required this.id,
    this.listName,
    this.listValues,
    this.modifiedBy,
    this.modifiedDate,
    this.isActive,
  });

  factory UpdateFormListRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateFormListRequestFromJson(json);
  final int id;
  final String? listName;
  final String? listValues;
  final String? modifiedBy;
  final DateTime? modifiedDate;
  final bool? isActive;

  Map<String, dynamic> toJson() => _$UpdateFormListRequestToJson(this);
}

UpdateFormListRequest _$UpdateFormListRequestFromJson(
  Map<String, dynamic> json,
) =>
    UpdateFormListRequest(
      id: json['id'] as int,
      modifiedBy: json['modifiedBy'] as String?,
      listName: json['listName'] as String?,
      listValues: json['listValues'] as String?,
      modifiedDate: json['modifiedDate'] == null
          ? null
          : DateTime.parse(json['modifiedDate'] as String),
      isActive: json['isActive'] as bool?,
    );

Map<String, dynamic> _$UpdateFormListRequestToJson(
  UpdateFormListRequest instance,
) =>
    <String, dynamic>{
      'id': instance.id,
      'listName': instance.listName,
      'listValues': instance.listValues,
      'modifiedBy': instance.modifiedBy,
      'modifiedDate': instance.modifiedDate?.toIso8601String(),
      'isActive': instance.isActive,
    };

class DeleteFormListRequest {
  DeleteFormListRequest({
    required this.id,
    this.modifiedBy,
    this.modifiedDate,
  });

  factory DeleteFormListRequest.fromJson(Map<String, dynamic> json) =>
      _$DeleteFormListRequestFromJson(json);
  final int id;
  final String? modifiedBy;
  final DateTime? modifiedDate;

  Map<String, dynamic> toJson() => _$DeleteFormListRequestToJson(this);
}

DeleteFormListRequest _$DeleteFormListRequestFromJson(
  Map<String, dynamic> json,
) =>
    DeleteFormListRequest(
      id: json['id'] as int,
      modifiedBy: json['modifiedBy'] as String?,
      modifiedDate: json['modifiedDate'] == null
          ? null
          : DateTime.parse(json['modifiedDate'] as String),
    );

Map<String, dynamic> _$DeleteFormListRequestToJson(
  DeleteFormListRequest instance,
) =>
    <String, dynamic>{
      'id': instance.id,
      'modifiedBy': instance.modifiedBy,
      'modifiedDate': instance.modifiedDate?.toIso8601String(),
    };
