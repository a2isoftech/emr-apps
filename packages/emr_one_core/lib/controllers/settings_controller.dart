import 'dart:async';

import 'package:collection/collection.dart';
import 'package:emr_one_core/controllers/base_settings_controller.dart';
import 'package:emr_one_core/models/yards/device_info.dart';
import 'package:emr_one_core/models/yards/yard_devices.dart';
import 'package:emr_one_core/services/settings_service.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/widgets.dart';

/// A class that many Widgets can interact with to read user settings, update
/// user settings, or listen to user settings changes.
///
/// Controllers glue Data Services to Flutter Widgets. The SettingsController
/// uses the SettingsService to store and retrieve user settings.
class SettingsController extends BaseSettingsController {
  SettingsController(
    this._settingsService,
    this._uomService,
  ) : super(
          _settingsService,
        );

  // Make SettingsService a private variable so it is not used directly.
  final SettingsService _settingsService;
  final UomService _uomService;

  late String _territory;

  late List<Territory> _allowedTerritories;

  late String _yardCode;

  late OrderBook? _orderbook;

  late int _uomId;

  late ValueNotifier<DeviceInfo?> remittancePrinter =
      ValueNotifier<DeviceInfo?>(null);
  late ValueNotifier<DeviceInfo?> chequePrinter =
      ValueNotifier<DeviceInfo?>(null);

  String get territory => _territory;
  OrderBook? get defaultOrderBook => _orderbook;

  final Map<String, YardDevices> _yardDevicesMap = {};

  List<YardDevices> get yardDevices => _yardDevicesMap.values.toList();

  void updateYardDevices({
    required String yardCode,
    DeviceInfo? chequePrinter,
    DeviceInfo? remittancePrinter,
  }) {
    final existing = _yardDevicesMap[yardCode];

    final devices = <DeviceInfo>[];

    // preserve existing devices if present
    if (existing != null) {
      devices.addAll(existing.devices);
    }

    // replace or insert cheque printer
    if (chequePrinter != null) {
      devices.removeWhere(
        (d) => d.type == EmrOneCoreDeviceConstants.kChequePrinter,
      );
      devices.add(chequePrinter);
    }

    // replace or insert remittance printer
    if (remittancePrinter != null) {
      devices.removeWhere(
        (d) => d.type == EmrOneCoreDeviceConstants.kRemittancePrinter,
      );
      devices.add(remittancePrinter);
    }

    // update or insert YardDevices
    _yardDevicesMap[yardCode] = YardDevices(
      yardCode: yardCode,
      devices: devices,
    );
  }

  bool _loadedUserSettings = false;

  /// Load the user's settings from the SettingsService. It may load from a
  /// local database or the internet. The controller only knows it can load the
  /// settings from the service.
  @override
  Future<void> loadSettings() async {
    // load common settings
    await super.loadSettings();

    // Important! Inform listeners a change has occurred.
    notifyListeners();
  }

  @override
  Future<void> loadUserSettings() async {
    if (_loadedUserSettings == false) {
      // load common user settings
      await super.loadUserSettings();

      _territory = await _settingsService.territoryCode();

      _allowedTerritories = _settingsService.allowedTerritories();

      _yardCode = await _settingsService.yardCode();

      _orderbook = await getSavedOrderBook();

      final remittancePrinterDevice =
          await _settingsService.allowedYardDevicesByYard(
        'devices/$_territory/$_yardCode',
        EmrOneCoreDeviceConstants.kRemittancePrinter,
      );

      remittancePrinter = ValueNotifier<DeviceInfo?>(
        remittancePrinterDevice.isNotEmpty == true
            ? remittancePrinterDevice.first
            : null,
      );

      final chequePrinterDevice =
          await _settingsService.allowedYardDevicesByYard(
        'devices/$_territory/$_yardCode',
        EmrOneCoreDeviceConstants.kChequePrinter,
      );

      chequePrinter = ValueNotifier<DeviceInfo?>(
        chequePrinterDevice.isNotEmpty == true
            ? chequePrinterDevice.first
            : null,
      );

      _uomId = await _settingsService.uomId();

      _loadedUserSettings = true;

      // Important! Inform listeners a change has occurred.
      notifyListeners();
    }
  }

  List<Territory>? allowedTerritories(String query) {
    final upperQuery = query.toUpperCase();
    return _allowedTerritories
        .where(
          (t) =>
              t.code.toUpperCase().contains(upperQuery) ||
              t.name.toUpperCase().contains(upperQuery),
        )
        .toList();
  }

  Future<List<DeviceInfo>> allowedYardDevices(
    String? query,
    String type,
  ) async {
    return _settingsService.allowedYardDevices(query, type);
  }

  Future<List<DeviceInfo>> allowedYardDevicesByYard(
    String yardCode,
    String type,
  ) async {
    final devices = await allowedYardDevices(yardCode, type);

    return devices.where((device) => device.type == type).toList();
  }

  Future<List<Yard>> allowedYards(String query) async {
    final upperQuery = query.toUpperCase();

    return (await _settingsService.allowedYards())
        .where(
          (yard) =>
              yard.shortName.toUpperCase().contains(upperQuery) ||
              yard.yardCode.toUpperCase().contains(upperQuery),
        )
        .toList();
  }

  Future<List<OrderBook>> allowedOrderBooks(String query) async {
    final upperQuery = query.toUpperCase();
    return (await _settingsService.allowedOrderBooks())
        .where(
          (t) =>
              t.name.toUpperCase().contains(upperQuery) ||
              t.gradeType.toUpperCase().contains(upperQuery),
        )
        .toList();
  }

  List<EmrOneCoreUom>? allowedUoms(String query) {
    final upperQuery = query.toUpperCase();
    List<EmrOneCoreUom> initialList;

    try {
      initialList = _uomService
          .getUoms(_territory)
          .map((e) => EmrOneCoreUomConstants.lookup[e.index])
          .toList();
    } catch (e) {
      initialList = EmrOneCoreUomConstants.lookup;
    }

    return initialList.where((x) => x.uomCode.contains(upperQuery)).toList();
  }

  String? yardCode() {
    return _yardCode.isEmpty ? null : _yardCode;
  }

  int? orderBookCode() {
    return _orderbook?.id;
  }

  String? uomName() {
    if (_uomId < 0) {
      return null;
    }

    return Uom.values[_uomId].uomCode;
  }

  int uomId() {
    if (_uomId < 0) {
      return 0;
    }

    return _uomId;
  }

  Future<void> updateTerritory(String newTerritory) async {
    _territory = newTerritory;

    await _settingsService.updateTerritory(newTerritory);

    // Check if default Uom is in list for this territory, if it is not then
    // that needs to be updated as well
    if (!_uomService.uomValidForTerritory(Uom.values[_uomId], newTerritory)) {
      final newUomId = await _settingsService.defaultUomForTerritory();

      _uomId = newUomId;
      await _settingsService.updateUomId(newUomId);
    }

    notifyListeners();
  }

  Future<void> updateYardCode(String newYardCode) async {
    _yardCode = newYardCode;

    await _settingsService.updateYardCode(newYardCode);

    notifyListeners();
  }

  Future<void> updateOrderBookCode(int orderBook) async {
    _orderbook = await getDefaultOrderBook(orderBook: orderBook);
    await _settingsService.updateOrderBookCode(orderBook);

    notifyListeners();
  }

  Future<OrderBook?> getSavedOrderBook() async {
    var id = await _settingsService.orderBookCode();
    if (id == 0) {
      id = _settingsService.getDefaultOrderbookId();
    }
    final orderBooks = await _settingsService.allowedOrderBooks();
    return orderBooks.firstWhereOrNull((element) => element.id == id);
  }

  Future<OrderBook?> getDefaultOrderBook({int orderBook = 0}) async {
    var id = orderBook;
    if (orderBook == 0) {
      id = _settingsService.getDefaultOrderbookId();
    }
    final orderBooks = await _settingsService.allowedOrderBooks();
    return orderBooks.firstWhereOrNull((element) => element.id == id);
  }

  Future<void> updateUomId(int newUomId) async {
    _uomId = newUomId;

    await _settingsService.updateUomId(newUomId);

    notifyListeners();
  }
}
