import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_sharedtypes/models/models.dart';
import 'package:json_annotation/json_annotation.dart';

part 'edge_ticket_gallery.g.dart';

@JsonSerializable(fieldRename: FieldRename.none)
class EdgeTicketGallery {
  EdgeTicketGallery(
    this.id,
    this.tickets,
    this.title,
    this.excludedImageUrls,
    this.publicUrl,
    this.created,
    this.modified, {
    this.active = true,
    this.tags = const [],
  });
  factory EdgeTicketGallery.fromJson(Map<String, dynamic> json) =>
      _$EdgeTicketGalleryFromJson(json);

  Map<String, dynamic> toJson() => _$EdgeTicketGalleryToJson(this);

  final String id;
  final String title;
  String? publicUrl;
  final List<String> excludedImageUrls;
  late List<Ticket>? tickets = [];
  Created created;
  Modified modified;
  bool active;
  List<String> tags;
}
