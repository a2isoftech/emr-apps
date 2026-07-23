import 'dart:io';

import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/models/media_file.dart';
import 'package:emr_one_core/widgets/camera/enums.dart';
import 'package:emr_one_core/widgets/camera/eo_basic_camera.dart';
import 'package:emr_one_stock_take/models/models.dart';
import 'package:emr_one_stock_take/screens/media/media.dart';
import 'package:emr_one_stock_take/services/services.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:signals/signals_flutter.dart';
import 'package:uuid/uuid.dart';

class LocationImages extends StatefulWidget {
  const LocationImages({
    required this.locationId,
    required this.galleryController,
    required this.stockTake,
    super.key,
  });

  final String locationId;
  final GalleryController galleryController;
  final StockTake stockTake;

  @override
  State<LocationImages> createState() => _LocationImagesState();
}

class _LocationImagesState extends State<LocationImages> {
  final _selectedItems = listSignal<MediaItem>([]);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final currentLocation = widget.stockTake.locations.firstWhere(
      (x) => x.id == widget.locationId,
    );

    final photoId =
        '${widget.stockTake.id?.split('/').last}/${widget.locationId.split('/').last}';

    return FutureBuilder<(String, String)>(
      future: widget.galleryController.getLocalPathAndToken(photoId).wait,
      builder: (context, asyncSnapshot) {
        if (!asyncSnapshot.hasData) {
          return Container();
        }
        final mediaItems = currentLocation.mediaAssets.map((media) {
          final remoteImagePath = MediaUtility.getMediaFullPath(
            widget.galleryController.mediaApiUrl,
            media.url,
          );
          return MediaItem(
            mediaUrl: media.url,
            token: asyncSnapshot.data!.$2,
            localDir: asyncSnapshot.data!.$1,
            remoteUrl: remoteImagePath,
          );
        }).toList();
        return Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: double.infinity,
                  color: theme.primaryColor,
                  child: Padding(
                    padding: const EdgeInsets.all(Insets.gutter),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '${currentLocation.code} - '
                              '${currentLocation.description}',
                              style: theme.textTheme.bodyLarge!.copyWith(
                                fontWeight: FontWeight.bold,
                                color: theme.colorScheme.onPrimary,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                            Text(
                              '${currentLocation.productCode} - '
                              '${currentLocation.productDesc}',
                              style: TextStyle(
                                color: theme.colorScheme.onPrimary,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                        IconButton(
                          icon: const Icon(Icons.photo_library_outlined),
                          iconSize: Insets.gutter * 2,
                          onPressed: () => openMediaPicker(
                            context,
                            currentLocation,
                            asyncSnapshot.data!.$1,
                          ),
                          color: theme.colorScheme.onPrimary,
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(Insets.gutter),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            context.l10n.photoGallery,
                            style: theme.textTheme.bodyLarge!.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            context.l10n.attachImagesToVerifyMaterials,
                            style: theme.textTheme.bodyMedium!.copyWith(
                              fontWeight: FontWeight.bold,
                              color: theme.colorScheme.outline,
                            ),
                          ),
                        ],
                      ),
                      if (_selectedItems.isNotEmpty)
                        Text(
                          '${_selectedItems.length} ${context.l10n.image}'
                          '${_selectedItems.length == 1 ? '' : 's'} '
                          '${context.l10n.selected}',
                        ),
                    ],
                  ),
                ),
                if (currentLocation.mediaAssets.isEmpty)
                  Expanded(
                    child: SizedBox(
                      width: double.infinity,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.camera_alt_outlined,
                            size: Insets.gutter * 4,
                          ),
                          Text(
                            context.l10n.emptyGallery,
                            style: theme.textTheme.bodyLarge,
                          ),
                        ],
                      ),
                    ),
                  ),
                if (currentLocation.mediaAssets.isNotEmpty)
                  imagesGrid(currentLocation, mediaItems, theme, asyncSnapshot),
                if (currentLocation.mediaAssets.isEmpty ||
                    _selectedItems.isNotEmpty)
                  const SizedBox(height: 50),
              ],
            ),
            if (_selectedItems.watch(context).isEmpty)
              Padding(
                padding: const EdgeInsets.only(
                  bottom: Insets.gutter * 2,
                  right: Insets.gutter,
                ),
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: FloatingActionButton(
                    onPressed: () async {
                      await openMediaUploader(
                        context,
                        asyncSnapshot.data!.$1,
                        currentLocation,
                      );
                    },
                    child: const Icon(Icons.add_a_photo_outlined),
                  ),
                ),
              ),
            if (_selectedItems.watch(context).isNotEmpty)
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: Insets.gutter / 2,
                ),
                child: multipleMediaSelection(context, currentLocation),
              ),
          ],
        );
      },
    );
  }

  Widget imagesGrid(
    StocktakeLocation currentLocation,
    List<MediaItem> mediaItems,
    ThemeData theme,
    AsyncSnapshot<(String, String)> snapshot,
  ) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(Insets.gutter / 2),
        child: GridView.builder(
          padding: const EdgeInsets.only(bottom: Insets.gutter / 2),
          shrinkWrap: true,
          physics: const AlwaysScrollableScrollPhysics(),
          itemCount: currentLocation.mediaAssets.length,
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 120,
            mainAxisSpacing: Insets.gutter / 2,
            crossAxisSpacing: Insets.gutter / 2,
          ),
          itemBuilder: (context, index) {
            final mediaUrl = currentLocation.mediaAssets[index].url;
            final remoteImagePath = MediaUtility.getMediaFullPath(
              widget.galleryController.mediaApiUrl,
              mediaUrl,
            );
            final localImagePath = MediaUtility.getLocalPath(
              mediaUrl,
              snapshot.data!.$1,
            );

            final item = mediaItems[index];
            final isSelected = _selectedItems
                .map((x) => x.mediaUrl)
                .contains(item.mediaUrl);

            return Padding(
              padding: const EdgeInsets.all(Insets.gutter / 4),
              child: Container(
                height: 95,
                width: 95,
                decoration: BoxDecoration(
                  color: theme.cardColor,
                  border: isSelected
                      ? Border.all(color: theme.colorScheme.primary, width: 2)
                      : null,
                  borderRadius: BorderRadius.circular(Insets.gutter / 2),
                ),
                clipBehavior: Clip.hardEdge,
                child: localImagePath != null
                    ? TappableImage.localfile(
                        imagePath: localImagePath,
                        onTap: () => onMediaTap(
                          context,
                          index,
                          mediaItems,
                          currentLocation,
                          item,
                          isSelected: isSelected,
                        ),
                        onLongPress: () =>
                            _selectedItems.add(mediaItems[index]),
                      )
                    : TappableImage(
                        imagePath: remoteImagePath,
                        onTap: () => onMediaTap(
                          context,
                          index,
                          mediaItems,
                          currentLocation,
                          item,
                          isSelected: isSelected,
                        ),
                        onLongPress: () =>
                            _selectedItems.add(mediaItems[index]),
                      ),
              ),
            );
          },
        ),
      ),
    );
  }

  void onMediaTap(
    BuildContext context,
    int index,
    List<MediaItem> mediaItems,
    StocktakeLocation currentLocation,
    MediaItem item, {
    bool isSelected = false,
  }) {
    if (_selectedItems.isEmpty) {
      showImageInFullScreen(context, index, mediaItems, currentLocation);
    } else {
      if (isSelected) {
        _selectedItems.removeWhere((i) => i.mediaUrl == item.mediaUrl);
      } else {
        _selectedItems.add(item);
      }
    }
  }

  Align multipleMediaSelection(
    BuildContext context,
    StocktakeLocation currentLocation,
  ) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Row(
        children: [
          Expanded(
            child: FilledButton(
              onPressed: _selectedItems.clear,
              child: Text(context.l10n.cancel),
            ),
          ),
          const SizedBox(width: Insets.gutter),
          Expanded(
            child: FilledButton(
              onPressed: () =>
                  deleteMedia(context, currentLocation, _selectedItems.value),
              style: EmrButtonStyles.danger(),
              child: Text(context.l10n.delete),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> showImageInFullScreen(
    BuildContext context,
    int imageIndex,
    List<MediaItem> mediaItems,
    StocktakeLocation currentLocation,
  ) async {
    await showDialog<void>(
      context: context,
      builder: (BuildContext context) => FullScreenMediaViewer(
        yardCode: widget.stockTake.yardCode,
        initialIndex: imageIndex,
        mediaItems: mediaItems,
        title: '${currentLocation.code} - ${currentLocation.description}',
        onDelete: (item) async {
          return deleteMedia(context, currentLocation, [item]);
        },
      ),
    );
  }

  Future<bool> deleteMedia(
    BuildContext context,
    StocktakeLocation currentLocation,
    List<MediaItem> items,
  ) async {
    final urls = items.map((x) => x.mediaUrl).toList();
    final locationMediaInput = Input$StockLocationMediaInput(
      stocktakeId: widget.stockTake.id!,
      locationId: widget.locationId,
      urls: urls.map(MediaUtility.removeBasePath).toList(),
    );
    final result = await widget.galleryController.stocktakeService
        .deleteStockTakeLocationMedia(locationMediaInput);
    if (!result.success) {
      if (context.mounted) {
        await EmrModal.showMessageBar(
          context,
          result.message,
          messageType: MessageBarTypes.error,
        );
      }
      return false;
    }
    currentLocation.mediaAssets.clear();
    currentLocation.mediaAssets.addAll(result.data?.toList() ?? []);
    _selectedItems.clear();
    return true;
  }

  Future<void> openMediaUploader(
    BuildContext context,
    String mediaPath,
    StocktakeLocation currentLocation,
  ) async {
    final newPhotos = <MediaFile>[];
    await showDialog<void>(
      context: context,
      builder: (context) {
        return EOBasicCamera(
          mediaMode: MediaMode.photo,
          directory: mediaPath,
          onMediaCapture: (path) async {
            if (path != null) {
              newPhotos.add(
                MediaFile(
                  media: path,
                  mediaType: MediaType.image,
                  retainSourceOnDelete: false,
                ),
              );
            }
          },
        );
      },
    );

    if (newPhotos.isEmpty) {
      return;
    }

    if (!context.mounted) return;
    await uploadMediaToMediaService(newPhotos, context, currentLocation);
  }

  Future<void> uploadMediaToMediaService(
    List<MediaFile> newPhotos,
    BuildContext context,
    StocktakeLocation currentLocation,
  ) async {
    final mediaAssets = await widget.galleryController.uploadMedia(
      newPhotos,
      context,
      widget.stockTake.id!,
      currentLocation.id,
      widget.stockTake.yardCode,
    );
    _selectedItems.clear();
    currentLocation.mediaAssets.clear();
    currentLocation.mediaAssets.addAll(mediaAssets);
  }

  Future<void> openMediaPicker(
    BuildContext context,
    StocktakeLocation currentLocation,
    String localMediaPath,
  ) async {
    final picker = ImagePicker();
    final pickedFiles = <MediaFile>[];
    final images = await picker.pickMultiImage(imageQuality: 95, limit: 10);
    for (final image in images) {
      final copied = await copyMediaFile(File(image.path), localMediaPath);
      if (copied != null) {
        copied.mediaType = MediaType.image;
        pickedFiles.add(copied);
      }
    }

    if (!context.mounted) return;
    await uploadMediaToMediaService(pickedFiles, context, currentLocation);
  }

  Future<MediaFile?> copyMediaFile(File media, String localMediaPath) async {
    try {
      final fileName = '${const Uuid().v4()}.${media.path.split('.').last}';
      final filePath = '$localMediaPath/$fileName';
      final tempFile = File(filePath);
      await tempFile.writeAsBytes(await media.readAsBytes());
      return MediaFile.fromPath(tempFile.path);
    } on FileSystemException {
      return null;
    }
  }
}
