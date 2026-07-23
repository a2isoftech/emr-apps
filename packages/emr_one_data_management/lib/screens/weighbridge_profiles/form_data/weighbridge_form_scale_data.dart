import 'package:emr_one_data_management/screens/weighbridge_profiles/weighbridges.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class WeighbridgeScaleData {
  WeighbridgeScaleData({
    required String name,
    required String url,
    required String assetCode,
    required int scaleNumber,
    required List<WeighbridgeScaleCameraData> cameras,
  }) {
    this.name = ValueNotifier(name);
    this.url = ValueNotifier(url);
    this.assetCode = ValueNotifier(assetCode);
    this.scaleNumber = ValueNotifier(scaleNumber);
    this.cameras = ValueNotifier(cameras);
  }

  WeighbridgeScaleData.fromScale(Scale scale)
      : assetCode = ValueNotifier(scale.assetCode),
        cameras = ValueNotifier(
          scale.cameras.map(WeighbridgeScaleCameraData.fromCamera).toList(),
        ),
        name = ValueNotifier(scale.name),
        scaleNumber = ValueNotifier(scale.scaleNumber),
        url = ValueNotifier(scale.url);

  Scale toScale() => Scale(
        name: name.value,
        url: url.value,
        assetCode: assetCode.value,
        scaleNumber: scaleNumber.value,
        cameras: cameras.value.map((camera) => camera.toCamera()).toList(),
      );

  late final ValueNotifier<String> name;

  late final ValueNotifier<String> url;

  late final ValueNotifier<String> assetCode;

  late final ValueNotifier<int> scaleNumber;

  late final ValueNotifier<List<WeighbridgeScaleCameraData>> cameras;
}
