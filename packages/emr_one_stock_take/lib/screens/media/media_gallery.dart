import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_stock_take/constants/app_constants.dart';
import 'package:emr_one_stock_take/constants/helper_methods.dart';
import 'package:emr_one_stock_take/models/models.dart';
import 'package:emr_one_stock_take/screens/screens.dart';
import 'package:emr_one_stock_take/services/services.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class MediaGallery extends StatelessWidget {
  const MediaGallery({
    required this.galleryController,
    required this.stockTakeId,
    super.key,
  });

  final GalleryController galleryController;
  final String stockTakeId;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return FutureBuilder(
      future: galleryController.stocktakeService.getStockTake(
        id: HelperMethods.decodedStocktakeId(stockTakeId),
      ),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          if (snapshot.data != null) {
            final stockTake = snapshot.data!;
            return Padding(
              padding: const EdgeInsets.all(kIsWeb ? Insets.gutter / 2 : 0),
              child: Column(
                children: [
                  HeaderDetails(
                    name: stockTake.name,
                    conductedBy: stockTake.conductor ?? '',
                    yard: stockTake.yardCode,
                    productFamily: stockTake.productFamily,
                  ),
                  const SizedBox(height: Insets.gutter / 2),
                  if (kIsWeb) const Divider(height: 1),
                  Expanded(
                    child: ListView.builder(
                      itemCount: stockTake.locations.length,
                      itemBuilder: (context, index) {
                        final location = stockTake.locations[index];
                        return Padding(
                          padding: const EdgeInsets.all(Insets.gutter / 2),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '${location.code} - '
                                    '${location.description}',
                                    style: theme.textTheme.bodyLarge!.copyWith(
                                      fontWeight: FontWeight.bold,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  Text(
                                    '${location.productCode} - '
                                    '${location.productDesc}',
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ],
                              ),
                              const Divider(height: 1),
                              locationImages(context, location, stockTake),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            );
          } else {
            return Center(
              child: Text(
                context.l10n.anErrorOccurredTryAgain,
                style: const TextStyle(color: OppraBrandColors.errorColor),
              ),
            );
          }
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }

  Widget locationImages(
    BuildContext context,
    StocktakeLocation currentLocation,
    StockTake stockTake,
  ) {
    final theme = Theme.of(context);
    final photoId =
        '${stockTake.id!.split('/').last}/${currentLocation.id.split('/').last}';

    return FutureBuilder<(String, String)>(
      future: galleryController.getLocalPathAndToken(photoId).wait,
      builder: (context, asyncSnapshot) {
        if (!asyncSnapshot.hasData) {
          return Container();
        }
        if (currentLocation.mediaAssets.isEmpty) {
          return Text(context.l10n.noImagesAvailable);
        } else {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: Insets.gutter),
            child: GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: currentLocation.mediaAssets.length,
              padding: const EdgeInsets.only(bottom: Insets.gutter / 2),
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 120,
                mainAxisSpacing: Insets.gutter / 2,
                crossAxisSpacing: Insets.gutter / 2,
              ),
              itemBuilder: (context, index) {
                final mediaUrl = currentLocation.mediaAssets[index].url;
                final remoteImagePath = MediaUtility.getMediaFullPath(
                  galleryController.mediaApiUrl,
                  mediaUrl,
                );

                final localImagePath = kIsWeb
                    ? null
                    : MediaUtility.getLocalPath(
                        mediaUrl,
                        asyncSnapshot.data!.$1,
                      );

                return Padding(
                  padding: const EdgeInsets.all(Insets.gutter / 4),
                  child: Container(
                    height: 95,
                    width: 95,
                    decoration: BoxDecoration(
                      color: theme.cardColor,
                      borderRadius: BorderRadius.circular(Insets.gutter / 2),
                    ),
                    clipBehavior: Clip.hardEdge,
                    child: localImagePath != null
                        ? TappableImage.localfile(imagePath: localImagePath)
                        : TappableImage(imagePath: remoteImagePath),
                  ),
                );
              },
            ),
          );
        }
      },
    );
  }

  Future<void> onMediaTap(
    BuildContext context,
    StockTake stockTake,
    int index,
    List<MediaItem> mediaItems,
    StocktakeLocation currentLocation,
  ) async {
    await showDialog<void>(
      context: context,
      builder: (BuildContext context) => FullScreenMediaViewer(
        yardCode: stockTake.yardCode,
        initialIndex: index,
        mediaItems: mediaItems,
        title:
            '${currentLocation.code} - '
            '${currentLocation.description}',
      ),
    );
  }
}
