import 'package:emr_core_api/models/inventory/ticket/legacy/trade2_ticket.dart';
import 'package:json_annotation/json_annotation.dart';

part 'ticket_gallery.g.dart';

@JsonSerializable(fieldRename: FieldRename.none)
class TicketGallery {
  TicketGallery(
    this.id,
    this.tickets,
    this.title,
    this.excludedImageUrls,
    this.createdBy,
    this.createdDate,
    this.publicUrl,
  );
  factory TicketGallery.fromJson(Map<String, dynamic> json) =>
      _$TicketGalleryFromJson(json);

  Map<String, dynamic> toJson() => _$TicketGalleryToJson(this);

  final String id;
  final String title;
  final String createdBy;
  String? publicUrl;
  final DateTime createdDate;
  final List<String> excludedImageUrls;
  late List<Trade2Ticket>? tickets = [];
}
