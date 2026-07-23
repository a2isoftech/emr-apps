import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';

class InspectionVehicleNotFoundScreen extends StatelessWidget {
  const InspectionVehicleNotFoundScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(context.l10n.vehicleNotFound),
          Padding(
            padding: const EdgeInsets.all(Insets.gutter / 2),
            child: ElevatedButton(
              onPressed: () {
                context.pop();
              },
              child: Text(context.l10n.back),
            ),
          ),
        ],
      ),
    );
  }
}
