import 'package:emr_one_core/extensions/extensions.dart';
import 'package:emr_one_core/validators/validators.dart';
import 'package:emr_one_core/widgets/widgets.dart';
import 'package:emr_one_crm/models/models.dart';
import 'package:emr_one_crm/services/contract_controller.dart';
import 'package:emr_one_crm/temp/arising_point_provider.dart';
import 'package:flutter/material.dart';

class CWArisingPointSelectMobile extends StatefulWidget {
  const CWArisingPointSelectMobile({
    required this.controller,
    required this.title,
    required this.onSelected,
    required this.getSelectedText,
    super.key,
  });

  final ContractController controller;
  final String title;
  final void Function(ArisingPoint) onSelected;
  final String Function() getSelectedText;

  @override
  State<CWArisingPointSelectMobile> createState() =>
      _CWArisingPointSelectMobileState();
}

class _CWArisingPointSelectMobileState
    extends State<CWArisingPointSelectMobile> {
  late final ArisingPointProvider provider;

  @override
  void initState() {
    super.initState();

    provider = ArisingPointProvider(
      widget.controller.client,
      widget.controller.model!.partyAccountNo,
      Uri.parse(widget.controller.appConfig.tradeRUrl),
    );
  }

  @override
  Widget build(BuildContext context) {
    final selectedText = widget.getSelectedText();
    return Column(
      children: [
        FormHeadingRow(
          key: widget.controller.arisignPointKey,
          headings: [
            widget.title,
          ],
        ),
        FormRow(
          children: [
            EmrPicker<ArisingPoint>(
              labelText: context.l10n.selectLocation,
              itemTitleText: (arisingPoint) => arisingPoint.aliasCode,
              itemSubtitleText: (arisingPoint) => arisingPoint.shortName,
              items: (query) {
                return provider.getSuggestions(
                  query,
                );
              },
              mode: EmrPickerMode.inline,
              initialValue: selectedText,
              validator: Validators.required,
              onItemSelected: (arisingPoint) {
                widget.controller.model!.selectedArisingPoints.clear();
                widget.controller.model!.selectedArisingPoints
                    .add(arisingPoint);
                if (widget.controller.model!.pricingList.isNotEmpty) {
                  widget.controller.model!.regenerateGrades = true;
                }
                widget.onSelected(arisingPoint);
                setState(() {});
              },
              onCleared: () {
                widget.controller.model!.selectedArisingPoints.clear();
                setState(() {});
              },
            ),
          ],
        ),
      ],
    );
  }
}
