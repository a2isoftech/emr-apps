import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_elv_core/widgets/dialog/elv_selection_dialog.dart';
import 'package:emr_one_elv_quotes/pages/vin_scrap/vin_scrap_quote_controller.dart';
import 'package:emr_sharedtypes/models/yard.dart';
import 'package:flutter/material.dart';

class ChangeYard extends StatelessWidget {
  const ChangeYard({
    required this.controller,
    super.key,
  });

  final VINScrapController controller;

  @override
  Widget build(BuildContext context) {
    final yardSearchController = TextEditingController();
    return Padding(
      padding: const EdgeInsets.all(Insets.gutter / 2),
      child: Column(
        children: [
          Text(
            controller.getYardName(),
            style: EmrOneConstants.kTinyHeadingTextStyle,
          ),
          OutlinedButton(
            onPressed: () {
              showElvSelectionDialog<Yard>(
                context: context,
                items: controller.state.otherYards,
                displayString: (yard) => '${yard.name} (${yard.yardCode})',
                onTap: (e) {
                  context.pop();
                  controller.selectYard(e);
                },
                searchController: yardSearchController,
                title: context.l10n.changeYard,
                label: context.l10n.yardCode,
              );
            },
            child: Text(
              context.l10n.changeYard,
            ),
          ),
        ],
      ),
    );
  }
}
