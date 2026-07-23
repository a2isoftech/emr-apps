import 'package:emr_one_core/eo_constants.dart';
import 'package:emr_one_core/extensions/extensions.dart';
import 'package:emr_one_crm/services/contract_controller.dart';
import 'package:flutter/material.dart';

class CWProcessing extends StatelessWidget {
  const CWProcessing({required this.controller, super.key});

  final ContractController controller;

  @override
  Widget build(BuildContext context) {
    final expansionTileTheme = ExpansionTileTheme.of(context);

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          context.l10n.savingContract.toUpperCase(),
          style: EmrOneConstants.kSmallHeadingTextStyle
              .copyWith(color: expansionTileTheme.textColor),
        ),
        const SizedBox(height: Insets.gutter),
        const Center(
          child: CircularProgressIndicator(),
        ),
      ],
    );
  }
}
