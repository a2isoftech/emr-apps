import 'package:emr_one_fire_register/models/enums.dart';
import 'package:emr_one_fire_register/screens/fire_register_controller.dart';
import 'package:emr_one_fire_register/screens/fire_register_screen/widgets/widgets.dart';
import 'package:flutter/material.dart';

class GridToggleWidget extends StatelessWidget {
  const GridToggleWidget({
    required this.addNoteController,
    required this.controller,
    super.key,
  });

  final FireRegisterController controller;
  final TextEditingController addNoteController;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        if (controller.frcTab.value == FrcTab.punches)
          GridWidget(
            addNoteController: addNoteController,
            controller: controller,
          ),
        if (controller.frcTab.value == FrcTab.fireRollCallLogs)
          FrcGridWidget(
            controller: controller,
          ),
        if (controller.frcTab.value == FrcTab.missingFromMusterPoint)
          MissingGridWidget(
            controller: controller,
          ),
      ],
    );
  }
}
