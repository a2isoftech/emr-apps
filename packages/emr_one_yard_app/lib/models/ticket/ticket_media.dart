import 'package:emr_one_yard_app/models/enums.dart';
import 'package:json_annotation/json_annotation.dart';

part 'ticket_media.g.dart';

@JsonSerializable(fieldRename: FieldRename.none)
class TicketMedia {
  TicketMedia({required this.url, this.sasThumbnailUrl, this.sasUrl})
      : mediaType = _getMediaType(url);

  factory TicketMedia.fromJson(Map<String, dynamic> json) =>
      _$TicketMediaFromJson(json);

  Map<String, dynamic> toJson() => _$TicketMediaToJson(this);

  final MediaType mediaType;
  final String url;
  final String? sasUrl;
  final String? sasThumbnailUrl;

  static MediaType _getMediaType(String url) {
    if (url.contains('/i/')) {
      return MediaType.photo;
    } else if (url.contains('/v/')) {
      return MediaType.video;
    } else {
      return MediaType.unknown;
    }
  }
}
