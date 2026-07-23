import 'dart:async';
import 'dart:typed_data';

import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_inform/constants/constants_export.dart';
import 'package:emr_one_inform/graphql/queries/getMediaItemsForWorkOrder.graphql.dart';
import 'package:emr_one_inform/graphql/queries/getMediaItemsForWorkRequest.graphql.dart';
import 'package:emr_one_inform/media_search/models/media_data.dart';
import 'package:emr_one_inform/media_search/models/media_item.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:mime/mime.dart';

class MediaItemsService {
  MediaItemsService({required this.httpClient});

  final ResilientHttpClient httpClient;

  Future<List<MediaItem>> getMediaItemsForMaintenanceRequest(
    String cmpCode,
    String workRequestId,
  ) async {
    final result = await documentNodeQuerygetWorkRequestMedia.execute(
      httpClient,
      Query$getWorkRequestMedia.fromJson,
      variables: Variables$Query$getWorkRequestMedia(
        cmpCode: cmpCode,
        requestId: workRequestId,
      ),
    );

    if (result.hasErrors()) return [];
    if (result.data == null) return [];

    return result.data!.mediaItemsForWorkRequest
        .map((e) => MediaItem.fromJson(e.toJson()))
        .toList();
  }

  Future<List<MediaItem>> getMediaItemsForWorkOrder(
    String cmpCode,
    String workRequestId,
  ) async {
    final result = await documentNodeQuerygetWorkOrderMedia.execute(
      httpClient,
      Query$getWorkOrderMedia.fromJson,
      variables: Variables$Query$getWorkOrderMedia(
        cmpCode: cmpCode,
        refId: workRequestId,
      ),
    );

    if (result.hasErrors()) return [];
    if (result.data == null) return [];

    return result.data!.mediaItemsForWorkOrder
        .map((e) => MediaItem.fromJson(e.toJson()))
        .toList();
  }

  Future<NetworkImage> getImage(String mediaPath) async {
    final headers = <String, String>{
      'Authorization': 'Bearer ${await httpClient.getToken()}',
    };

    return NetworkImage(
      getDownloadUrlForMediaPath(mediaPath, 'image').toString(),
      headers: headers,
    );
  }

  Uri getDownloadUrlForMediaPath(String mediaPath, String mediaType) {
    var baseUrl = httpClient.getUri().toString();
    if (baseUrl.endsWith('/')) {
      baseUrl = baseUrl.substring(0, baseUrl.length - 1);
    }
    final uri = Uri.parse('$baseUrl${FormAppApiPath.downloadMedia}').replace(
      queryParameters: {'mediaPath': mediaPath, 'mediaType': mediaType},
    );

    return uri;
  }

  Future<void> downloadMediaItem(
    MediaItem mediaItem, {
    void Function(MediaDownloadProgress)? onProgress,
    Future<void> Function(MediaData)? onDone,
  }) async {
    final token = await httpClient.getToken();

    final request = http.Request(
      'GET',
      getDownloadUrlForMediaPath(mediaItem.mediaPath!, mediaItem.mediaType!),
    );
    request.headers['Authorization'] = 'Bearer $token';

    final response = await http.Client().send(request);

    // final response = await httpClient.get(
    //   getDownloadUrlForMediaPath(mediaItem.mediaPath!, mediaItem.mediaType!),
    // );

    if (response.statusCode != 200) {
      throw Exception(
        'Failed to download ${mediaItem.mediaType} at path '
        '"${mediaItem.mediaPath}". Status code ${response.statusCode}.',
      );
    }

    final expectedBytes = response.contentLength;
    var byteCount = 0;
    final allBytes = <int>[];

    const prefix = 'filename=';
    final filename = response.headers['content-disposition']
        ?.split('; ')
        .firstWhere((str) => str.startsWith(prefix), orElse: () => prefix)
        .substring(prefix.length);

    final completer = Completer<void>();

    response.stream.listen((value) {
      byteCount += value.length;
      if (onDone != null) {
        allBytes.addAll(value);
      }
      if (onProgress != null) {
        onProgress(
          MediaDownloadProgress(
            bytes: value,
            byteCount: byteCount,
            fileName: filename,
            totalBytes: expectedBytes,
          ),
        );
      }
    }).onDone(() async {
      if (onDone != null) {
        await onDone(
          MediaData(
            Uint8List.fromList(allBytes),
            filename,
            lookupMimeType('', headerBytes: allBytes),
          ),
        );
      }
      completer.complete();
    });

    await completer.future;
  }
}
