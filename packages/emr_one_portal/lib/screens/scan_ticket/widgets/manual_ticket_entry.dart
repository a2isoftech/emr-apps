import 'package:emr_account_registration/signup.dart';
import 'package:emr_one_core/eo_constants.dart';
import 'package:emr_one_portal/portal.dart';
import 'package:emr_one_theme/emr_one_theme.dart';
import 'package:flutter/material.dart';

class ManualTicketEntry extends StatelessWidget {
  const ManualTicketEntry({
    required this.controller,
    super.key,
  });

  final ScanTicketController controller;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final brandColours =
        theme.extension<EOBrandTheme>() ?? const EOBrandTheme();
    return CardRow(
      largePadding: const EdgeInsets.all(Insets.gutter),
      color: brandColours.separatorColour!, //EmrColours.primaryBlue,
      children: [
        TextFormField(
          keyboardType: TextInputType.number,
          decoration: InputDecorationService.getTextFormFieldInputDecoration(
            'Ticket Number',
            'Ticket Number',
            theme: theme,
          ),
          validator: (val) {
            ValidationService.validateInteger(val, 'ticket number', context);
            return null;
          },
          initialValue: controller.manualTicketNo,
          onChanged: controller.updateManualTicketNumber,
        ),
        TextFormField(
          keyboardType: TextInputType.number,
          maxLength: 7,
          decoration: InputDecorationService.getTextFormFieldInputDecoration(
            'e.g. DSALFER',
            'Depot Number',
            theme: theme,
          ),
          validator: (val) {
            ValidationService.validateString(val, 'depot number', context);
            return null;
          },
          initialValue: controller.manualDepot,
          onChanged: controller.updateManualDepotNumber,
        ),
        colouredButton(
          text: 'Find Ticket',
          color: controller.canFindTicketManually(context)
              ? theme.primaryColor
              : theme.disabledColor,
          onPressed: controller.canFindTicketManually(context)
              ? () async {
                  controller.toggleSubmitting(value: true);
                  await controller.addTicket(
                    controller.manualTicketNo,
                    controller.manualDepot,
                  );
                }
              : null,
        ),
      ],
    );
  }
}
