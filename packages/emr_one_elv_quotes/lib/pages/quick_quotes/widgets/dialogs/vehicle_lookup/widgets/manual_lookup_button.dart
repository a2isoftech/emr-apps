import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_elv_core/models/quote_models/quote_models.dart';
import 'package:emr_one_elv_core/widgets/flyout/elv_flyouts.dart';
import 'package:emr_one_elv_quotes/common/manual_vehicle_lookup_dialog.dart';
import 'package:emr_one_elv_quotes/pages/quick_quotes/controller/quick_quotes_controller.dart';
import 'package:flutter/material.dart';

class ManualLookUpButton extends StatelessWidget {
  const ManualLookUpButton({
    required this.controller,
    required this.onAddManual,
    super.key,
  });

  final QuickQuoteController controller;

  final void Function(VehicleDetail) onAddManual;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      child: Text(
        context.l10n.manualLookUp,
      ),
      onPressed: () {
        controller.baseState.manualVehicleLookupState
            .manualVehicleLookupReset();
        controller.baseState.manualVehicleLookupState.manualVehicleInit(
          vehicleService: controller.vehicleService,
        );
        elvStandardFlyout(
          context: context,
          body: ManualVehicleLookupDialog(
            onAdd: onAddManual,
            controller: controller,
          ),
          heading: context.l10n.manualLookUp,
        );
      },
    );
  }
}
