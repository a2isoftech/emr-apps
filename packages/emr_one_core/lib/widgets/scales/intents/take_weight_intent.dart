import 'package:emr_one_core/widgets/scales/emr_scale_controller.dart';
import 'package:flutter/material.dart';

class TakeWeightIntent extends Intent {
  const TakeWeightIntent({required this.scaleController});
  final EmrScaleController scaleController;
}
