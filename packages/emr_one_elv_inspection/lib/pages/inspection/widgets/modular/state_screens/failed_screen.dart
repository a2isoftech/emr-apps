import 'package:emr_flutter_theme/emr_flutter_theme.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_elv_inspection/pages/inspection/controller/inspection_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class InspectionScreenFailed extends StatelessWidget {
  const InspectionScreenFailed({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<InspectionScreenController>(context);

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.warning,
            color: EmrColours.secondaryYellow,
            size: 100,
          ),
          Padding(
            padding: const EdgeInsets.all(Insets.gutter),
            child: Text(
              context.l10n.failed,
              style: EmrOneConstants.kSmallHeadingTextStyle,
            ),
          ),
          ElevatedButton(
            onPressed: () async {
              await controller.completeInspection();
            },
            child: Text(context.l10n.pleaseTryAgain),
          ),
        ],
      ),
    );
  }
}
