import 'package:cross_file/cross_file.dart';
import 'package:path/path.dart' as path;
import 'package:video_thumbnail/video_thumbnail.dart';

class AddedMedia {
  AddedMedia({this.media = const <MediaFile>[]});

  final List<MediaFile> media;
}

class MediaFile {
  MediaFile({
    required String media,
    required this.mediaType,
    this.retainSourceOnDelete = true,
    String? mediaThumbnail,
  })  : media = XFile(media),
        mediaThumbnail = mediaThumbnail != null ? XFile(mediaThumbnail) : null;

  MediaType mediaType;
  XFile media;
  XFile? mediaThumbnail;
  bool retainSourceOnDelete;

  bool deleting = false;

  static Future<MediaFile?> fromPath(String filePath) async {
    final mediaType = _getMediaType(filePath);
    return mediaType == MediaType.image
        ? MediaFile(media: filePath, mediaType: mediaType)
        : _createVideoMediaFile(filePath, mediaType);
  }

  static Future<MediaFile?> fromXFile(XFile xFile) async {
    final mediaType = _getMediaType(xFile.path);
    return mediaType == MediaType.image
        ? MediaFile(media: xFile.path, mediaType: mediaType)
        : _createVideoMediaFile(xFile.path, mediaType);
  }

  static Future<MediaFile?> _createVideoMediaFile(
    String filePath,
    MediaType mediaType,
  ) async {
    try {
      return MediaFile(
        media: filePath,
        mediaType: mediaType,
        mediaThumbnail: await VideoThumbnail.thumbnailFile(
          video: filePath,
          maxHeight: 500,
          maxWidth: 500,
        ),
      );
    } catch (_) {
      return MediaFile(media: filePath, mediaType: mediaType);
    }
  }

  static MediaType _getMediaType(String filePath) {
    final extension = path.extension(filePath);
    if (['.jpg', '.jpeg', '.png'].contains(extension)) {
      return MediaType.image;
    }

    if (['.mp4'].contains(extension)) {
      return MediaType.video;
    }

    throw Exception('Unsupported file type');
  }

  void delete() {
    deleting = true;
  }
}

enum MediaType {
  image,
  video,
}
