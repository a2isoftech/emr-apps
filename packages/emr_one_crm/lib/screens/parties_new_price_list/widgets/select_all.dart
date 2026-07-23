import 'package:emr_one_core/eo_constants.dart';
import 'package:emr_one_crm/screens/parties_new_price_list/parties_price_wiz_controller.dart';
import 'package:flutter/material.dart';

class SelectAll extends StatelessWidget {
  const SelectAll({
    required this.title,
    required this.isPressed,
    required this.controller,
    required this.onTap,
    super.key,
  });

  final String title;
  final PartiesPriceListWizardController controller;
  final bool isPressed;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Transform.scale(
          scale: 1.4,
          child: Checkbox(
            value: isPressed,
            onChanged: (bool? value) => onTap(),
          ),
        ),
        const SizedBox(
          width: Insets.gutter,
        ),
        Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
