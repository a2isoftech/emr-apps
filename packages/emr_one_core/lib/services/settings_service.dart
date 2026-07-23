import 'package:collection/collection.dart';
import 'package:emr_core_api/services/reference_data_service.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/models/yards/device_info.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';

/// A service that stores and retrieves user settings.
///
/// By default, this class does not persist user settings. If you'd like to
/// persist the user settings locally, use the shared_preferences package. If
/// you'd like to store settings on a web server, use the http package.
class SettingsService extends BaseSettingsService {
  SettingsService(
    this.userInfoService,
    this.userService,
    this.uomService,
    this.referenceDataService,
  );

  final UserInfoService userInfoService;
  final UserService userService;
  final UomService uomService;
  final ReferenceDataService referenceDataService;

  static const String kTerritory = 'territory';
  static const String kYardCode = 'yardCode';
  static const String kMenuMode = 'menuMode';
  static const String kOrderbook = 'trader_orderbook';
  static const String kUOM = 'uom';

  Future<String> territoryCode() async {
    return getStringWithDefault(
      kTerritory,
      userInfoService.userInfo.defaultTerritory,
    );
  }

  Future<String> yardCode() async {
    return getStringWithDefault(
      kYardCode,
      userService.user.defaultYardCode,
    );
  }

  Future<int> orderBookCode() async {
    return getIntWithDefault(
      kOrderbook,
      userInfoService.userInfo.defaultOrderBookTypeId,
    );
  }

  Future<int> uomId() async {
    final defaultUom = await defaultUomForTerritory();

    return getIntWithDefault(
      kUOM,
      defaultUom,
    );
  }

  Future<int> defaultUomForTerritory() async {
    final terr = await territoryCode();

    var defaultUom = -1;

    try {
      defaultUom = uomService.getUoms(terr).first.index;
    } catch (e) {
      defaultUom = 1; // MT
    }

    return defaultUom;
  }

  List<Territory> allowedTerritories() {
    final userInfo = userInfoService.userInfo;

    return userInfo.territories;
  }

  Future<String> defaultDepotForTerritory() async {
    String? defaultDepot;

    try {
      final defTerrCode = await territoryCode();
      final defaultTerritory = userInfoService.userInfo.territories
          .where((t) => t.code == defTerrCode)
          .firstOrNull;
      defaultDepot = defaultTerritory?.depots!.first.code;
    } catch (e) {
      defaultDepot = null;
    }

    return defaultDepot ?? 'None';
  }

  Future<List<Yard>> allowedYards() async {
    final defTerrCode = await territoryCode();

    final yardCodes = userInfoService.userInfo.territories
        .where((t) => t.code == defTerrCode)
        .map((x) => x.depots!.map((y) => y.yardCode))
        .flattened
        .whereType<String>()
        .toSet();

    return userInfoService.userInfo.yards
        .where((x) => yardCodes.contains(x.yardCode))
        .toList();
  }

  Future<List<DeviceInfo>> allowedYardDevices(
    String? deviceId,
    String type,
  ) async {
    if (deviceId == null || deviceId.isEmpty) {
      return [];
    }

    final d = await referenceDataService.fetchDeviceById(deviceId);
    if (d == null) return [];

    final devices = <DeviceInfo>[];

    if (type == EmrOneCoreDeviceConstants.kRemittancePrinter) {
      // Add all remittance printers
      devices.addAll(
        d.remittancePrinters.map(
          (printer) => DeviceInfo(
            name: printer.name,
            printerName: printer.printerName,
            type: EmrOneCoreDeviceConstants.kRemittancePrinter,
          ),
        ),
      );
    }
    if (type == EmrOneCoreDeviceConstants.kChequePrinter) {
      // Add all cheque printers
      devices.addAll(
        d.chequePrinters.map(
          (printer) => DeviceInfo(
            name: printer.name,
            printerName: printer.printerName,
            type: EmrOneCoreDeviceConstants.kChequePrinter,
          ),
        ),
      );
    }

    return devices;
  }

  Future<List<DeviceInfo>> allowedYardDevicesByYard(
    String? deviceId,
    String type,
  ) async {
    if (deviceId == null || deviceId.isEmpty) {
      return [];
    }

    final d = await referenceDataService.fetchDeviceById(deviceId);
    if (d == null) return [];

    final devices = <DeviceInfo>[];

    if (type == EmrOneCoreDeviceConstants.kRemittancePrinter) {
      devices.addAll(
        d.remittancePrinters.map(
          (printer) => DeviceInfo(
            name: printer.name,
            printerName: printer.printerName,
            type: EmrOneCoreDeviceConstants.kRemittancePrinter,
          ),
        ),
      );
    }

    if (type == EmrOneCoreDeviceConstants.kChequePrinter) {
      devices.addAll(
        d.chequePrinters.map(
          (printer) => DeviceInfo(
            name: printer.name,
            printerName: printer.printerName,
            type: EmrOneCoreDeviceConstants.kChequePrinter,
          ),
        ),
      );
    }

    return devices;
  }

  Future<List<OrderBook>> allowedOrderBooks() async {
    return userInfoService.userInfo.userOrderBooks;
  }

  Future<void> updateTerritory(String newTerritory) =>
      setString(kTerritory, newTerritory);

  Future<void> updateYardCode(String newYardCode) =>
      setString(kYardCode, newYardCode);

  Future<void> updateOrderBookCode(int orderbook) =>
      setInt(kOrderbook, orderbook);

  Future<void> updateUomId(int newUomId) => setInt(kUOM, newUomId);

  int getDefaultOrderbookId() {
    return userInfoService.userInfo.defaultOrderBookTypeId;
  }
}
