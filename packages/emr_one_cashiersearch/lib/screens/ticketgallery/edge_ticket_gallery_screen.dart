import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_cashiersearch/emr_one_cashiersearch.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';

class EdgeTicketGalleryScreen extends StatefulWidget {
  const EdgeTicketGalleryScreen({
    required this.ticketsService,
    required this.galleryId,
    super.key,
  });

  final EdgeTicketsService ticketsService;
  final String galleryId;

  @override
  State<EdgeTicketGalleryScreen> createState() =>
      _EdgeTicketGalleryScreenState();
}

class _EdgeTicketGalleryScreenState extends State<EdgeTicketGalleryScreen> {
  late Future<GraphQLResponse<(EdgeTicketGallery, String)>>
      _ticketGalleryFuture;

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
