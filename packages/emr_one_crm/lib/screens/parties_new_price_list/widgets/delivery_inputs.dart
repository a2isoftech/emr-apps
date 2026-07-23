import 'package:emr_flutter_theme/emr_flutter_theme.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_crm/emr_one_crm_constants.dart';
import 'package:emr_one_crm/screens/parties_new_price_list/parties_price_wiz_controller.dart';
import 'package:flutter/material.dart';

class CollectedInputs extends StatefulWidget {
  const CollectedInputs({
    required this.myController,
    super.key,
  });

  final PartiesPriceListWizardController myController;

  @override
  State<CollectedInputs> createState() => _CollectedInputsState();
}

class _CollectedInputsState extends State<CollectedInputs> {
  late final TextEditingController collectionChargeController;

  @override
  void initState() {
    super.initState();
    collectionChargeController = TextEditingController();
  }

  bool get isFullyCharged =>
      widget.myController.model?.deliveryType ==
      CrmDeliveryMethod.collectedFullyCharged;

  bool get isDelivered =>
      widget.myController.model?.deliveryType == CrmDeliveryMethod.delivered;

  bool get isDeliveryNull => widget.myController.model?.deliveryType == null;

  bool get isBoth =>
      widget.myController.model?.deliveryType == CrmDeliveryMethod.both;

  bool get isCollectionChargeDisabled => isDeliveryNull || isDelivered;

  TextStyle get defaultTextStyle => EmrOneConstants.kSmallestHeadingTextStyle;
  TextStyle get greyTextStyle => defaultTextStyle.copyWith(color: Colors.grey);

  TextStyle get styleForDeliveryMethod =>
      (isDelivered || isDeliveryNull || isBoth)
          ? greyTextStyle
          : defaultTextStyle;

  bool get isInputDisabled => isFullyCharged || isDeliveryNull || isDelivered;
  TextStyle get styleForFullyCharged =>
      isCollectionChargeDisabled ? greyTextStyle : defaultTextStyle;
  TextStyle get styleForHaulageCharge =>
      isInputDisabled ? greyTextStyle : defaultTextStyle;

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    collectionChargeController.text =
        widget.myController.model!.collectedLessCharge == '0'
            ? ''
            : widget.myController.model!.collectedLessCharge;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '${context.l10n.fullyCharged.toUpperCase()}?',
          style: styleForFullyCharged,
        ),
        Switch(
          activeThumbColor: EmrColours.primaryBlue,
          value: isFullyCharged,
          onChanged: !isCollectionChargeDisabled
              ? (value) {
                  widget.myController
                      .setDeliveryType(CrmDeliveryMethod.collected);
                }
              : null,
        ),
        Text(
          '${context.l10n.haulageCharge.toUpperCase()}:',
          style: styleForHaulageCharge,
        ),
        Row(
          children: [
            SizedBox(
              width: 200,
              height: 50,
              child: TextField(
                autofocus: true,
                enabled: !isInputDisabled,
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  widget.myController.model?.collectedLessCharge = value;
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
            ),
          ],
        ),
      ],
    );
  }
}
