import 'package:emr_one_inform/media_search/models/media_item.dart';
import 'package:flutter/material.dart';

class MediaItemState {
  MediaItemState(this.mediaItem, this.thumbnailTask);
  final MediaItem mediaItem;
  final Future<NetworkImage>? thumbnailTask;
  bool hovering = false;
}
