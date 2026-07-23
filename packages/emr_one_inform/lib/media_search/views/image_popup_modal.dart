import 'package:emr_one_inform/media_search/models/media_item.dart';
import 'package:emr_one_inform/media_search/services/media_items_service.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ImagePopup extends StatefulWidget {
  const ImagePopup({required this.image, required this.service, super.key});
  final MediaItem image;
  final MediaItemsService service;

  @override
  State<StatefulWidget> createState() => _ImagePopupState();
}

class _ImagePopupState extends State<ImagePopup> {
  static const double _minDimension = 200;
  bool _hovering = false;

  Size _calculateMaxSize() {
    final screenSize = MediaQuery.of(context).size;

    var width = screenSize.width * 0.9;
    var height = screenSize.height * 0.9;

    if (width < _minDimension) {
      width = _minDimension;
    }
    if (height < _minDimension) {
      height = _minDimension;
    }

    return Size(width, height);
  }

  @override
  Widget build(BuildContext context) {
    final maxSize = _calculateMaxSize();

    return OverflowBox(
      minHeight: _minDimension,
      minWidth: _minDimension,
      maxWidth: maxSize.width,
      maxHeight: maxSize.height,
      child: MouseRegion(
        onEnter: (evt) => setState(() => _hovering = true),
        onExit: (evt) => setState(() => _hovering = false),
        child: Stack(
          alignment: Alignment.topRight,
          children: [
            InteractiveViewer(
              child: image,
            ),
            _closeButton,
          ],
        ),
      ),
    );
  }

  Widget get image => FutureBuilder<NetworkImage>(
        future: widget.service.getImage(widget.image.mediaPath!),
        builder: (ctx, snapshot) {
          if (snapshot.hasData) {
            var isLoaded = false;
            return Image(
              image: snapshot.data!,
              frameBuilder: (context, child, frame, wasSynchronouslyLoaded) {
                isLoaded = frame != null;
                return child;
              },
              loadingBuilder: (ctx, child, progress) {
                if (isLoaded && progress == null) {
                  return child;
                }

                final placeholderSize = _calculateMaxSize();

                return Stack(
                  children: [
                    Center(
                      child: Shimmer.fromColors(
                        baseColor: Colors.grey.shade400,
                        highlightColor: Colors.grey.shade100,
                        child: Container(
                          width: placeholderSize.width,
                          height: placeholderSize.height,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const Align(
                      child: CircularProgressIndicator(),
                    ),
                  ],
                );
              },
            );
          } else {
            return const Text('Processing...');
          }
        },
      );

  Widget get _closeButton => Visibility(
        visible: _hovering,
        child: FloatingActionButton.small(
          onPressed: () => Navigator.pop(context),
          heroTag: 'video-player',
          child: const Icon(Icons.close),
        ),
      );
}
