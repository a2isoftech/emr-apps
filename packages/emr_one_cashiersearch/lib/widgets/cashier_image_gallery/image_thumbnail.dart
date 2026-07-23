import 'package:emr_one_cashiersearch/emr_one_cashiersearch.dart';
import 'package:emr_one_core/config/app_config.dart';
import 'package:emr_one_core/widgets/image/tappable_image.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ImageThumbnail extends StatelessWidget {
  const ImageThumbnail({required this.mediaAsset, super.key});

  final MediaAsset mediaAsset;

  @override
  Widget build(BuildContext context) {
    final url = Provider.of<AppConfig>(context, listen: false).mediaApi;
    var mediaUrl = mediaAsset.url ?? '';
    if (!mediaUrl.startsWith('/') && !mediaUrl.startsWith('http')) {
      mediaUrl = '/$mediaUrl';
    }
    final isVideo = mediaUrl.startsWith('/v/');
    final imageUrl = mediaUrl.toLowerCase().startsWith('http')
        ? mediaUrl
        : '''$url$mediaUrl''';
    return !isVideo
        ? TappableImage(imagePath: imageUrl)
        : TappableVideo(url: mediaAsset.sasUrl);
  }
}
