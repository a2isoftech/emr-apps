import 'package:emr_one_core/extensions/extensions.dart';
import 'package:emr_one_core/widgets/widgets.dart';
import 'package:emr_one_crm/services/contract_controller.dart';
import 'package:flutter/material.dart';

class CWNotes extends StatelessWidget {
  const CWNotes({
    required this.controller,
    super.key,
  });

  final ContractController controller;
  static const int kNotesMaxLines = 4;

  @override
  Widget build(BuildContext context) {
    final expansionTileTheme = ExpansionTileTheme.of(context);

    return EmrExpansionTile(
      initiallyExpanded: true,
      backgroundColor: Colors.transparent,
      title: Text(
        context.l10n.notes,
        style: TextStyle(color: expansionTileTheme.textColor),
      ),
      child: Column(
        children: [
          FormHeadingRow(
            headings: ['${context.l10n.internalNotes}:'],
          ),
          TextFormField(
            maxLines: kNotesMaxLines,
            initialValue: controller.model!.internalNotes,
            onChanged: (value) => controller.model!.internalNotes = value,
          ),
          FormHeadingRow(
            headings: ['${context.l10n.externalNotes}:'],
          ),
          TextFormField(
            maxLines: kNotesMaxLines,
            initialValue: controller.model!.externalNotes,
            onChanged: (value) => controller.model!.externalNotes = value,
          ),
          FormHeadingRow(
            headings: ['${context.l10n.paymentNotes}:'],
          ),
          TextFormField(
            maxLines: kNotesMaxLines,
            initialValue: controller.model!.paymentNotes,
            onChanged: (value) => controller.model!.paymentNotes = value,
          ),
          FormHeadingRow(
            headings: ['${context.l10n.deliveryNotes}:'],
          ),
          TextFormField(
            maxLines: kNotesMaxLines,
            initialValue: controller.model!.deliveryNotes,
            onChanged: (value) => controller.model!.deliveryNotes = value,
          ),
        ],
      ),
    );
  }
}
