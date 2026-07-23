import 'package:emr_one_core/models/scales/scales.dart';
import 'package:emr_one_core/widgets/scales/scale_key_binding.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/material.dart';

typedef EmptyCamerasBuilder = Widget Function(BuildContext context);
typedef CameraVideoFeedBuilder = Widget Function(Scale scale, Camera camera);
typedef KeyBindingBuilder = ScaleKeyBinding Function(
  int scaleIndex,
  Scale scale,
);
typedef WeightTakenCallback = Future<void> Function(
  WeightTaken weight,
  Scale scale,
);

typedef ButtonTextBuilder = String Function(WeightTaken? weightTaken);
