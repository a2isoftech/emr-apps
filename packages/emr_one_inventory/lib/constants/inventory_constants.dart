import 'package:emr_sharedtypes/constants.dart';

class InventoryConstants {
  //Routing constants
  static String kInventorySection = 'Inventory';
  static const String inventoryRootPath = '/inventory';
  static const String inventoryRootName = 'Inventory';
  static const String inventorySearchPath = 'inventory-search';
  static const String elvInventorySearchPath = 'elv-inventory-search';

  //Production
  static const String kBomSection = 'BillOfMaterials';
  static const String bomSearchPath = 'bom';
  static const String createBomPath = 'create';
  static const String editBomPath = '/:id';

  //Production Permissions
  static const String permissionViewBom = 'permissions/production/bill-of-material/view';
  static const String permissionCreateEditBom = 'permissions/production/bill-of-material/create-edit';
  static const String permissionDeleteBom = 'permissions/production/bill-of-material/delete';

  //FILE constants
  static const String imagePathPrefix = 'i/com.emrgroup.inventory/';
  static const captureDropFolder = 'mobile_inventory/uploads';

  //Permissions
  static const String viewInventory = 'viewInventory';
  static const String viewInventorySearch = 'viewInventorySearch';
  static const String viewEdgeTickets = 'viewEdgeTickets';
  static const String viewElvInventorySearch = 'viewElvInventorySearch';

  static EmrOneCoreUom get uom => EmrOneCoreUomConstants.mt;
  static int get defaultDecimalPrecision => 3;

  static List<String> get itemTypes => ['STEEL MEMBER', 'STEEL MEMBER THIRD P'];
  static List<String> get yesNoOptions => ['Yes', 'No'];
  static bool? isMemberThirdP(String? type) =>
      type == null ? null : type == 'STEEL MEMBER THIRD P';
  static bool? yesNoToBool(String? type) => type == null ? null : type == 'Yes';
  static List<int> get processStages => [0, 1, 2, 3];
  static String getItemType({bool? isThridP}) =>
      isThridP == null ? '-' : (isThridP ? itemTypes[1] : itemTypes[0]);

  static String getMediaApiFilePath(String fileName, {String fileType = 'b'}) =>
      '$fileType/com.emrgroup.emrapps/inventory/$fileName';
}
