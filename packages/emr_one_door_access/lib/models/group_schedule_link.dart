import 'package:emr_one_door_access/models/models.dart';

class GroupScheduleLink {
  GroupScheduleLink({
    required this.adGroup,
    required this.schedules,
    required this.userFriendlyStrings,
  });
  final AdGroup adGroup;
  final List<String> schedules;
  final List<String>? userFriendlyStrings;
}
