import 'package:emr_sharedtypes/models/teams/team_member.dart';

class Team {
  Team({required this.id, required this.name, this.members});
  final String id;
  final String name;
  final List<TeamMember>? members;
}
