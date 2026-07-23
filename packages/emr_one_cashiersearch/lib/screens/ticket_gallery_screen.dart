import 'dart:math';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_image_viewer/easy_image_viewer.dart';
import 'package:emr_one_cashiersearch/emr_one_cashiersearch.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';

class TicketGalleryScreen extends StatefulWidget {
  const TicketGalleryScreen({required this.images, super.key});
  final List<MediaAsset>? images;
  @override
  State<TicketGalleryScreen> createState() => _TicketGalleryScreenState();
}

class _TicketGalleryScreenState extends State<TicketGalleryScreen> {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final width = mediaQuery.size.width;
    final imgColCount = 3 + (max(0, width - 600) / 400).round();
    final images = <Widget>[];
    images.addAll(
      widget.images?.map(
            (e) => SelectableImage(
              child: GestureDetector(
                onTap: () => e.mediaType == MediaType.image
                    ? showImageViewer(
                        context,
                        CachedNetworkImageProvider(e.url ?? ''),
                      )
                    : _showVideoViewer(context, e.url ?? ''),
                child: e.mediaType == MediaType.image
                    ? CachedNetworkImage(
                        imageUrl: e.url ?? '',
                        progressIndicatorBuilder:
                            (context, url, downloadProgress) => Padding(
                          padding: const EdgeInsets.all(Insets.gutter * 2),
                          child: Center(
                            child: SizedBox(
                              width: 48,
                              height: 48,
                              child: CircularProgressIndicator(
                                value: downloadProgress.progress,
                              ),
                            ),
                          ),
                        ),
                        errorWidget: (context, url, error) =>
                            const Icon(Icons.error),
                      )
                    : _showThumbnailForVideo(e.thumbnailUrl ?? ''),
              ),
            ),
          ) ??
          [],
    );
    return Padding(
      padding: const EdgeInsets.all(Insets.gutter),
      child: Column(
        children: [
          const FormHeadingRow(
            headings: ['Gallery'],
            isLeading: true,
          ),
          GridView(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: imgColCount,
              mainAxisSpacing: Insets.gutter / 2,
              crossAxisSpacing: Insets.gutter / 2,
            ),
            children: images,
          ),
        ],
      ),
    );
  }

  Widget _showThumbnailForVideo(String url) {
    return SizedBox(
      width: 100,
      height: 100,
      child: Stack(
        children: [
          Center(
            child: Image(
              image: NetworkImage(url),
            ),
          ),
          const MouseRegion(
            child: Center(
              child: Icon(
                Icons.play_arrow,
                size: 40,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _showVideoViewer(BuildContext context, String videoUrl) {
    return showDialog(
      context: context,
      builder: (context) {
        return GalleryVideoPlayer(
          videoUrl: videoUrl,
        );
      },
    );
  }
}
