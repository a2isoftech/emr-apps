import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/material.dart';

class EditTeamAccessFormData {
  EditTeamAccessFormData(Team? team) {
    teamNotifier = ValueNotifier<Team?>(team);
  }

  late ValueNotifier<Team?> teamNotifier;
}
