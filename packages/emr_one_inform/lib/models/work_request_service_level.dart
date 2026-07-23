class WorkRequestServiceLevel {
  WorkRequestServiceLevel({
    required this.id,
    this.name,
  });

  factory WorkRequestServiceLevel.fromJson(Map<String, dynamic> json) =>
      _$WorkRequestServiceLevelFromJson(json);

  final int id;
  final String? name;

  Map<String, dynamic> toJson() => _$WorkRequestServiceLevelToJson(this);
}

WorkRequestServiceLevel _$WorkRequestServiceLevelFromJson(
  Map<String, dynamic> json,
) =>
    WorkRequestServiceLevel(
      id: json['id'] as int,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$WorkRequestServiceLevelToJson(
  WorkRequestServiceLevel instance,
) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };
