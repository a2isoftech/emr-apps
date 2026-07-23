import 'package:image_picker/image_picker.dart';

class NewWorkRequestMedia {
  NewWorkRequestMedia({
    required this.id,
    required this.mediaTypeId,
    this.fileName,
    this.filePath,
    this.file,
    this.thumbnail,
  });

  factory NewWorkRequestMedia.fromJson(Map<String, dynamic> json) =>
      _$NewWorkRequestMediaFromJson(json);
  final String id;
  final String? fileName;
  final int mediaTypeId;
  final String? filePath;
  final XFile? file;
  final XFile? thumbnail;

  Map<String, dynamic> toJson() => _$NewWorkRequestMediaToJson(this);
}

enum MediaTypeId { image, video }

NewWorkRequestMedia _$NewWorkRequestMediaFromJson(Map<String, dynamic> json) =>
    NewWorkRequestMedia(
      id: json['id'] as String,
      fileName: json['fileName'] as String?,
      mediaTypeId: json['mediaTypeId'] as int,
      filePath: json['filePath'] as String?,
    );

Map<String, dynamic> _$NewWorkRequestMediaToJson(
  NewWorkRequestMedia instance,
) =>
    <String, dynamic>{
      'id': instance.id,
      'fileName': instance.fileName,
      'mediaTypeId': instance.mediaTypeId,
      'filePath': instance.filePath,
    };
