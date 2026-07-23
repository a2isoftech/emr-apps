import 'package:emr_one_elv_inspection/enums/enum.dart';
import 'package:emr_one_elv_inspection/pages/inspection/widgets/inspection_screen_wrapper_widget.dart';
import 'package:flutter/material.dart';

class InspectionScreenWrapperTablet extends StatelessWidget {
  const InspectionScreenWrapperTablet({super.key});

  @override
  Widget build(BuildContext context) {
    return const InspectionScreenWrapperWidget(
      deviceType: DeviceTypeEnum.tablet,
    );
  }
}
