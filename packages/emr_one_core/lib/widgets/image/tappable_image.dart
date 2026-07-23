import 'dart:io';

import 'package:easy_image_viewer/easy_image_viewer.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';

enum TappableImageType { network, file }

/// A tappable image widget that displays an image from a network URL
/// or a local file.
///
/// This Widget is primarily meant to work with our Media API. It uses
/// EasyImageViewer to show a full screen image when tapped.
///
/// It uses the Firebase token to authenticate network requests.
class TappableImage extends StatefulWidget {
  const TappableImage({
    required this.imagePath,
    this.loadingIcon,
    this.getToken,
    this.onTap,
    this.onLongPress,
    super.key,
    this.width = _defaultWidth,
    this.height = _defaultHeight,
    this.missingImageText = _defaultMissingImageText,
    this.thumbnailSize = _defaultThumbnailSize,
    this.networkErrorIcon = _defaultNetworkErrorIcon,
    this.fit = _defaultFit,
    this.alignment = Alignment.center,
  }) : type = TappableImageType.network;

  const TappableImage.localfile({
    required this.imagePath,
    this.loadingIcon,
    this.getToken,
    this.onTap,
    this.onLongPress,
    super.key,
    this.width = _defaultWidth,
    this.height = _defaultHeight,
    this.missingImageText = _defaultMissingImageText,
    this.thumbnailSize = _defaultThumbnailSize,
    this.networkErrorIcon = _defaultNetworkErrorIcon,
    this.fit = _defaultFit,
    this.alignment = Alignment.center,
  }) : type = TappableImageType.file;

  static const double _defaultWidth = 16;
  static const double _defaultHeight = 16;
  static const String _defaultMissingImageText = 'MISSING';
  static const int _defaultThumbnailSize = 128;
  static const Icon _defaultNetworkErrorIcon = Icon(Icons.network_locked);
  static const BoxFit _defaultFit = BoxFit.cover;

  final String imagePath;
  final TappableImageType type;
  final Icon? loadingIcon;
  final double width;
  final double height;
  final String missingImageText;
  final int thumbnailSize;
  final Icon networkErrorIcon;
  final BoxFit fit;
  final AlignmentGeometry alignment;
  final Future<String> Function({bool forceRefresh})? getToken;
  final void Function()? onTap;
  final void Function()? onLongPress;

  @override
  State<TappableImage> createState() => _TappableImageState();
}

class _TappableImageState extends State<TappableImage> {
  late Future<String> getToken;

  @override
  void initState() {
    super.initState();
    getToken = widget.getToken?.call() ?? FirebaseLogin.getToken();
  }

  @override
  Widget build(BuildContext context) {
    return switch (widget.type) {
      TappableImageType.file => GestureDetector(
        onTap: () => widget.onTap != null
            ? widget.onTap?.call()
            : showImageViewer(context, FileImage(File(widget.imagePath))),
        onLongPress: () => widget.onLongPress?.call(),
        child: _getImageWidget(null, widget.imagePath),
      ),
      TappableImageType.network => FutureBuilder(
        future: getToken,
        builder: (context, snapshot) {
          if (snapshot.connectionState != ConnectionState.done) {
            return SizedBox(
              width: widget.width,
              height: widget.height,
              child: Center(
                child: widget.loadingIcon ?? const Icon(Icons.hourglass_empty),
              ),
            );
          }

          if (snapshot.hasError) {
            return widget.networkErrorIcon;
          }

          // This is sort of auto detecting that the image points to
          // our Media Api which typically has a /i/ in the path, if so
          // its assumed it is a Media Api image and it modifies the URL
          // to request a thumbnail of the image.
          final firstImageSegmentIndex = widget.imagePath.indexOf('/i/');
          final newpath = firstImageSegmentIndex == -1
              ? widget.imagePath
              : '${widget.imagePath.substring(0, firstImageSegmentIndex)}'
                    '/i/${widget.thumbnailSize}/0/'
                    '${widget.imagePath.substring(firstImageSegmentIndex + 3)}';

          return GestureDetector(
            onTap: () => widget.onTap != null
                ? widget.onTap?.call()
                : showImageViewer(
                    context,
                    NetworkImage(
                      widget.imagePath,
                      headers: {'Authorization': 'Bearer ${snapshot.data!}'},
                    ),
                  ),
            onLongPress: () => widget.onLongPress?.call(),
            child: _getImageWidget(snapshot.data, newpath),
          );
        },
      ),
    };
  }

  Widget _getImageWidget(String? token, String path) => MouseRegion(
    cursor: SystemMouseCursors.click,
    child: switch (widget.type) {
      TappableImageType.network => Image.network(
        path,
        fit: widget.fit,
        alignment: widget.alignment,
        errorBuilder: (context, error, stackTrace) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Symbols.image_not_supported),
              Text(
                widget.missingImageText,
                textAlign: TextAlign.center,
                style: EmrOneConstants.kBannerTextStyle.copyWith(
                  color: Theme.of(context).colorScheme.onSurface,
                ),
              ),
            ],
          );
        },
        frameBuilder:
            (_, Widget child, int? frame, bool wasSynchronouslyLoaded) =>
                _frameBuilder(wasSynchronouslyLoaded, child, frame),
        headers: {'Authorization': 'Bearer ${token!}'},
      ),
      TappableImageType.file => Image.file(
        File(widget.imagePath),
        fit: widget.fit,
        alignment: widget.alignment,
        frameBuilder:
            (_, Widget child, int? frame, bool wasSynchronouslyLoaded) =>
                _frameBuilder(wasSynchronouslyLoaded, child, frame),
      ),
    },
  );

  Widget _frameBuilder(bool wasSynchronouslyLoaded, Widget child, int? frame) {
    if (frame == null) {
      return SizedBox(
        width: widget.width,
        height: widget.height,
        child: Center(
          child:
              widget.loadingIcon ?? const Icon(Icons.hourglass_empty_outlined),
        ),
      );
    }
    return child;
  }
}
