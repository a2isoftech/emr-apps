import 'package:emr_one_inform/screens/scanned_asset/scanned_asset_common.dart';
import 'package:flutter/material.dart';

class ScannedAssetNative extends ScannedAssetCommon {
  ScannedAssetNative({super.assetCode, super.key});

  @override
  Widget? pageHeader(BuildContext context) => null;

  @override
  Widget parentWidget(Widget child) => child;
}
