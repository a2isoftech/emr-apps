import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/foundation.dart';

class DeductionFormData {
  DeductionFormData({
    required this.displayNameKey,
    required this.value,
    required this.weight,
  });

  final String displayNameKey;

  final ValueNotifier<double?> value;

  final ValueNotifier<UomValue?> weight;
}
