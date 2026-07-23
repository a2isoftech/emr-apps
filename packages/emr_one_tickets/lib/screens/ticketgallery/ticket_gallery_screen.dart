import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_tickets/controllers/ticket_gallery_controller.dart';
import 'package:emr_one_tickets/services/services.dart';
import 'package:emr_one_tickets/widgets/ticketgallery/ticket_gallery.dart';
import 'package:flutter/material.dart';

class TicketGalleryScreen extends StatefulWidget {
  const TicketGalleryScreen({
    required this.ticketsService,
    required this.galleryId,
    super.key,
  });

  final TicketsService ticketsService;
  final String galleryId;

  @override
  State<TicketGalleryScreen> createState() => _TicketGalleryScreenState();
}

class _TicketGalleryScreenState extends State<TicketGalleryScreen> {
  late Future<GraphQLResponse<(TicketGallery, String)>> _ticketGalleryFuture;

  @override
  void initState() {
    super.initState();

    _ticketGalleryFuture = widget.ticketsService.loadTicketGallery(
      widget.galleryId,
    );
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _ticketGalleryFuture,
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }

        return TicketGalleryWidget(
          controller: TicketGalleryController(
            ticketsService: widget.ticketsService,
            gallery: snapshot.data!.data!.$1,
            changeVector: snapshot.data!.data!.$2,
          ),
        );
      },
    );
  }
}
