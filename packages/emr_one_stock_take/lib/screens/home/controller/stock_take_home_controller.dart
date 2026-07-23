import 'dart:async';
import 'dart:io';

import 'package:emr_core_api/graphql/fragments/stocktake/stocktake_search_fields.graphql.dart';
import 'package:emr_core_api/graphql/schema.graphql.dart';
import 'package:emr_core_api/services/user_access_service.dart';
import 'package:emr_one_core/config/app_config.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_stock_take/constants/helper_methods.dart';
import 'package:emr_one_stock_take/constants/permission.dart';
import 'package:emr_one_stock_take/constants/stock_take_named_routes.dart';
import 'package:emr_one_stock_take/services/stocktake_service.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:signals/signals_flutter.dart';

class StockTakeHomeController {
  StockTakeHomeController({
    required this.stocktakeService,
    required this.userAccessService,
    required this.userInfoService,
    required this.appConfig,
  });
  final StocktakeService stocktakeService;
  final UserAccessService userAccessService;
  final showLoader = signal(false);
  final UserInfoService userInfoService;
  final AppConfig appConfig;

  void handleOnTap(
    BuildContext context,
    Fragment$StocktakeSearchFields stockTake,
  ) {
    final encodedId = HelperMethods.encodedStocktakeId(stockTake.id);
    final status = stockTake.status;

    final hasStocktakePermission = userInfoService.userInfo
        .hasPermission(StockTakePermissions.performStocktake);

    final hasManualStocktakePermission = userInfoService.userInfo
        .hasPermission(StockTakePermissions.manualPerformStocktake);

    final params = <String, String>{};

    Future<void> navigateTo(String route) async {
      if (!context.mounted) return;
      context.goNamed(route, params: {'id': encodedId, ...params});
    }

    //Stocktake open/in-progress/rejected with permission
    if ((status == Enum$StocktakeStatus.OPEN ||
            status == Enum$StocktakeStatus.IN_PROGRESS ||
            status == Enum$StocktakeStatus.REJECTED) &&
        ((!kIsWeb && hasStocktakePermission) ||
            (kIsWeb && hasManualStocktakePermission))) {
      final locations = stockTake.stocktakeLocations
          .where((l) => l.snapshot == null)
          .toList();

      if (locations.isNotEmpty) {
        // Show dialog if snapshots missing
        EmrDialog.noYes(
          context,
          titleText: context.l10n.confirm,
          contentText: '${context.l10n.snapshotNotCapturedWithLocations(
            locations.length,
            locations.map((l) => l.location!.code).toList().join(','),
          )}\n${context.l10n.askSnapshotCapture}',
          onYes: () async {
            showLoader.value = true;
            final result = await stocktakeService.takeSnapshots(
              id: stockTake.id,
              overrideExisting: false,
            );
            showLoader.value = false;

            if (!context.mounted) return;

            if (!result.success) {
              unawaited(
                EmrModal.showMessageBar(
                  context,
                  HelperMethods.getErrorMessage(context, result),
                  messageType: MessageBarTypes.error,
                ),
              );
              return;
            }

            // Navigate after successful snapshot capture
            await navigateTo(StockTakeNamedRoutes.locationWeights);
          },
        );
        return;
      } else {
        navigateTo(StockTakeNamedRoutes.locationWeights);
        return;
      }
    }

    //Review permission and awaiting approval
    if (status == Enum$StocktakeStatus.AWAITING_APPROVAL) {
      params['level'] = (stockTake.workflow?.currentLevel ?? 0).toString();
      navigateTo(StockTakeNamedRoutes.stockTakeReview);
      return;
    }

    //Default view-only
    navigateTo(StockTakeNamedRoutes.stockTakeView);
  }

  Future<void> exportStockTake(
    BuildContext context,
    String stockTakeId,
    String name,
  ) async {
    final exportData = await stocktakeService.exportStockTake(stockTakeId);
    final exportFileName = getFileName('StockTake-$name', 'csv');

    if (exportData == null) {
      if (!context.mounted) return;
      unawaited(
        EmrModal.showMessageBar(
          context,
          context.l10n.anErrorOccurredTryAgain,
          messageType: MessageBarTypes.error,
        ),
      );
      return;
    }
    final exportDataService = ExportDataService();

    if (kIsWeb) {
      return exportDataService.downloadFileWeb(
        fileName: exportFileName,
        data: exportData,
      );
    } else {
      if (!(await exportDataService.isStoragePermissionGranted())) {
        if (!context.mounted) return;
        await EmrModal.showMessageBar(
          context,
          context.l10n.storagePermissionDenied,
          messageType: MessageBarTypes.error,
        );
        return;
      }
      final path = await exportDataService.getFileName(exportFileName);
      await File(path).writeAsBytes(exportData, flush: true);
      if (!context.mounted) return;
      await EmrModal.showMessageBar(
        context,
        '${path.split('/').last} '
        '${context.l10n.savedInDownloadedFolder}.',
      );
    }
  }

  String getFileName(String prefix, String extension) {
    final date = DateTime.now();
    return '${prefix}_${date.year}${date.month}'
        '${date.day}${date.hour}${date.minute}${date.second}.$extension';
  }
}
