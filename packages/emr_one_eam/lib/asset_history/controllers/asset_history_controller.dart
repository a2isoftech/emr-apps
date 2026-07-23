import 'package:emr_one_eam/asset_history/services/asset_history_service.dart';
import 'package:emr_one_eam/base/base_controller.dart';
import 'package:emr_one_eam/models/asset_history.dart';
import 'package:flutter/material.dart';

abstract class IAssetHistoryController
    extends BaseController<IAssetHistoryService> {
  IAssetHistoryController({required super.service});
  ValueNotifier<String?> assetCode = ValueNotifier(null);
  ValueNotifier<bool> isBusy = ValueNotifier(false);
  ValueNotifier<AssetHistory?> assetHistory = ValueNotifier(null);
  void initializeAssetHistory();
}

class AssetHistoryController extends IAssetHistoryController {
  AssetHistoryController({required super.service});

  @override
  Future<void> initializeAssetHistory() async {
    if (assetCode.value != null) {
      isBusy.value = true;
      assetHistory.value = await service.getAssetHistory(assetCode.value!);
      isBusy.value = false;
    }
  }
}
