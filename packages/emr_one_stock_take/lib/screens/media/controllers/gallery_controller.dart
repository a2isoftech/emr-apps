import 'dart:async';

import 'package:emr_core_api/graphql/schema.graphql.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/models/media_file.dart';
import 'package:emr_one_stock_take/constants/constants.dart';
import 'package:emr_one_stock_take/models/models.dart';
import 'package:emr_one_stock_take/services/services.dart';
import 'package:emr_sharedtypes/models/media_asset.dart';
import 'package:flutter/material.dart';

class GalleryController {
  GalleryController({
    required this.stocktakeService,
    required this.mediaApiUrl,
  });

  final StocktakeService stocktakeService;
  final String mediaApiUrl;

  (Future<String>, Future<String>) getLocalPathAndToken(
    String locationId,
  ) {
    return (
      MediaUtility.getLocalFolder(locationId, 'stocktakes'),
      FirebaseLogin.getToken(),
    );
  }

  Future<List<MediaAsset>> uploadMedia(
    List<MediaFile> mediaToAdd,
    BuildContext context,
    String stockTakeId,
    String locationId, String yardCode,
  ) async {
    try {
      final urls = List<String>.empty(growable: true);
      final mediaId =
          '${stockTakeId.split('/').last}/${locationId.split('/').last}';

      for (final mediaFile in mediaToAdd) {
        final url = MediaUtility.createMediaFullUrl(
          mediaApiUrl,
          mediaFile.media.path,
          'com.emrgroup.stocktake/',
          mediaId,
        );
        if (!context.mounted) return [];
        final metadata = MediaUtility.prepareMediaMetadata([
          MetadataModel(context.l10n.yard, yardCode),
          MetadataModel(AppConstants.stockTakeId, stockTakeId),
          MetadataModel(AppConstants.stockTakeLocationId, locationId),
        ]);
        await addTaskToUpload(mediaFile.media.path, '$url?$metadata');
        urls.add(url);
      }

      final locationMediaInput = Input$StockLocationMediaInput(
        stocktakeId: stockTakeId,
        locationId: locationId,
        urls: urls.map(MediaUtility.removeBasePath).toList(),
      );
      final result = await stocktakeService.addStockTakeLocationMedia(
        locationMediaInput,
      );

      if (result.success) return result.data ?? [];
      if (context.mounted) {
        unawaited(
          EmrModal.showMessageBar(
            context,
            HelperMethods.getErrorMessage(context, result),
            messageType: MessageBarTypes.error,
          ),
        );
      }
    } on Exception catch (ex, trace) {
      EmrLogger.error(
        'Cannot upload stock take location media',
        source: 'GalleryController.uploadMedia()',
        error: ex,
        stackTrace: trace,
      );
    }
    return [];
  }

  Future<void> addTaskToUpload(String source, String remote) async {
    try {
      await EmrBackgroundService.instance.upload(source, remote);
    } on Exception catch (ex, trace) {
      EmrLogger.error(
        'Cannot upload stock take location media',
        source: 'GalleryController.addTaskToUpload()',
        error: ex,
        stackTrace: trace,
      );
    }
  }
}
