import 'package:emr_one_inform/screens/team/team_model.dart';

class CreateTeamRequest {
  CreateTeamRequest({
    this.name,
    this.teamMembers,
  });

  CreateTeamRequest.fromJson(Map<String, dynamic> json) {
    name = json['name'] as String;
    if (json['teamMembers'] != null) {
      teamMembers = <TeamMember>[];
      for (final v in json['teamMembers'] as List<Map<String, dynamic>>) {
        teamMembers!.add(TeamMember.fromJson(v));
      }
    }
  }
  String? name;
  List<TeamMember>? teamMembers;

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['name'] = name;
    if (teamMembers != null) {
      data['teamMembers'] = teamMembers!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class UpdateTeamRequest {
  UpdateTeamRequest({
    this.uuid,
    this.name,
    this.teamMembers,
    this.isActive,
  });

  UpdateTeamRequest.fromJson(Map<String, dynamic> json) {
    uuid = json['uuid'] as String;
    name = json['name'] as String;
    if (json['teamMembers'] != null) {
      teamMembers = <TeamMember>[];
      for (final v in json['teamMembers'] as List<Map<String, dynamic>>) {
        teamMembers!.add(TeamMember.fromJson(v));
      }
    }
    isActive = json['isActive'] as bool;
  }
  String? uuid;
  String? name;
  List<TeamMember>? teamMembers;
  bool? isActive;

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['uuid'] = uuid;
    data['name'] = name;
    if (teamMembers != null) {
      data['teamMembers'] = teamMembers!.map((v) => v.toJson()).toList();
    }
    data['isActive'] = isActive;
    return data;
  }
}

class DeleteTeamRequest {
  DeleteTeamRequest({
    this.uuid,
  });

  DeleteTeamRequest.fromJson(Map<String, dynamic> json) {
    uuid = json['uuid'] as String;
  }
  String? uuid;

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['uuid'] = uuid;
    return data;
  }
}
