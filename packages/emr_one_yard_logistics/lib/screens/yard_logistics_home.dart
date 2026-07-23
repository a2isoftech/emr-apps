import 'package:emr_one_core/config/config.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_yard_logistics/constants.dart';
import 'package:emr_one_yard_logistics/models/models.dart';
import 'package:emr_one_yard_logistics/services/yard_logistics_helpers.dart';
import 'package:emr_one_yard_logistics/services/yard_logistics_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class YardLogisticsHome extends StatefulWidget {
  const YardLogisticsHome({super.key});

  @override
  State<YardLogisticsHome> createState() => _YardLogisticsHomeState();
}

class _YardLogisticsHomeState extends State<YardLogisticsHome> {
  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    const scanButtonHeight = 100.0;
    final service = Provider.of<YardLogisticsService>(context, listen: false);
    final appConfig = Provider.of<AppConfig>(context, listen: false);

    return Stack(
      children: [
        Column(
          children: [
            Expanded(
              child: GenericRouteScreen((routes) {
                return routes
                    .where(
                      (element) =>
                          element.path == '/yard-logistics' &&
                          element.isManuallyNavigable,
                    )
                    .toList();
              }),
            ),
            if (!appConfig.isWeb)
              SizedBox(
                height: scanButtonHeight,
                child: Padding(
                  padding: const EdgeInsets.all(Insets.gutter),
                  child: Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          style: YlConstants.calStyle,
                          onPressed: () async {
                            final scannedCode =
                                await ScanHelper.startInlineCodeScan(
                              context,
                              title: context.l10n.scanAnItem,
                            );

                            if (scannedCode == null) {
                              return;
                            }

                            final codeType =
                                YardLogisticsHelpers.codeType(scannedCode);

                            if (codeType == YardLogisticsCodeType.unknown &&
                                context.mounted) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(context.l10n.unknownCodeType),
                                ),
                              );
                            } else if (context.mounted) {
                              await _navigateOnScan(
                                codeType,
                                service,
                                scannedCode,
                              );
                            }
                          },
                          child: Text(context.l10n.scan),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
          ],
        ),
        if (!appConfig.isWeb && _isLoading) ...[
          const Opacity(
            opacity: 0.8,
            child: ModalBarrier(
              dismissible: false,
              color: Colors.black,
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CircularProgressIndicator(
                  color: Colors.white,
                ),
                const SizedBox(height: Insets.gutter),
                Text(
                  '${context.l10n.checkingCode}...',
                  style: const TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ],
      ],
    );
  }

  Future<void> _navigateOnScan(
    YardLogisticsCodeType codeType,
    YardLogisticsService service,
    String scannedCode,
  ) async {
    final _ = switch (codeType) {
      YardLogisticsCodeType.lot =>
        mounted ? await _addOrUpdateLot(service, scannedCode, context) : null,
      YardLogisticsCodeType.unknown =>
        throw UnimplementedError('Unknown code type not implemented'),
      YardLogisticsCodeType.pallet => mounted
          ? await _addOrUpdatePallet(service, scannedCode, context)
          : null,
    };
  }

  Future<void> _addOrUpdateLot(
    YardLogisticsService service,
    String scannedCode,
    BuildContext context,
  ) async {
    setState(() {
      _isLoading = true;
    });

    final response = await service.fetchLotByCode(scannedCode);

    if (context.mounted) {
      setState(() {
        _isLoading = false;
      });

      if (response.success && response.data == null) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            backgroundColor: Colors.red,
            content: Text('Lot not found. Create a new lot'),
          ),
        );
      } else if (response.success && response.data != null) {
        await context.pushNamed(
          NamedRoutes.ylExistingLot,
          extra: response.data,
        );
      }

      if (!response.success && context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            backgroundColor: Colors.red,
            content: Text(response.message),
          ),
        );
      }
    }
  }

  Future<void> _addOrUpdatePallet(
    YardLogisticsService service,
    String scannedCode,
    BuildContext context,
  ) async {
    setState(() {
      _isLoading = true;
    });

    final response = await service.fetchPalletByCode(
      scannedCode,
      includeLotDetails: true,
      includeDestDetails: true,
    );

    if (context.mounted) {
      setState(() {
        _isLoading = false;
      });

      if (response.success && response.data == null) {
        await context.pushNamed(
          NamedRoutes.ylNewPallet,
          queryParams: {'code': scannedCode},
        );
      } else if (response.success && response.data != null) {
        if (response.data!.type == PalletType.normal) {
          await context.pushNamed(
            NamedRoutes.ylExistingPallet,
            extra: response.data,
          );
        } else {
          await context.pushNamed(
            NamedRoutes.ylExistingBag,
            extra: response.data,
          );
        }
      }

      if (!response.success && context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            backgroundColor: Colors.red,
            content: Text(response.message),
          ),
        );
      }
    }
  }
}
