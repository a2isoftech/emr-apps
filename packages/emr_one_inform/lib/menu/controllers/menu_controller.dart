import 'package:emr_one_inform/menu/services/menu_service.dart';
import 'package:emr_one_inform/models/asset.dart';
import 'package:emr_one_inform/models/refresh_assets.dart';
import 'package:emr_one_inform/screens/base/base_controller.dart';

class MenuController extends BaseController {
  MenuController({required this.service});

  final MenuService service;
  List<Asset>? availableAssets = List.empty(growable: true);

  Future<void> refreshCMMS(String yardCode) async {
    return service.refreshCMMS(yardCode);
  }

  Future<void> refreshWorkRequest(String yardCode) async {
    return service.refreshWorkRequest(yardCode);
  }

  Future<void> refreshAssets(RefreshAssetsRequest refreshAssetsRequest) async {
    return service.refreshAssets(refreshAssetsRequest);
  }

  Future<List<Asset>> getAssets(String assetCode) async {
    availableAssets = await service.getAssets(assetCode: assetCode);
    return availableAssets ?? [];
  }
}
