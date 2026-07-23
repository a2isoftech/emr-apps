import 'package:emr_one_elv_inspection/enums/device_type_enum.dart';
import 'package:emr_one_elv_inspection/pages/inspection_raven_migration/inspection/widgets/inspection_screen_wrapper_widget.dart';
import 'package:flutter/material.dart';

class InspectionScreenWrapperDesktop extends StatelessWidget {
  const InspectionScreenWrapperDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return const InspectionScreenWrapperWidget(
      deviceType: DeviceTypeEnum.desktop,
    );
  }
}
