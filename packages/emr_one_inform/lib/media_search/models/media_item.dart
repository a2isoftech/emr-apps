abstract class MediaTypeName {
  static const String image = 'image';
  static const String video = 'video';
}

class MediaItem {
  MediaItem.fromJson(Map<String, dynamic> json)
      : id = json['id'] as String?,
        mediaType = (json['mediaType'] as String?)?.toLowerCase(),
        mediaPath = json['mediaPath'] as String?,
        thumbnailPath = json['thumbnailPath'] as String?,
        isUploaded = json['isUploaded'] as bool?,
        createdBy = json['createdBy'] as String?,
        createdDate = json['createdDate'] == null
            ? null
            : DateTime.parse(json['createdDate'] as String),
        uploadDate = json['uploadDate'] == null
            ? null
            : DateTime.parse(json['uploadDate'] as String);
  final String? id;
  final String? mediaType;
  final String? mediaPath;
  final String? thumbnailPath;
  final bool? isUploaded;
  final String? createdBy;
  final DateTime? createdDate;
  final DateTime? uploadDate;
}
