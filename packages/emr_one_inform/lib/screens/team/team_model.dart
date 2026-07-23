class Team {
  Team({
    this.uuid,
    this.name,
    this.teamMembers,
    this.createdBy,
    this.createdByUuid,
    this.createdOn,
    this.modifiedBy,
    this.modifiedByUuid,
    this.modifiedOn,
    this.isActive,
  });

  Team.fromJson(Map<String, dynamic> json) {
    uuid = json['uuid'] as String;
    name = json['name'] as String;
    if (json['teamMembers'] != null) {
      teamMembers = <TeamMember>[];
      for (final v in json['teamMembers'] as List<Map<String, dynamic>>) {
        teamMembers!.add(TeamMember.fromJson(v));
      }
    }
    createdBy = json['createdBy'] as String;
    createdByUuid = json['createdByUuid'] as String;
    createdOn = DateTime.parse(json['createdOn'] as String);
    modifiedBy = json['modifiedBy'] as String?;
    modifiedByUuid = json['modifiedByUuid'] as String?;
    modifiedOn = json['modifiedOn'] == null
        ? null
        : DateTime.parse(json['modifiedOn'] as String);
    isActive = json['isActive'] as bool;
  }
  String? uuid;
  String? name;
  List<TeamMember>? teamMembers;
  String? createdBy;
  String? createdByUuid;
  DateTime? createdOn;
  String? modifiedBy;
  String? modifiedByUuid;
  DateTime? modifiedOn;
  bool? isActive;

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['uuid'] = uuid;
    data['name'] = name;
    if (teamMembers != null) {
      data['teamMembers'] = teamMembers!.map((v) => v.toJson()).toList();
    }
    data['createdBy'] = createdBy;
    data['createdByUuid'] = createdByUuid;
    data['createdOn'] = createdOn;
    data['modifiedBy'] = modifiedBy;
    data['modifiedByUuid'] = modifiedByUuid;
    data['modifiedOn'] = modifiedOn;
    data['isActive'] = isActive;
    return data;
  }
}

class TeamMember {
  TeamMember({this.userName, this.userUuid});

  TeamMember.fromJson(Map<String, dynamic> json) {
    userName = json['userName'] as String;
    userUuid = json['userUuid'] as String;
  }
  String? userName;
  String? userUuid;

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['userName'] = userName;
    data['userUuid'] = userUuid;
    return data;
  }
}
