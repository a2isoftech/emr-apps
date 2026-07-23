import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_data_management/emr_one_data_management_constants.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:emr_sharedtypes/enums/atm_server_device_type.dart';
import 'package:flutter/material.dart';

class DeviceCards extends EmrTabBarVerticalViewCard {
  DeviceCards({
    required super.title,
    required ValueNotifier<Devices> devices,
    super.key,
  }) : super(
          child: _DeviceCardStateful(
            devices: devices,
            key: key,
          ),
        );
}

class _DeviceCardStateful extends StatefulWidget {
  const _DeviceCardStateful({
    required this.devices,
    super.key,
  });

  final ValueNotifier<Devices> devices;

  @override
  State<_DeviceCardStateful> createState() => _DeviceCardState();

  Devices _replaceDevicesForType({
    required String title,
    required Devices current,
    required List<dynamic> updated,
  }) {
    return Devices(
      id: current.id,
      yardCode: current.yardCode,
      yardId: current.yardId,
      atmServers: title == EmrOneDataManagementConstants.kRouteDeviceATMServers
          ? updated.whereType<AtmServerDevice>().toList()
          : current.atmServers,
      cashierCameras:
          title == EmrOneDataManagementConstants.kRouteDeviceCashierCameras
              ? updated.whereType<CashierCameraDevice>().toList()
              : current.cashierCameras,
      remittancePrinters:
          title == EmrOneDataManagementConstants.kRouteDeviceRemittancePrinters
              ? updated.whereType<RemittancePrinterDevice>().toList()
              : current.remittancePrinters,
      chequePrinters:
          title == EmrOneDataManagementConstants.kRouteDeviceChequePrinters
              ? updated.whereType<ChequePrinterDevice>().toList()
              : current.chequePrinters,
      fingerprintScanners:
          title == EmrOneDataManagementConstants.kRouteDeviceFingerprintScanners
              ? updated.whereType<FingerprinterScannerDevice>().toList()
              : current.fingerprintScanners,
      idWebcams: title == EmrOneDataManagementConstants.kRouteDeviceIDWebcams
          ? updated.whereType<IdWebcamDevice>().toList()
          : current.idWebcams,
    );
  }

  Devices _addDeviceForType({
    required String title,
    required Devices current,
    required List<dynamic> updated,
  }) {
    return Devices(
      id: current.id,
      yardCode: current.yardCode,
      yardId: current.yardId,
      atmServers: title == EmrOneDataManagementConstants.kRouteDeviceATMServers
          ? [...updated.cast<AtmServerDevice>(), AtmServerDevice()]
          : current.atmServers,
      cashierCameras:
          title == EmrOneDataManagementConstants.kRouteDeviceCashierCameras
              ? [...updated.cast<CashierCameraDevice>(), CashierCameraDevice()]
              : current.cashierCameras,
      remittancePrinters:
          title == EmrOneDataManagementConstants.kRouteDeviceRemittancePrinters
              ? [
                  ...updated.cast<RemittancePrinterDevice>(),
                  RemittancePrinterDevice(),
                ]
              : current.remittancePrinters,
      chequePrinters:
          title == EmrOneDataManagementConstants.kRouteDeviceChequePrinters
              ? [...updated.cast<ChequePrinterDevice>(), ChequePrinterDevice()]
              : current.chequePrinters,
      fingerprintScanners:
          title == EmrOneDataManagementConstants.kRouteDeviceFingerprintScanners
              ? [
                  ...updated.cast<FingerprinterScannerDevice>(),
                  FingerprinterScannerDevice(),
                ]
              : current.fingerprintScanners,
      idWebcams: title == EmrOneDataManagementConstants.kRouteDeviceIDWebcams
          ? [...updated.cast<IdWebcamDevice>(), IdWebcamDevice()]
          : current.idWebcams,
    );
  }
}

class _DeviceCardState extends State<_DeviceCardStateful>
    with TickerProviderStateMixin {
  late TabController _tabController;
  final GlobalKey<FormState> _deviceFormKey = GlobalKey<FormState>();

  static const List<String> _deviceTabs = [
    EmrOneDataManagementConstants.kRouteDeviceATMServers,
    EmrOneDataManagementConstants.kRouteDeviceCashierCameras,
    EmrOneDataManagementConstants.kRouteDeviceRemittancePrinters,
    EmrOneDataManagementConstants.kRouteDeviceChequePrinters,
    EmrOneDataManagementConstants.kRouteDeviceFingerprintScanners,
    EmrOneDataManagementConstants.kRouteDeviceIDWebcams,
  ];

  void _updateTabController() {
    _tabController = TabController(
      length: _deviceTabs.length,
      vsync: this,
    );
  }

  @override
  void initState() {
    super.initState();
    _updateTabController();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<Devices>(
      valueListenable: widget.devices,
      builder: (context, devices, _) {
        const height = 530.0;

        return Column(
          children: [
            TabBar(
              controller: _tabController,
              isScrollable: true,
              tabs: [
                for (final tabName in _deviceTabs) Tab(text: tabName),
              ],
            ),
            SizedBox(
              height: height,
              child: TabBarView(
                controller: _tabController,
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  _buildDeviceGrid(
                    EmrOneDataManagementConstants.kRouteDeviceATMServers,
                    ValueNotifier<List<dynamic>>(devices.atmServers),
                  ),
                  _buildDeviceGrid(
                    EmrOneDataManagementConstants.kRouteDeviceCashierCameras,
                    ValueNotifier<List<dynamic>>(devices.cashierCameras),
                  ),
                  _buildDeviceGrid(
                    EmrOneDataManagementConstants
                        .kRouteDeviceRemittancePrinters,
                    ValueNotifier<List<dynamic>>(
                      devices.remittancePrinters,
                    ),
                  ),
                  _buildDeviceGrid(
                    EmrOneDataManagementConstants.kRouteDeviceChequePrinters,
                    ValueNotifier<List<dynamic>>(devices.chequePrinters),
                  ),
                  _buildDeviceGrid(
                    EmrOneDataManagementConstants
                        .kRouteDeviceFingerprintScanners,
                    ValueNotifier<List<dynamic>>(
                      devices.fingerprintScanners,
                    ),
                  ),
                  _buildDeviceGrid(
                    EmrOneDataManagementConstants.kRouteDeviceIDWebcams,
                    ValueNotifier<List<dynamic>>(
                      devices.idWebcams,
                    ),
                  ),
                  const SizedBox.shrink(),
                ],
              ),
            ),
          ],
        );
      },
    );
  }

  /// Builds a grid for each device list
  Widget _buildDeviceGrid<T>(String title, ValueNotifier<List<T>> deviceList) {
    final controller = EmrGridController<T>(
      data: deviceList,
    );

    return Padding(
      padding: const EdgeInsets.all(Insets.gutter),
      child: EmrGrid<T>(
        controller: controller,
        alternateBackgroundRowColour: true,
        pinnedRowCount: 1,
        pinnedColumnCount: 1,
        columns: [
          EmrGridColumn(
            headerBuilder: () => const EmrGridHeader(text: ''),
            cellBuilder: (row) {
              late final String filterType;
              late final CashierCameraDevice cashierCameraDeviceRow;
              late final AtmServerDevice atmServerDeviceRow;
              late final ChequePrinterDevice chequePrinterDeviceRow;
              late final RemittancePrinterDevice remittancePrinterDeviceRow;
              late final IdWebcamDevice idWebcamDeviceRow;
              late final FingerprinterScannerDevice fingerprinterScannerDevice;
              late final ValueNotifier<String> nameNotifier;
              late final ValueNotifier<String?> ipaddressNotifier;
              late final ValueNotifier<String?> printerNameNotifier;
              late final ValueNotifier<String?> deviceIdNotifier;
              late final ValueNotifier<AtmServerDeviceType?> deviceTypeNotifier;
              late final ValueNotifier<String?> encryptionKeyNotifier;
              late final ValueNotifier<String?> apiKeyNotifier;
              late final ValueNotifier<String?> paymentAPIEndpointNotifier;
              late final ValueNotifier<String?>
                  authorisationAPIEndpointNotifier;

              if (title ==
                  EmrOneDataManagementConstants.kRouteDeviceCashierCameras) {
                cashierCameraDeviceRow = row as CashierCameraDevice;
                filterType = cashierCameraDeviceRow.name;
                nameNotifier = ValueNotifier<String>(
                  cashierCameraDeviceRow.name,
                );
                ipaddressNotifier =
                    ValueNotifier<String>(cashierCameraDeviceRow.ipAddress);
                printerNameNotifier = ValueNotifier<String>('');
                deviceIdNotifier = ValueNotifier<String>('');
                deviceTypeNotifier = ValueNotifier<AtmServerDeviceType?>(null);
                encryptionKeyNotifier = ValueNotifier<String>('');
                apiKeyNotifier = ValueNotifier<String>('');
                paymentAPIEndpointNotifier = ValueNotifier<String>('');
                authorisationAPIEndpointNotifier = ValueNotifier<String>('');
              }

              if (title ==
                  EmrOneDataManagementConstants.kRouteDeviceATMServers) {
                atmServerDeviceRow = row as AtmServerDevice;
                filterType = atmServerDeviceRow.name;

                nameNotifier = ValueNotifier<String>(
                  atmServerDeviceRow.name,
                );
                ipaddressNotifier =
                    ValueNotifier<String>(atmServerDeviceRow.ipAddress);
                deviceIdNotifier =
                    ValueNotifier<String>(atmServerDeviceRow.deviceId);
                deviceTypeNotifier = ValueNotifier<AtmServerDeviceType?>(
                  atmServerDeviceRow.atmServerDeviceType,
                );
                encryptionKeyNotifier =
                    ValueNotifier<String>(atmServerDeviceRow.encryptionKey);
                apiKeyNotifier = ValueNotifier<String>(
                  atmServerDeviceRow.apiKey,
                );
                paymentAPIEndpointNotifier = ValueNotifier<String>(
                  atmServerDeviceRow.paymentAPIEndPoint,
                );
                authorisationAPIEndpointNotifier = ValueNotifier<String>(
                  atmServerDeviceRow.authorisationAPIEndpoint,
                );
                printerNameNotifier = ValueNotifier<String>('');
              }

              if (title ==
                  EmrOneDataManagementConstants.kRouteDeviceChequePrinters) {
                chequePrinterDeviceRow = row as ChequePrinterDevice;
                filterType = chequePrinterDeviceRow.name;
                nameNotifier = ValueNotifier<String>(
                  chequePrinterDeviceRow.name,
                );
                printerNameNotifier =
                    ValueNotifier<String>(chequePrinterDeviceRow.printerName);
                ipaddressNotifier = ValueNotifier<String>('');
                deviceIdNotifier = ValueNotifier<String>('');
                deviceTypeNotifier = ValueNotifier<AtmServerDeviceType?>(null);
                encryptionKeyNotifier = ValueNotifier<String>('');
                apiKeyNotifier = ValueNotifier<String>('');
                paymentAPIEndpointNotifier = ValueNotifier<String>('');
                authorisationAPIEndpointNotifier = ValueNotifier<String>('');
              }

              if (title ==
                  EmrOneDataManagementConstants
                      .kRouteDeviceRemittancePrinters) {
                remittancePrinterDeviceRow = row as RemittancePrinterDevice;
                filterType = remittancePrinterDeviceRow.name;
                nameNotifier = ValueNotifier<String>(
                  remittancePrinterDeviceRow.name,
                );
                printerNameNotifier = ValueNotifier<String>(
                  remittancePrinterDeviceRow.printerName,
                );
                ipaddressNotifier = ValueNotifier<String>('');
                deviceIdNotifier = ValueNotifier<String>('');
                deviceTypeNotifier = ValueNotifier<AtmServerDeviceType?>(null);
                encryptionKeyNotifier = ValueNotifier<String>('');
                apiKeyNotifier = ValueNotifier<String>('');
                paymentAPIEndpointNotifier = ValueNotifier<String>('');
                authorisationAPIEndpointNotifier = ValueNotifier<String>('');
              }

              if (title ==
                  EmrOneDataManagementConstants.kRouteDeviceIDWebcams) {
                idWebcamDeviceRow = row as IdWebcamDevice;
                filterType = idWebcamDeviceRow.name;
                nameNotifier = ValueNotifier<String>(
                  idWebcamDeviceRow.name,
                );
                ipaddressNotifier = ValueNotifier<String>(
                  idWebcamDeviceRow.ipAddress,
                );
                printerNameNotifier = ValueNotifier<String>('');
                deviceIdNotifier = ValueNotifier<String>('');
                deviceTypeNotifier = ValueNotifier<AtmServerDeviceType?>(null);
                encryptionKeyNotifier = ValueNotifier<String>('');
                apiKeyNotifier = ValueNotifier<String>('');
                paymentAPIEndpointNotifier = ValueNotifier<String>('');
                authorisationAPIEndpointNotifier = ValueNotifier<String>('');
              }

              if (title ==
                  EmrOneDataManagementConstants
                      .kRouteDeviceFingerprintScanners) {
                fingerprinterScannerDevice = row as FingerprinterScannerDevice;
                filterType = fingerprinterScannerDevice.name;
                nameNotifier = ValueNotifier<String>(
                  fingerprinterScannerDevice.name,
                );
                ipaddressNotifier = ValueNotifier<String>(
                  fingerprinterScannerDevice.ipAddress,
                );
                printerNameNotifier = ValueNotifier<String>('');
                deviceIdNotifier = ValueNotifier<String>('');
                deviceTypeNotifier = ValueNotifier<AtmServerDeviceType?>(
                  null,
                );
                encryptionKeyNotifier = ValueNotifier<String>('');
                apiKeyNotifier = ValueNotifier<String>('');
                paymentAPIEndpointNotifier = ValueNotifier<String>('');
                authorisationAPIEndpointNotifier = ValueNotifier<String>('');
              }

              final isPlaceholderRow = filterType.trim().isEmpty;

              return Row(
                children: [
                  if (isPlaceholderRow)
                    IconButton(
                      icon: const Icon(Icons.add, color: Colors.green),
                      tooltip: 'Add Device',
                      onPressed: () async {
                        final resultAddDevice = await EmrDialog.modal<bool>(
                          context,
                          titleText: 'Add Device',
                          builder: (dialogContext) => SizedBox(
                            width: 800,
                            child: Column(
                              children: [
                                _deviceForm(
                                  title: title,
                                  nameNotifier: nameNotifier,
                                  ipaddressNotifier: ipaddressNotifier,
                                  printerNameNotifier: printerNameNotifier,
                                  deviceIdNotifier: deviceIdNotifier,
                                  deviceTypeNotifier: deviceTypeNotifier,
                                  apiKeyNotifier: apiKeyNotifier,
                                  authorisationAPIEndpointNotifier:
                                      authorisationAPIEndpointNotifier,
                                  paymentAPIEndpointNotifier:
                                      paymentAPIEndpointNotifier,
                                  encryptionKeyNotifier: encryptionKeyNotifier,
                                ),
                              ],
                            ),
                          ),
                          onAccept: () async {
                            Navigator.of(context).pop(true);
                          },
                        );

                        if (true == resultAddDevice) {
                          final currentDevices = widget.devices.value;

                          dynamic updatedDevice;

                          final updatedName = nameNotifier.value;
                          final updatedIPAddress =
                              ipaddressNotifier.value ?? '';
                          final updatedPrinterNameNotifier =
                              printerNameNotifier.value ?? '';
                          final updatedDeviceIdNotifier =
                              deviceIdNotifier.value ?? '';
                          final updatedDeviceTypeNotifier =
                              deviceTypeNotifier.value ??
                                  AtmServerDeviceType.consillion;
                          final updatedEncryptionKeyNotifier =
                              encryptionKeyNotifier.value ?? '';
                          final updatedAPIKeyNotifier =
                              apiKeyNotifier.value ?? '';
                          final updatedPaymentAPIEndpointNotifier =
                              paymentAPIEndpointNotifier.value ?? '';
                          final updatedAuthorisationAPIEndpointNotifier =
                              authorisationAPIEndpointNotifier.value ?? '';

                          switch (title) {
                            case EmrOneDataManagementConstants
                                  .kRouteDeviceATMServers:
                              updatedDevice = AtmServerDevice(
                                name: updatedName,
                                ipAddress: updatedIPAddress,
                                deviceId: updatedDeviceIdNotifier,
                                atmServerDeviceType: updatedDeviceTypeNotifier,
                                encryptionKey: updatedEncryptionKeyNotifier,
                                apiKey: updatedAPIKeyNotifier,
                                paymentAPIEndPoint:
                                    updatedPaymentAPIEndpointNotifier,
                                authorisationAPIEndpoint:
                                    updatedAuthorisationAPIEndpointNotifier,
                              );

                            case EmrOneDataManagementConstants
                                  .kRouteDeviceCashierCameras:
                              updatedDevice = CashierCameraDevice(
                                name: updatedName,
                                ipAddress: updatedIPAddress,
                              );

                            case EmrOneDataManagementConstants
                                  .kRouteDeviceChequePrinters:
                              updatedDevice = ChequePrinterDevice(
                                name: updatedName,
                                printerName: updatedPrinterNameNotifier,
                              );

                            case EmrOneDataManagementConstants
                                  .kRouteDeviceRemittancePrinters:
                              updatedDevice = RemittancePrinterDevice(
                                name: updatedName,
                                printerName: updatedPrinterNameNotifier,
                              );

                            case EmrOneDataManagementConstants
                                  .kRouteDeviceIDWebcams:
                              updatedDevice = IdWebcamDevice(
                                name: updatedName,
                                ipAddress: updatedIPAddress,
                              );

                            case EmrOneDataManagementConstants
                                  .kRouteDeviceFingerprintScanners:
                              updatedDevice = FingerprinterScannerDevice(
                                name: updatedName.trimLeft(),
                                ipAddress: updatedIPAddress.trimLeft(),
                              );
                          }

                          if (updatedDevice != null) {
                            List<dynamic> updatedList;

                            switch (title) {
                              case EmrOneDataManagementConstants
                                    .kRouteDeviceATMServers:
                                updatedList = currentDevices.atmServers
                                    .map(
                                      (d) => d.name == filterType
                                          ? updatedDevice
                                          : d,
                                    )
                                    .toList();

                              case EmrOneDataManagementConstants
                                    .kRouteDeviceCashierCameras:
                                updatedList = currentDevices.cashierCameras
                                    .map(
                                      (d) => d.name == filterType
                                          ? updatedDevice
                                          : d,
                                    )
                                    .toList();

                              case EmrOneDataManagementConstants
                                    .kRouteDeviceChequePrinters:
                                updatedList = currentDevices.chequePrinters
                                    .map(
                                      (d) => d.name == filterType
                                          ? updatedDevice
                                          : d,
                                    )
                                    .toList();

                              case EmrOneDataManagementConstants
                                    .kRouteDeviceRemittancePrinters:
                                updatedList = currentDevices.remittancePrinters
                                    .map(
                                      (d) => d.name == filterType
                                          ? updatedDevice
                                          : d,
                                    )
                                    .toList();

                              case EmrOneDataManagementConstants
                                    .kRouteDeviceIDWebcams:
                                updatedList = currentDevices.idWebcams
                                    .map(
                                      (d) => d.name == filterType
                                          ? updatedDevice
                                          : d,
                                    )
                                    .toList();

                              case EmrOneDataManagementConstants
                                    .kRouteDeviceFingerprintScanners:
                                updatedList = currentDevices.fingerprintScanners
                                    .map(
                                      (d) => d.name == filterType
                                          ? updatedDevice
                                          : d,
                                    )
                                    .toList();

                              default:
                                updatedList = [];
                            }

                            final updatedDevices = widget._addDeviceForType(
                              title: title,
                              current: currentDevices,
                              updated: updatedList,
                            );

                            widget.devices.value = updatedDevices;
                          }
                        }
                      },
                    ),
                  if (!isPlaceholderRow)
                    IconButton(
                      icon: const Icon(Icons.edit),
                      tooltip: 'Edit',
                      onPressed: () async {
                        final resultEditDevice = await EmrDialog.modal<bool>(
                          context,
                          titleText: 'Edit Device',
                          builder: (dialogContext) => SizedBox(
                            width: 800,
                            child: Column(
                              children: [
                                _deviceForm(
                                  title: title,
                                  nameNotifier: nameNotifier,
                                  ipaddressNotifier: ipaddressNotifier,
                                  printerNameNotifier: printerNameNotifier,
                                  deviceIdNotifier: deviceIdNotifier,
                                  deviceTypeNotifier: deviceTypeNotifier,
                                  apiKeyNotifier: apiKeyNotifier,
                                  authorisationAPIEndpointNotifier:
                                      authorisationAPIEndpointNotifier,
                                  paymentAPIEndpointNotifier:
                                      paymentAPIEndpointNotifier,
                                  encryptionKeyNotifier: encryptionKeyNotifier,
                                ),
                              ],
                            ),
                          ),
                          onAccept: () async {
                            Navigator.of(context).pop(true);
                          },
                        );

                        if (true == resultEditDevice) {
                          final currentDevices = widget.devices.value;

                          dynamic updatedDevice;

                          final updatedName = nameNotifier.value;
                          final updatedIPAddress =
                              ipaddressNotifier.value ?? '';
                          final updatedPrinterNameNotifier =
                              printerNameNotifier.value ?? '';
                          final updatedDeviceIdNotifier =
                              deviceIdNotifier.value ?? '';
                          final updatedDeviceTypeNotifier =
                              deviceTypeNotifier.value ??
                                  AtmServerDeviceType.consillion;
                          final updatedEncryptionKeyNotifier =
                              encryptionKeyNotifier.value ?? '';
                          final updatedAPIKeyNotifier =
                              apiKeyNotifier.value ?? '';
                          final updatedPaymentAPIEndpointNotifier =
                              paymentAPIEndpointNotifier.value ?? '';
                          final updatedAuthorisationAPIEndpointNotifier =
                              authorisationAPIEndpointNotifier.value ?? '';

                          switch (title) {
                            case EmrOneDataManagementConstants
                                  .kRouteDeviceATMServers:
                              updatedDevice = AtmServerDevice(
                                name: updatedName,
                                ipAddress: updatedIPAddress,
                                deviceId: updatedDeviceIdNotifier,
                                atmServerDeviceType: updatedDeviceTypeNotifier,
                                encryptionKey: updatedEncryptionKeyNotifier,
                                apiKey: updatedAPIKeyNotifier,
                                paymentAPIEndPoint:
                                    updatedPaymentAPIEndpointNotifier,
                                authorisationAPIEndpoint:
                                    updatedAuthorisationAPIEndpointNotifier,
                              );

                            case EmrOneDataManagementConstants
                                  .kRouteDeviceCashierCameras:
                              updatedDevice = CashierCameraDevice(
                                name: updatedName,
                                ipAddress: updatedIPAddress,
                              );

                            case EmrOneDataManagementConstants
                                  .kRouteDeviceChequePrinters:
                              updatedDevice = ChequePrinterDevice(
                                name: updatedName,
                                printerName: updatedPrinterNameNotifier,
                              );

                            case EmrOneDataManagementConstants
                                  .kRouteDeviceRemittancePrinters:
                              updatedDevice = RemittancePrinterDevice(
                                name: updatedName,
                                printerName: updatedPrinterNameNotifier,
                              );

                            case EmrOneDataManagementConstants
                                  .kRouteDeviceIDWebcams:
                              updatedDevice = IdWebcamDevice(
                                name: updatedName,
                                ipAddress: updatedIPAddress,
                              );

                            case EmrOneDataManagementConstants
                                  .kRouteDeviceFingerprintScanners:
                              updatedDevice = FingerprinterScannerDevice(
                                name: updatedName,
                                ipAddress: updatedIPAddress,
                              );
                          }

                          if (updatedDevice != null) {
                            List<dynamic> updatedList;

                            switch (title) {
                              case EmrOneDataManagementConstants
                                    .kRouteDeviceATMServers:
                                updatedList = currentDevices.atmServers
                                    .map(
                                      (d) => d.name == filterType
                                          ? updatedDevice
                                          : d,
                                    )
                                    .toList();

                              case EmrOneDataManagementConstants
                                    .kRouteDeviceCashierCameras:
                                updatedList = currentDevices.cashierCameras
                                    .map(
                                      (d) => d.name == filterType
                                          ? updatedDevice
                                          : d,
                                    )
                                    .toList();

                              case EmrOneDataManagementConstants
                                    .kRouteDeviceChequePrinters:
                                updatedList = currentDevices.chequePrinters
                                    .map(
                                      (d) => d.name == filterType
                                          ? updatedDevice
                                          : d,
                                    )
                                    .toList();

                              case EmrOneDataManagementConstants
                                    .kRouteDeviceRemittancePrinters:
                                updatedList = currentDevices.remittancePrinters
                                    .map(
                                      (d) => d.name == filterType
                                          ? updatedDevice
                                          : d,
                                    )
                                    .toList();

                              case EmrOneDataManagementConstants
                                    .kRouteDeviceIDWebcams:
                                updatedList = currentDevices.idWebcams
                                    .map(
                                      (d) => d.name == filterType
                                          ? updatedDevice
                                          : d,
                                    )
                                    .toList();

                              case EmrOneDataManagementConstants
                                    .kRouteDeviceFingerprintScanners:
                                updatedList = currentDevices.fingerprintScanners
                                    .map(
                                      (d) => d.name == filterType
                                          ? updatedDevice
                                          : d,
                                    )
                                    .toList();

                              default:
                                updatedList = [];
                            }

                            final updatedDevices =
                                widget._replaceDevicesForType(
                              title: title,
                              current: currentDevices,
                              updated: updatedList,
                            );

                            widget.devices.value = updatedDevices;
                          }
                        }
                      },
                    ),
                  if (!isPlaceholderRow)
                    IconButton(
                      icon: const Icon(Icons.delete, color: Colors.red),
                      tooltip: 'Delete Device',
                      onPressed: () {
                        EmrDialog.noYes(
                          context,
                          titleText: 'Delete Device',
                          contentText:
                              'Are you sure you want to delete "${filterType
                              .toUpperCase()}"?',
                          onYes: () {
                            if (row is AtmServerDevice) {
                              widget.devices.value.atmServers.remove(row);
                            } else if (row is CashierCameraDevice) {
                              widget.devices.value.cashierCameras.remove(row);
                            } else if (row is RemittancePrinterDevice) {
                              widget.devices.value.remittancePrinters
                                  .remove(row);
                            } else if (row is ChequePrinterDevice) {
                              widget.devices.value.chequePrinters.remove(row);
                            } else if (row is FingerprinterScannerDevice) {
                              widget.devices.value.fingerprintScanners
                                  .remove(row);
                            } else if (row is IdWebcamDevice) {
                              widget.devices.value.idWebcams.remove(row);
                            }

                            setState(() {
                              widget.devices.value = widget.devices.value;
                            });
                          },
                        );
                      },
                    ),
                ],
              );
            },
          ),
          EmrGridColumn(
            headerBuilder: () => const EmrGridHeader(text: 'Name'),
            cellBuilder: (row) {
              final id = _getField(row, 'name');
              return Text(id ?? '');
            },
          ),
          if (title !=
                  EmrOneDataManagementConstants
                      .kRouteDeviceRemittancePrinters &&
              title != EmrOneDataManagementConstants.kRouteDeviceChequePrinters)
            EmrGridColumn(
              headerBuilder: () => const EmrGridHeader(text: 'IP Address'),
              cellBuilder: (row) {
                final type = _getField(row, 'ipAddress');
                return Text(type ?? '');
              },
            ),
          if (title ==
                  EmrOneDataManagementConstants
                      .kRouteDeviceRemittancePrinters ||
              title == EmrOneDataManagementConstants.kRouteDeviceChequePrinters)
            EmrGridColumn(
              headerBuilder: () => const EmrGridHeader(text: 'Printer Name'),
              cellBuilder: (row) {
                final type = _getField(row, 'printerName');
                return Text(type ?? '');
              },
            ),
          if (title == EmrOneDataManagementConstants.kRouteDeviceATMServers)
            EmrGridColumn(
              headerBuilder: () => const EmrGridHeader(text: 'Device ID'),
              cellBuilder: (row) {
                final type = _getField(row, 'deviceId');
                return Text(type ?? '');
              },
            ),
          if (title == EmrOneDataManagementConstants.kRouteDeviceATMServers)
            EmrGridColumn(
              headerBuilder: () => const EmrGridHeader(text: 'Device Type'),
              cellBuilder: (row) {
                final type = _getField(row, 'atmServerDeviceType');
                return Text(type ?? '');
              },
            ),
          if (title == EmrOneDataManagementConstants.kRouteDeviceATMServers)
            EmrGridColumn(
              headerBuilder: () => const EmrGridHeader(text: 'Encryption Key'),
              cellBuilder: (row) {
                final type = _getField(row, 'encryptionKey');
                return Text(type ?? '');
              },
            ),
          if (title == EmrOneDataManagementConstants.kRouteDeviceATMServers)
            EmrGridColumn(
              headerBuilder: () => const EmrGridHeader(text: 'API Key'),
              cellBuilder: (row) {
                final type = _getField(row, 'apiKey');
                return Text(type ?? '');
              },
            ),
          if (title == EmrOneDataManagementConstants.kRouteDeviceATMServers)
            EmrGridColumn(
              headerBuilder: () => const EmrGridHeader(
                text: 'Payment API EndPoint',
              ),
              cellBuilder: (row) {
                final type = _getField(row, 'paymentAPIEndPoint');
                return Text(type ?? '');
              },
            ),
          if (title == EmrOneDataManagementConstants.kRouteDeviceATMServers)
            EmrGridColumn(
              headerBuilder: () => const EmrGridHeader(
                text: 'Authorisation API Endpoint',
              ),
              cellBuilder: (row) {
                final type = _getField(row, 'authorisationAPIEndpoint');
                return Text(type ?? '');
              },
            ),
        ],
      ),
    );
  }

  String? _getField(dynamic row, String field) {
    try {
      // ignore: avoid_dynamic_calls
      final value = row.toJson()[field];
      return value?.toString();
    } catch (_) {
      return null;
    }
  }

  Widget _deviceForm({
    required String title,
    required ValueNotifier<String?> nameNotifier,
    required ValueNotifier<String?> ipaddressNotifier,
    required ValueNotifier<String?> printerNameNotifier,
    required ValueNotifier<String?> deviceIdNotifier,
    required ValueNotifier<AtmServerDeviceType?> deviceTypeNotifier,
    required ValueNotifier<String?> encryptionKeyNotifier,
    required ValueNotifier<String?> apiKeyNotifier,
    required ValueNotifier<String?> paymentAPIEndpointNotifier,
    required ValueNotifier<String?> authorisationAPIEndpointNotifier,
  }) {
    return Form(
      key: _deviceFormKey,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ValueListenableBuilder(
              valueListenable: nameNotifier,
              builder: (_, value, __) => EmrTextFormField(
                labelText: 'Name',
                binding: nameNotifier,
              ),
            ),
            const SizedBox(height: 8),
            if (title !=
                    EmrOneDataManagementConstants
                        .kRouteDeviceRemittancePrinters &&
                title !=
                    EmrOneDataManagementConstants.kRouteDeviceChequePrinters)
              ValueListenableBuilder(
                valueListenable: ipaddressNotifier,
                builder: (_, value, __) => EmrTextFormField(
                  labelText: 'IP Address',
                  binding: ipaddressNotifier,
                ),
              ),
            const SizedBox(height: 8),
            if (title ==
                    EmrOneDataManagementConstants
                        .kRouteDeviceRemittancePrinters ||
                title ==
                    EmrOneDataManagementConstants.kRouteDeviceChequePrinters)
              ValueListenableBuilder(
                valueListenable: printerNameNotifier,
                builder: (_, value, __) => EmrTextFormField(
                  labelText: 'Printer Name',
                  binding: printerNameNotifier,
                ),
              ),
            if (title == EmrOneDataManagementConstants.kRouteDeviceATMServers)
              ValueListenableBuilder(
                valueListenable: deviceIdNotifier,
                builder: (_, value, __) => EmrTextFormField(
                  labelText: 'Device ID',
                  binding: deviceIdNotifier,
                ),
              ),
            if (title == EmrOneDataManagementConstants.kRouteDeviceATMServers)
              ValueListenableBuilder(
                valueListenable: deviceTypeNotifier,
                builder: (_, value, __) =>
                    EmrPickerFormField<AtmServerDeviceType>(
                  labelText: 'Device Type',
                  binding: deviceTypeNotifier,
                  items: (_) => Future.value(AtmServerDeviceType.values),
                  itemTitleText: (item) => item.name,
                  itemSubtitleText: (item) => item.name,
                ),
              ),
            if (title == EmrOneDataManagementConstants.kRouteDeviceATMServers)
              ValueListenableBuilder(
                valueListenable: encryptionKeyNotifier,
                builder: (_, value, __) => EmrTextFormField(
                  labelText: 'Encryption Key',
                  binding: encryptionKeyNotifier,
                ),
              ),
            if (title == EmrOneDataManagementConstants.kRouteDeviceATMServers)
              ValueListenableBuilder(
                valueListenable: apiKeyNotifier,
                builder: (_, value, __) => EmrTextFormField(
                  labelText: 'API Key',
                  binding: apiKeyNotifier,
                ),
              ),
            if (title == EmrOneDataManagementConstants.kRouteDeviceATMServers)
              ValueListenableBuilder(
                valueListenable: paymentAPIEndpointNotifier,
                builder: (_, value, __) => EmrTextFormField(
                  labelText: 'Payment API EndPoint',
                  binding: paymentAPIEndpointNotifier,
                ),
              ),
            if (title == EmrOneDataManagementConstants.kRouteDeviceATMServers)
              ValueListenableBuilder(
                valueListenable: authorisationAPIEndpointNotifier,
                builder: (_, value, __) => EmrTextFormField(
                  labelText: 'Authorisation API Endpoint',
                  binding: authorisationAPIEndpointNotifier,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
