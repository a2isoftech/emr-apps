import 'package:emr_one_core/eo_constants.dart';
import 'package:emr_one_core/extensions/extensions.dart';
import 'package:emr_one_core/widgets/form_row.dart';
import 'package:emr_one_crm/screens/parties_new_price_list/parties_price_wiz_controller.dart';
import 'package:flutter/material.dart';

class CollectionOptions extends StatefulWidget {
  const CollectionOptions({
    required this.controller,
    required this.formKey,
    required this.enabled,
    super.key,
  });

  final PartiesPriceListWizardController controller;
  final GlobalKey<FormState> formKey;
  final bool enabled;

  @override
  State<CollectionOptions> createState() => _CollectionOptionsState();
}

class _CollectionOptionsState extends State<CollectionOptions> {
  late final TextEditingController collectionChargeController;

  @override
  void initState() {
    super.initState();
    collectionChargeController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    collectionChargeController.text =
        widget.controller.model!.collectedLessCharge == '0'
            ? ''
            : widget.controller.model!.collectedLessCharge;
    return Visibility(
      visible: widget.enabled,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: Insets.gutter / 2),
                child: Text(
                  '${context.l10n.fullyCharged}:',
                  style: EmrOneConstants.kSmallestHeadingTextStyle,
                ),
              ),
              Switch(
                value: widget.controller.model!.isFullyCharged,
                onChanged: (value) {
                  widget.controller.setFullyCharged(isFullyCharged: value);
                },
              ),
            ],
          ),
          FormHeadingRow(
            headings: ['${context.l10n.haulageCharge}:'],
            disabled: widget.controller.model!.isFullyCharged,
          ),
          TextField(
            autofocus: true,
            enabled: !widget.controller.model!.isFullyCharged,
            keyboardType: TextInputType.number,
            onChanged: (value) {
              widget.controller.model?.collectedLessCharge = value;
            },
            controller: collectionChargeController,
            decoration: InputDecoration(
              isDense: true,
              fillColor: isDark ? Colors.grey[900] : Colors.grey[50],
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
