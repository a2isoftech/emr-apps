import 'package:emr_one_inform/screens/scanned_asset/scanned_asset_common.dart';
import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';

class ScannedAssetWeb extends ScannedAssetCommon {
  ScannedAssetWeb({super.assetCode, super.key});

  @override
  PreferredSizeWidget? getAppBar(BuildContext context) => null;

  @override
  Widget parentWidget(Widget child) {
    return ResponsiveGridRow(
      children: [
        ResponsiveGridCol(
          md: 2,
          child: Container(),
        ),
        ResponsiveGridCol(
          md: 8,
          child: child,
        ),
        ResponsiveGridCol(
          md: 2,
          child: Container(),
        ),
      ],
    );
  }
}
