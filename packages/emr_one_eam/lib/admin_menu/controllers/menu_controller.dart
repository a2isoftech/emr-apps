import 'package:emr_one_eam/admin_menu/services/menu_service.dart';
import 'package:emr_one_eam/base/base_controller.dart';
import 'package:emr_one_eam/models/import_api_response.dart';
import 'package:flutter/material.dart';

abstract class IAdminMenuController extends BaseController<IAdminMenuService> {
  IAdminMenuController({required super.service});
  ValueNotifier<String?> get selectedSubMenu;
  void setSelectedMenu(String? changedMenu);

  Future<bool> syncData(String tableName);

  Future<ImportApiResponse?> loadAndSaveAllAssetForAllTemplates();
}

class AdminMenuController extends IAdminMenuController {
  AdminMenuController({required super.service});
  final ValueNotifier<String?> _selectedSubMenu = ValueNotifier(null);

  @override
  ValueNotifier<String?> get selectedSubMenu => _selectedSubMenu;

  @override
  void setSelectedMenu(String? changedMenu) {
    _selectedSubMenu.value = changedMenu;
  }

  @override
  Future<bool> syncData(String tableName) async {
    final result = await service.syncData(tableName);
    if (result != null) {
      return result;
    }
    return false;
  }

  @override
  Future<ImportApiResponse?> loadAndSaveAllAssetForAllTemplates() {
    return service.loadAndSaveAllAssetForTemplates();
  }
}
