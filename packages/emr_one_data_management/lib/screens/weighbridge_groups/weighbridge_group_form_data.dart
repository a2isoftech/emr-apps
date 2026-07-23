import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/foundation.dart';

class WeighbridgeGroupFormData {
  WeighbridgeGroupFormData({
    String? yardCode,
    List<String>? group,
  }) {
    this.yardCode = ValueNotifier(yardCode ?? '');
    this.group = ValueNotifier(group ?? []);
    yard = ValueNotifier(
      yardCode != null
          ? Yard(
              yardCode: yardCode,
              name: yardCode,
              shortName: yardCode,
            )
          : null,
    );
  }

  factory WeighbridgeGroupFormData.fromWeighbridgeGroup(
    WeighbridgeGroup weighbridgeGroup,
  ) =>
      WeighbridgeGroupFormData(
        yardCode: weighbridgeGroup.yardCode,
        group: weighbridgeGroup.group,
      );

  WeighbridgeGroup toWeighbridgeGroup() => WeighbridgeGroup(
        yardCode:yard.value?.yardCode ?? '',
        group: group.value,
      );

  late final ValueNotifier<String> yardCode;

  late final ValueNotifier<List<String>> group;

  late final ValueNotifier<Yard?> yard;
}
