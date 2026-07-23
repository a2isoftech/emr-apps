import 'package:emr_one_core/eo_constants.dart';
import 'package:emr_one_core/models/media_file.dart';
import 'package:emr_one_yard_app/components/components.dart';
import 'package:emr_one_yard_app/constants/yard_app_constants.dart';
import 'package:emr_one_yard_app/models/media/group_media.dart';
import 'package:flutter/material.dart';

class MediaGridItem extends StatelessWidget {
  const MediaGridItem({
    required this.item,
    required this.yardCode,
    this.selected,
    super.key,
    this.onTap,
    this.height,
    this.width,
    this.onLongPress,
  });

  final MediaItem item;
  final double? height;
  final double? width;
  final bool? selected;
  final void Function(MediaItem item)? onTap;
  final void Function(MediaItem item)? onLongPress;
  final String yardCode;

  @override
  Widget build(BuildContext context) {
    Widget content;
    const borderWidth = 2.0;

    final adjustedHeight = height != null
        ? height! - borderWidth * 2
        : LayoutConstants.thumbnailSize;
    final adjustedWidth = width != null
        ? width! - borderWidth * 2
        : LayoutConstants.thumbnailSize;
    final thumbnail = ImageWidget.thumbnail(
      imagePath: item.thumbnail,
      localPath: item.localDir,
      token: item.token,
      height: adjustedHeight,
      width: adjustedWidth,
      yardCode: yardCode,
    );

    if (item.mediaType == MediaType.video) {
      content = Stack(
        alignment: Alignment.center,
        children: [
          thumbnail,
          Icon(
            Icons.play_circle_fill,
            size: LayoutConstants.iconSizeSmall,
            color: Theme.of(context).colorScheme.onSurface,
          ),
        ],
      );
    } else {
      content = thumbnail;
    }

    return InkWell(
      onTap: () {
        onTap?.call(item);
      },
      onLongPress: () {
        onLongPress?.call(item);
      },
      child: Container(
        clipBehavior: Clip.hardEdge,
        height: adjustedHeight,
        width: adjustedWidth,
        decoration: BoxDecoration(
          border: selected ?? false
              ? Border.all(
                  color: Theme.of(context).colorScheme.primary,
                  width: 2,
                )
              : null,
          borderRadius: BorderRadius.circular(Insets.gutter / 2),
        ),
        child: content,
      ),
    );
  }
}
