import 'package:emr_one_core/models/media_file.dart';
import 'package:emr_one_yard_app/helpers/media_helper.dart';
import 'package:flutter/material.dart';

class MediaGroup {
  MediaGroup({
    required this.title,
    required this.items,
    this.isDiscrepant,
    this.key,
  });

  final String title;
  final List<MediaItem> items;
  final bool? isDiscrepant;
  final String? key;
}

@immutable
class MediaItem {
  const MediaItem({
    required this.mediaUrl,
    required this.token,
    required this.id,
    required this.localDir,
    required this.remoteUrl,
    this.note,
    this.discrepantId,
    this.isNew,
  });

  final String mediaUrl;
  final String token;
  final String localDir;
  final int id;
  final String? note;
  final String? discrepantId;
  final String remoteUrl;
  final bool? isNew;

  MediaType get mediaType => MediaHelper.getMediaType(mediaUrl);
  bool get hasDiscrepancy => discrepantId?.isNotEmpty ?? false;
  String get fullUrl => MediaHelper.getMediaFullPath(remoteUrl, mediaUrl);
  String get thumbnail {
    return MediaHelper.getMediaType(mediaUrl) == MediaType.video
        ? MediaHelper.videoThumbnailFromRemote(
            remoteUrl,
            mediaUrl,
          )
        : MediaHelper.getMediaFullPath(
            remoteUrl,
            MediaHelper.getImageThumbnailPath(300, mediaUrl),
          );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MediaItem &&
          runtimeType == other.runtimeType &&
          mediaUrl == other.mediaUrl;

  @override
  int get hashCode => mediaUrl.hashCode;

  // copyWith method
  MediaItem copyWith({
    String? mediaUrl,
    bool? isVideo,
    String? token,
    String? localDir,
    MediaType? mediaType,
    int? id,
    String? note,
    String? discrepantId,
    String? discrepancy,
    String? remoteUrl,
    bool? isNew,
  }) {
    return MediaItem(
      mediaUrl: mediaUrl ?? this.mediaUrl,
      token: token ?? this.token,
      localDir: localDir ?? this.localDir,
      id: id ?? this.id,
      note: note ?? this.note,
      discrepantId: discrepantId ?? this.discrepantId,
      remoteUrl: remoteUrl ?? this.remoteUrl,
      isNew: isNew ?? this.isNew,
    );
  }
}
