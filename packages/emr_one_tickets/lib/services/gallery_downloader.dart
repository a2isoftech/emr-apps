import 'dart:async';
import 'dart:convert';

import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_tickets/emr_one_tickets.dart';
import 'package:http/http.dart';

class TicketGalleryDownloader {
  static Future<bool> createZipArchive(
    Uri compressorUri,
    BaseClient httpClient,
    String galleryId,
    List<String> images,
    String filename,
  ) async {
    if (images.isEmpty) {
      return true;
    }

    try {
      final response = await httpClient.post(
        compressorUri,
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({'Urls': images}),
      );

      if (response.statusCode == 200) {
        final exportService = ExportDataService();

        await exportService.downloadFileWeb(
          fileName: '$filename.zip',
          data: response.bodyBytes,
        );

        EmrLogger.event(
          TicketsConstants.kTicketsTelemetryGalleryZipOk,
          params: {
            'galleryId': galleryId,
            'imageCount': images.length.toString(),
            'responseSize': response.bodyBytes.length.toString(),
          },
        );

        return true;
      }

      EmrLogger.event(
        TicketsConstants.kTicketsTelemetryGalleryZipError,
        params: {
          'galleryId': galleryId,
          'imageCount': images.length.toString(),
          'response': response.statusCode.toString(),
        },
      );

      return false;
    } catch (e) {
      EmrLogger.event(
        TicketsConstants.kTicketsTelemetryGalleryZipException,
        params: {
          'galleryId': galleryId,
          'imageCount': images.length.toString(),
          'exception': e.toString(),
        },
      );

      return false;
    }
  }
}
