import 'package:emr_one_elv_inspection/pages/inspection/controller/controller.dart';
import 'package:emr_one_elv_inspection/pages/inspection/widgets/modular/inspection_modular_widgets.dart';
import 'package:emr_one_elv_inspection/pages/inspection/widgets/subscreens/inspection_subscreens_widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class InspectionScreenWidget extends StatefulWidget {
  const InspectionScreenWidget({
    super.key,
  });

  @override
  State<InspectionScreenWidget> createState() => _InspectionScreenWidgetState();
}

class _InspectionScreenWidgetState extends State<InspectionScreenWidget> {
  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<InspectionScreenController>(context);
    if (controller.state.noResult) {
      return const InspectionVehicleNotFoundScreen();
    }
    return _body(controller);
  }

  Widget _body(InspectionScreenController controller) {
    switch (controller.state.activeTab) {
      case InspectionTabs.vehiclePictures:
        return const VehiclePicturesSubScreen();
      case InspectionTabs.documents:
        return const DocumentsSubScreen();
      case InspectionTabs.vehicleParts:
        return const VehiclePartsSubScreen();
    }
  }
}
