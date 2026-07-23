import 'package:emr_flutter_theme/emr_flutter_theme.dart';
import 'package:emr_one_core/eo_constants.dart';
import 'package:emr_one_core/extensions/build_context_extensions.dart';
import 'package:emr_one_elv_inspection/pages/inspection_raven_migration/inspection/controller/inspection_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class InspectionCompleteScreen extends StatelessWidget {
  const InspectionCompleteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<InspectionController>(context);
    final vehicleDetail = controller.state.vehicleQuote.vehicleInfo.detail;
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
              '${vehicleDetail.make}'
              ' ${vehicleDetail.model}'
              ' ${vehicleDetail.vehicleIdentifier}'
              '\n${context.l10n.inspectionComplete}',
              style: EmrOneConstants.kSmallHeadingTextStyle,
              textAlign: TextAlign.center,
            ),
          ),
          ElevatedButton(
            onPressed: context.pop,
            child: Text(context.l10n.finish),
          ),
        ],
      ),
    );
  }
}
