import 'package:emr_one_elv_inspection/enums/enum.dart';
import 'package:emr_one_elv_inspection/pages/inspection_raven_migration/inspection/controller/inspection_controller.dart';
import 'package:emr_one_elv_inspection/pages/inspection_raven_migration/inspection/widgets/subscreens/documents_subscreen.dart';
import 'package:emr_one_elv_inspection/pages/inspection_raven_migration/inspection/widgets/subscreens/vehicle_parts_subscreen.dart';
import 'package:emr_one_elv_inspection/pages/inspection_raven_migration/inspection/widgets/subscreens/vehicle_pictures_subscreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class InspectionScreenWidget extends StatefulWidget {
  const InspectionScreenWidget({super.key});

  @override
  State<InspectionScreenWidget> createState() => _InspectionScreenWidgetState();
}

class _InspectionScreenWidgetState extends State<InspectionScreenWidget> {
  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<InspectionController>(context);

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
