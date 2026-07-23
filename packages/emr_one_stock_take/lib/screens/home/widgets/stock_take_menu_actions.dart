import 'dart:async';
import 'dart:io';

import 'package:emr_core_api/extensions/build_context_extensions.dart';
import 'package:emr_core_api/graphql/fragments/stocktake/stocktake_search_fields.graphql.dart';
import 'package:emr_core_api/graphql/schema.graphql.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_stock_take/constants/helper_methods.dart';
import 'package:emr_one_stock_take/constants/permission.dart';
import 'package:emr_one_stock_take/constants/stock_take_named_routes.dart';
import 'package:emr_one_stock_take/extensions/stocktake_search_extensions.dart';
import 'package:emr_one_stock_take/models/location_weight_model.dart';
import 'package:emr_one_stock_take/models/stock_take_location_print_model.dart';
import 'package:emr_one_stock_take/models/stock_take_print_model.dart';
import 'package:emr_one_stock_take/screens/home/controller/stock_take_home_controller.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:file_saver/file_saver.dart';
import 'package:flutter/material.dart';

class StockTakeMenuActions extends StatelessWidget {
  const StockTakeMenuActions({
    required this.controller,
    required this.queryLayoutController,
    required this.stockTake,
    super.key,
  });
  final StockTakeHomeController controller;
  final EmrQueryLayoutController<Fragment$StocktakeSearchFields>
      queryLayoutController;
  final Fragment$StocktakeSearchFields stockTake;

  @override
  Widget build(BuildContext context) {
    final id = HelperMethods.encodedStocktakeId(
      stockTake.id,
    );
    return PopupMenuButton(
      padding: EdgeInsets.zero,
      itemBuilder: (context) {
        return [
          if (stockTake.status == Enum$StocktakeStatus.OPEN &&
              controller.userInfoService.userInfo
                  .hasPermission(StockTakePermissions.createStocktake))
            PopupMenuItem<void>(
              child: Text(context.l10n.edit),
              onTap: () {
                context.goNamed(
                  StockTakeNamedRoutes.editStockTake,
                  params: {
                    'id': id,
                  },
                );
              },
            ),
          if (controller.userInfoService.userInfo
              .hasPermission(StockTakePermissions.createStocktake))
            PopupMenuItem<void>(
              child: Text(context.l10n.clone),
              onTap: () {
                context.goNamed(
                  StockTakeNamedRoutes.cloneAndCreate,
                  params: {
                    'id': id,
                  },
                );
              },
            ),
          if (stockTake.status == Enum$StocktakeStatus.OPEN &&
              controller.userInfoService.userInfo
                  .hasPermission(StockTakePermissions.deleteStocktake))
            PopupMenuItem<void>(
              onTap: () async {
                await openConfirmDeleteStockTake(context);
              },
              child: Text(
                context.l10n.delete,
              ),
            ),
          PopupMenuItem<void>(
            onTap: () => printData(context),
            child: Text(context.l10n.print),
          ),
          if (!stockTake.isRoutineCheck)
            PopupMenuItem<void>(
              onTap: () async => HelperMethods.showWorkflowHistory(
                context,
                controller.stocktakeService,
                stockTake.toStockTake(),
              ),
              child: Text(context.l10n.workflowHistory),
            ),
          if (stockTake.status == Enum$StocktakeStatus.OPEN)
            PopupMenuItem<void>(
              onTap: () => takeSnapshots(
                stockTake.id,
                context,
                hasLocations: stockTake.stocktakeLocations.isNotEmpty,
              ),
              child: Text(context.l10n.refreshSnapshot),
            ),
          PopupMenuItem<void>(
            onTap: () => context.goNamed(
              StockTakeNamedRoutes.stockTakeImageGallery,
              params: {
                'id': id,
              },
            ),
            child: Text(context.l10n.imageGallery),
          ),
          PopupMenuItem<void>(
            onTap: () {
              FirebaseLogin.getToken().then((value) {
                if (!context.mounted) return;
                controller.exportStockTake(
                  context,
                  stockTake.id,
                  stockTake.name,
                );
              });
            },
            child: Text(context.l10n.exportToCSV),
          ),
        ];
      },
    );
  }

  void takeSnapshots(
    String stockTakeId,
    BuildContext context, {
    required bool hasLocations,
  }) {
    if (!hasLocations) {
      unawaited(
        EmrDialog.ok(
          context,
          titleText: context.l10n.unableToRefreshSnapshots,
          contentText: context.l10n.noLocationsHaveBeenSelected,
        ),
      );
    } else {
      unawaited(
        EmrDialog.noYes(
          context,
          titleText: context.l10n.confirm,
          contentText: context.l10n.refreshSnapshotWarning,
          onYes: () async {
            controller.showLoader.value = true;
            final result = await controller.stocktakeService
                .takeSnapshots(id: stockTake.id, overrideExisting: true);
            controller.showLoader.value = false;
            if (!context.mounted) {
              return;
            }
            if (result.success) {
              await EmrModal.showMessageBar(
                context,
                context.l10n.snapshotRefreshedMessage,
              );
              await queryLayoutController.dataSource.refresh();
            } else {
              await EmrModal.showMessageBar(
                context,
                HelperMethods.getErrorMessage(context, result),
                messageType: MessageBarTypes.error,
              );
            }
          },
        ),
      );
    }
  }

  Future<void> openConfirmDeleteStockTake(
    BuildContext context,
  ) async {
    await EmrDialog.modal<String?>(
      context,
      titleText: context.l10n.deleteStockTake,
      acceptLabel: context.l10n.delete,
      isDanger: true,
      dialogMode: DialogMode.compact,
      builder: (BuildContext dialogContext) {
        return Column(
          children: [
            CircleAvatar(
              radius: 32,
              backgroundColor: Theme.of(context).colorScheme.error,
              child: const Icon(
                Icons.delete_outline,
                size: 32,
              ),
            ),
            const SizedBox(
              height: Insets.gutter,
            ),
            SizedBox(
              width: context.coreApi.appConfig.isWeb
                  ? null
                  : MediaQuery.of(context).size.width * 0.7,
              child: Text(
                context.l10n.deleteStockTakeConfirmation(stockTake.name),
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(fontWeight: FontWeight.bold),
              ),
            ),
          ],
        );
      },
      onAccept: () async {
        if (!context.mounted) return;
        Navigator.of(context).pop();
        await deleteStockTake(context);
      },
    );
  }

  Future<void> deleteStockTake(
    BuildContext context,
  ) async {
    controller.showLoader.value = true;
    final result =
        await controller.stocktakeService.deleteStocktake(stockTake.id);
    if (!context.mounted) {
      return;
    }

    if (result.success) {
      unawaited(
        EmrModal.showMessageBar(
          context,
          context.l10n.stockTakeDeleteSuccess,
        ),
      );
      await queryLayoutController.dataSource.refresh();
    } else {
      unawaited(
        EmrModal.showMessageBar(
          context,
          HelperMethods.getErrorMessage(context, result),
          messageType: MessageBarTypes.error,
        ),
      );
    }
    controller.showLoader.value = false;
  }

  double calculateTotalWeight(
    List<LocationWeightModel> weights,
    Uom uom,
  ) {
    double totalWeight = 0;
    for (final weight in weights) {
      final gross = UomValue.weight(
        weight.grossWeight!.value,
        Uom.fromCode(weight.grossWeight!.uom.name),
      ).convertWeight(uom);
      final tare = UomValue.weight(
        weight.tareWeight!.value,
        Uom.fromCode(weight.tareWeight!.uom.name),
      ).convertWeight(uom);

      final netValue = gross.value - tare.value;
      totalWeight += netValue;
    }
    return totalWeight;
  }

  Future<void> printData(
    BuildContext context,
  ) async {
    controller.showLoader.value = true;
    try {
      if (stockTake.stocktakeLocations.isEmpty) {
        controller.showLoader.value = false;
        await EmrDialog.ok(
          context,
          titleText: context.l10n.unableToPrint,
          contentText: context.l10n.noLocationsHaveBeenSelected,
        );
        return;
      }
      final stocktakeDetails =
          await controller.stocktakeService.getStockTake(id: stockTake.id);

      if (!context.mounted) {
        return;
      }
      if (stocktakeDetails == null) {
        controller.showLoader.value = false;
        await EmrModal.showMessageBar(
          context,
          messageType: MessageBarTypes.error,
          context.l10n.anErrorOccurredTryAgain,
        );
        return;
      }

      final locale = Localizations.localeOf(context);
      final stockTakePrintModel = StockTakePrintModel(
        name: stocktakeDetails.name,
        yardCode: stocktakeDetails.yardCode,
        snapshotTaken: stocktakeDetails.locations.first.snapshot?.snapshotDate
            ?.asyMMdtime(locale),
        stockTakeLocations: stocktakeDetails.locations.map((toElement) {
          var weighedDetail = toElement.takenWeights.isNotEmpty
              ? toElement.takenWeights.last
              : null;
          var uom = weighedDetail?.grossWeight?.uom.name ?? '';
          var totalWeight = toElement.takenWeights.isNotEmpty
              ? calculateTotalWeight(
                  toElement.takenWeights,
                  Uom.fromCode(uom),
                )
              : null;
          if ((totalWeight ?? 0) < 0) {
            weighedDetail = null;
            totalWeight = null;
            uom = '';
          }
          return StockTakeLocationPrintModel(
            productClass: toElement.productClass,
            productLine: toElement.productLine,
            location: '${toElement.code} - ${toElement.description}',
            product: '${toElement.productCode} - ${toElement.productDesc}',
            uom: uom.toUpperCase(),
            stockTakeWeight: totalWeight != null
                ? HelperMethods.toFormattedDecimal(
                    context,
                    totalWeight,
                    Uom.fromCode(uom),
                  )
                : null,
            weighedBy: weighedDetail?.weighedByName,
            weighedDate: weighedDetail?.weighedDateTime?.asyMMMd(locale),
            weighedTime: weighedDetail?.weighedDateTime?.asTime(locale),
          );
        }).toList(),
      );

      final bytes = await controller.stocktakeService
          .getPrintData(controller.appConfig, stockTakePrintModel);
      controller.showLoader.value = false;

      if (bytes == null) {
        if (!context.mounted) return;
        await EmrModal.showMessageBar(
          context,
          messageType: MessageBarTypes.error,
          context.l10n.anErrorOccurredTryAgain,
        );
        return;
      }
      if (controller.appConfig.isWeb) {
        await FileSaver.instance.saveFile(
          name: 'Stock Take - ${stockTake.yardCode} - ${stockTake.name}',
          bytes: bytes,
          fileExtension: 'pdf',
          mimeType: MimeType.pdf,
        );
      } else {
        final exportDataService = ExportDataService();

        if (!(await exportDataService.isStoragePermissionGranted())) {
          if (!context.mounted) return;
          await EmrModal.showMessageBar(
            context,
            context.l10n.storagePermissionDenied,
            messageType: MessageBarTypes.error,
          );
          return;
        }
        final path = await exportDataService.getFileName(
          'Stock Take - ${stockTake.yardCode} - ${stockTake.name.trim()}.pdf',
        );
        await File(path).writeAsBytes(bytes, flush: true);
        if (!context.mounted) return;
        await EmrModal.showMessageBar(
          context,
          '${path.split('/').last} '
          '${context.l10n.savedInDownloadedFolder}.',
        );
      }
    } on Exception catch (_) {
      controller.showLoader.value = false;
      if (context.mounted) {
        await EmrModal.showMessageBar(
          context,
          context.l10n.anErrorOccurredTryAgain,
          messageType: MessageBarTypes.error,
        );
      }
    }
  }
}
