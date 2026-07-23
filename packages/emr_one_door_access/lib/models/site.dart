class Site {
  Site({
    required this.id,
    required this.yardCode,
    required this.name,
    required this.createdOn,
    required this.createdBy,
    this.modifiedOn,
    this.modifiedBy,
    this.active,
  });

  factory Site.fromJson(Map<String, dynamic> json) {
    return Site(
      id: json['id'] as String,
      yardCode: json['yardCode'] as String,
      name: json['name'] as String,
      createdOn: DateTime.parse(json['createdOn'] as String),
      createdBy: json['createdBy'] as String,
      modifiedOn: json['modifiedOn'] != null
          ? DateTime.parse(json['modifiedOn'] as String)
          : null,
      modifiedBy: json['modifiedBy'] as String?,
    );
  }
  final String id;
  final String yardCode;
  final String name;
  final DateTime createdOn;
  final String createdBy;
  final DateTime? modifiedOn;
  final String? modifiedBy;
  final bool? active;

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'yardCode': yardCode,
      'name': name,
      'createdOn': createdOn.toIso8601String(),
      'createdBy': createdBy,
      'modifiedOn': modifiedOn?.toIso8601String(),
      'modifiedBy': modifiedBy,
    };
  }

  Site copyWith({
    String? id,
    String? yardCode,
    String? name,
    DateTime? createdOn,
    String? createdBy,
    DateTime? modifiedOn,
    String? modifiedBy,
  }) {
    return Site(
      id: id ?? this.id,
      yardCode: yardCode ?? this.yardCode,
      name: name ?? this.name,
      createdOn: createdOn ?? this.createdOn,
      createdBy: createdBy ?? this.createdBy,
      modifiedOn: modifiedOn ?? this.modifiedOn,
      modifiedBy: modifiedBy ?? this.modifiedBy,
    );
  }
}
