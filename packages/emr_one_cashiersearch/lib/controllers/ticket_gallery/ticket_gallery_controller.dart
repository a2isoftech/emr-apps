import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_cashiersearch/emr_one_cashiersearch.dart';

class TicketGalleryController {
  TicketGalleryController({
    required this.gallery,
    required this.ticketsService,
    required this.changeVector,
  }) {
    currentChangeVector = changeVector;
  }

  final EdgeTicketGallery gallery;
  final EdgeTicketsService ticketsService;
  final String changeVector;

  String currentChangeVector = '';

  Future<bool> createZipArchive(
    String zipDownloadUrl,
    String galleryId,
    List<String> images,
    String filename,
  ) async =>
      ticketsService.createZipArchive(
        zipDownloadUrl,
        galleryId,
        images,
        filename,
      );
}
