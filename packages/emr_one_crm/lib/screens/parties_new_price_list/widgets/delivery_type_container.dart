import 'package:emr_flutter_theme/emr_flutter_theme.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_crm/emr_one_crm_constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DeliveryTypeContainer extends StatelessWidget {
  const DeliveryTypeContainer({
    required this.deliveryType,
    required this.tileType,
    super.key,
  });

  final CrmDeliveryMethod? deliveryType;
  final CrmDeliveryMethod tileType;

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final isEnabled = checkEnabled(deliveryType, tileType);
    final enabledColour =
        isDark ? EmrColours.secondaryGrey : EmrColours.primaryBlue;
    final disabledColour = isDark ? EmrColours.secondaryGrey : Colors.grey[500];
    final borderColour =
        isDark && isEnabled ? EmrColours.primaryGreen : Colors.transparent;
    return Container(
      decoration: BoxDecoration(
        color: isEnabled ? enabledColour : disabledColour,
        borderRadius: BorderRadius.circular(3),
        border: Border.all(color: borderColour, width: 3),
      ),
      height: 120,
      width: 160,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FaIcon(
            tileType == CrmDeliveryMethod.delivered
                ? FontAwesomeIcons.car
                : FontAwesomeIcons.truck,
            color: Colors.white,
          ),
          const SizedBox(
            height: Insets.gutter / 2,
          ),
          Text(
            tileType.name.toUpperCase(),
            style: const TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }

  static bool checkEnabled(
    CrmDeliveryMethod? deliveryType,
    CrmDeliveryMethod tileType,
  ) =>
      deliveryType == CrmDeliveryMethod.both ||
      tileType == deliveryType ||
      deliveryType.toString().contains(tileType.toString());
}
