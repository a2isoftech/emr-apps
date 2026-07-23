import 'package:emr_flutter_theme/emr_flutter_theme.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_elv_inspection/pages/inspection/controller/inspection_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class InspectionCompleteScreen extends StatelessWidget {
  const InspectionCompleteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<InspectionScreenController>(context);
    final vehicleDescription =
        controller.state.quoteToInspect!.vehicleDescription;
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.check_circle,
            color: EmrColours.primaryGreen,
            size: 100,
          ),
          Padding(
            padding: const EdgeInsets.all(Insets.gutter),
            child: SelectableText(
              '${vehicleDescription.make}'
              ' ${vehicleDescription.model}'
              ' ${vehicleDescription.vin ?? ''}'
              '\n${context.l10n.inspectionComplete}',
              style: EmrOneConstants.kSmallHeadingTextStyle,
              textAlign: TextAlign.center,
            ),
          ),
          ElevatedButton(
            onPressed: context.pop,
            child: Text(
              context.l10n.finish,
            ),
          ),
        ],
      ),
    );
  }
}
