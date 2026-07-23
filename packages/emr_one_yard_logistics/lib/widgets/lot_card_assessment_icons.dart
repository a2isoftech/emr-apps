import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_yard_logistics/constants.dart';
import 'package:emr_one_yard_logistics/models/models.dart';
import 'package:flutter/material.dart';

class LotCardAssessmentIcons extends StatelessWidget {
  const LotCardAssessmentIcons({
    required this.lot,
    super.key,
    this.mainAxisAlignment = MainAxisAlignment.start,
    this.horzShowLeadingIcon = false,
    this.unknownValueText = '-',
  });

  final Lot lot;
  final MainAxisAlignment mainAxisAlignment;
  final bool horzShowLeadingIcon;
  final String unknownValueText;

  @override
  Widget build(BuildContext context) {
    switch (lot.type) {
      case LotType.unknown:
      case LotType.joints:
        return const SizedBox.shrink();
      case LotType.sticks:
        return _buildHorizontal(context);
    }
  }

  Widget _buildHorizontal(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (horzShowLeadingIcon) ...[
          Icon(Icons.assessment_outlined, color: Colors.orange[700]),
          const SizedBox(width: Insets.gutter / 2),
        ],
        ..._getLotCircumferenceIcons(context),
        const SizedBox(width: Insets.gutter / 2),
        ..._getPercentageIcons(context),
      ],
    );
  }

  // Keeping the diameter code-base in we want to add it back again
  // ignore: unused_element
  List<Widget> _getLotOuterDiameterIcons(BuildContext context) {
    final outerDiameterProperty =
        lot.extendedProperties[YlConstants.epLotOuterDiameter];
    double? outerDiameter;
    if (outerDiameterProperty != null && outerDiameterProperty is double) {
      outerDiameter = outerDiameterProperty;
    } else {
      outerDiameter = double.tryParse(outerDiameterProperty.toString());
    }

    final valueColour =
        outerDiameter == null ? Colors.grey : Colors.orange[700];
    final valueText =
        outerDiameter == null ? unknownValueText : '${outerDiameter}mm';

    return [
      Tooltip(
        message: 'Outer Diameter: $outerDiameter',
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  'O.DIA ⌀',
                  style: EmrOneConstants.kBannerTextStyle
                      .copyWith(color: valueColour),
                ),
              ],
            ),
            Text(
              valueText,
              style: EmrOneConstants.kOpenSans12BoldTextStyle
                  .copyWith(color: valueColour),
            ),
          ],
        ),
      ),
    ];
  }

  List<Widget> _getLotCircumferenceIcons(BuildContext context) {
    final circumferenceProperty =
        lot.extendedProperties[YlConstants.epLotCircumference];
    double? circumference;
    if (circumferenceProperty != null && circumferenceProperty is double) {
      circumference = circumferenceProperty;
    } else {
      circumference = double.tryParse(circumferenceProperty.toString());
    }

    final valueColour =
        circumference == null ? Colors.grey : Colors.orange[700];
    final valueText =
        circumference == null ? unknownValueText : '${circumference}cm';

    if (circumference == null) return [];
    return [
      Tooltip(
        message: 'Circumference: $circumference',
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  'O.CIRC',
                  style: EmrOneConstants.kBannerTextStyle
                      .copyWith(color: valueColour),
                ),
              ],
            ),
            Text(
              valueText,
              style: EmrOneConstants.kOpenSans12BoldTextStyle
                  .copyWith(color: valueColour),
            ),
          ],
        ),
      ),
    ];
  }

  List<Widget> _getPercentageIcons(BuildContext context) {
    final widgets = <Widget>[];

    lot.extendedProperties.entries
        .where((x) => x.key.toLowerCase().contains(YlConstants.percentageWord))
        .forEach((element) {
      final name = switch (element.key) {
        YlConstants.epLotDryCopperPercentage => 'Dry Copper',
        YlConstants.epLotLeadPercentage => 'Lead',
        YlConstants.epLotGreasyCopperPercentage => 'Greasy Copper',
        YlConstants.epLotAluminiumPercentage => 'Aluminium',
        _ => 'Unknown', // This handles everything else
      };

      final value = element.value.toString();

      widgets.add(_getToolTipForPercentage(name, value));
      widgets.add(
        const SizedBox(width: Insets.gutter / 2),
      );
    });

    return widgets;
  }

  Widget _getToolTipForPercentage(String name, String? value) {
    final valueColour = value == null ? Colors.grey : Colors.orange[700];
    final valueText = value == null ? unknownValueText : '$value%';

    return Tooltip(
      message: '$name Percentage: $value',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                name.toUpperCase(),
                style: EmrOneConstants.kBannerTextStyle
                    .copyWith(color: valueColour),
              ),
            ],
          ),
          Text(
            valueText,
            style: EmrOneConstants.kOpenSans12BoldTextStyle
                .copyWith(color: valueColour),
          ),
        ],
      ),
    );
  }
}
