import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_inform/media_search/controllers/media_items_controller.dart';
import 'package:emr_one_inform/media_search/models/media_item.dart';
import 'package:emr_one_inform/media_search/models/media_item_state.dart';
import 'package:emr_one_inform/media_search/services/media_items_service.dart';
import 'package:emr_one_inform/media_search/views/image_popup_modal.dart';
import 'package:emr_one_inform/media_search/views/video_palyer_modal.dart';
import 'package:emr_one_inform/screens/base/base_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MediaItemsView extends BasePage<MediaItemsController> {
  MediaItemsView({
    required this.workRequestId,
    required this.cmpCode,
    super.key,
  });

  final String workRequestId;
  final String cmpCode;

  static const double _minDimension = 200;

  @override
  Widget? getActionButton(BuildContext context) => null;

  @override
  PreferredSizeWidget? getAppBar(BuildContext context) => null;

  @override
  String getTitle(BuildContext context) =>
      '${context.l10n.media} - $workRequestId';

  @override
  void initState(BuildContext context) {
    controller.init(workRequestId, cmpCode);
    controller.getMediaItems();
  }

  @override
  Widget widgetBuilder(BuildContext context) {
    if (controller.isBusy) return _loadingIndicator;
    return _body(context);
  }

  Widget _body(BuildContext context) => (controller.mediaItems.isNotEmpty)
      ? Padding(
          padding: const EdgeInsets.all(15),
          child: Wrap(
            spacing: 10,
            runSpacing: 10,
            children: controller.mediaItems
                .map<Widget>((state) => _thumbnailWidget(context, state))
                .toList(),
          ),
        )
      : const Align(
          child: Center(child: Text('No media found for work request...')),
        );

  Widget get _loadingIndicator => const LinearProgressIndicator();

  Widget _thumbnailWidget(BuildContext context, MediaItemState state) =>
      GestureDetector(
        onTap: () => _showMediaItemFullRes(context, state.mediaItem),
        child: _loadingThumbnailWidget(context, state),
      );

  Widget _loadingThumbnailWidget(BuildContext context, MediaItemState state) {
    Widget thumbnailImage;

    if (state.thumbnailTask != null) {
      thumbnailImage = FutureBuilder<NetworkImage>(
        future: state.thumbnailTask,
        builder: (ctx, snapshot) {
          if (snapshot.hasData) {
            return Container(
              width: _minDimension,
              height: _minDimension,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.all(Radius.circular(8)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withAlpha(128),
                    spreadRadius: 2,
                    blurRadius: 3,
                  ),
                ],
                image: DecorationImage(
                  fit: BoxFit.contain,
                  image: snapshot.data!,
                ),
              ),
            );
          } else {
            return const Text('Processing...');
          }
        },
      );
    } else {
      thumbnailImage = Container(
        color: Colors.grey.shade400,
        width: _minDimension,
        height: _minDimension,
        child: const Icon(
          Icons.image_not_supported,
          color: Colors.black,
        ),
      );
    }

    return MouseRegion(
      onEnter: (evt) => setState(() => state.hovering = true),
      onExit: (evt) => setState(() => state.hovering = false),
      cursor: SystemMouseCursors.click,
      child: (state.mediaItem.mediaType == MediaTypeName.video)
          ? Stack(
              alignment: Alignment.center,
              children: [thumbnailImage, _playButton(context, state.mediaItem)],
            )
          : thumbnailImage,
    );
  }

  Widget _playButton(BuildContext context, MediaItem mediaItem) =>
      FloatingActionButton.extended(
        heroTag: mediaItem.id,
        icon: const Icon(Icons.play_arrow),
        label: const Text('Play Video'),
        onPressed: () => _playVideo(context, mediaItem),
      );

  Future<void> _playVideo(BuildContext context, MediaItem video) async {
    final service = Provider.of<MediaItemsService>(context, listen: false);
    return showDialog(
      context: context,
      builder: (ctx) => VideoPlayerPopup(
        videoItem: video,
        service: service,
      ),
    );
  }

  Future<void> _showMediaItemFullRes(
    BuildContext context,
    MediaItem mediaItem,
  ) async {
    final service = Provider.of<MediaItemsService>(context, listen: false);
    switch (mediaItem.mediaType) {
      case MediaTypeName.image:
        return showDialog<void>(
          context: context,
          builder: (ctx) => ImagePopup(
            image: mediaItem,
            service: service,
          ),
        );
      case MediaTypeName.video:
        return _playVideo(context, mediaItem);
    }
  }
}
