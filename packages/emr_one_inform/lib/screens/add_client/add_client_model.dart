class SaveClientRequest {
  SaveClientRequest({
    required this.id,
    this.title,
    this.isEditable,
    this.isD365,
    this.isActive,
    this.defaultWorkRequestType,
    this.defaultLifeCycleState,
    this.canSchedule,
  });

  factory SaveClientRequest.fromJson(Map<String, dynamic> json) =>
      _$SaveClientRequestFromJson(json);
  final int id;
  final String? title;
  final bool? isEditable;
  final bool? isD365;
  final bool? isActive;
  final String? defaultWorkRequestType;
  final String? defaultLifeCycleState;
  final bool? canSchedule;

  Map<String, dynamic> toJson() => _$SaveClientRequestToJson(this);
}

SaveClientRequest _$SaveClientRequestFromJson(Map<String, dynamic> json) =>
    SaveClientRequest(
      id: json['id'] as int,
      title: json['title'] as String?,
      isEditable: json['isEditable'] as bool?,
      isD365: json['isD365'] as bool?,
      isActive: json['isActive'] as bool?,
      defaultWorkRequestType: json['defaultWorkRequestType'] as String?,
      defaultLifeCycleState: json['defaultLifeCycleState'] as String?,
      canSchedule: json['canSchedule'] as bool?,
    );

Map<String, dynamic> _$SaveClientRequestToJson(SaveClientRequest instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'isEditable': instance.isEditable,
      'isD365': instance.isD365,
      'isActive': instance.isActive,
      'defaultWorkRequestType': instance.defaultWorkRequestType,
      'defaultLifeCycleState': instance.defaultLifeCycleState,

      'canSchedule': instance.canSchedule,
    };
