import 'dart:async';

import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/models/media_file.dart';
import 'package:emr_one_yard_app/controllers/media_controller.dart';
import 'package:emr_one_yard_app/extensions/ticket_extensions.dart';
import 'package:emr_one_yard_app/helpers/media_helper.dart';
import 'package:emr_one_yard_app/models/media/group_media.dart';
import 'package:emr_one_yard_app/models/media/inspection_media.dart';
import 'package:emr_one_yard_app/services/yard_ticket_service.dart';
import 'package:signals/signals_flutter.dart';

typedef InspectionMediaType =
    Query$GetTicketDetails$ticket$lines$inspectionDetails$inspectionMedia;

class TicketDetailsController {
  TicketDetailsController({
    required this.ticketService,
    required this.userInfoService,
    required this.mediaController,
  });

  final YardTicketService ticketService;
  final UserInfoService userInfoService;
  final MediaController mediaController;
  final ticketDetailsSignal = signal<AsyncState<Query$GetTicketDetails$ticket>>(
    const AsyncLoading(),
  );
  final isLoading = signal<bool>(false);
  List<Query$GetTicketDiscrepantTypes$ticketDiscrepantTypes> discrepantTypes =
      [];
  String token = '';
  String localPath = '';

  Signal<Query$GetTicketDetails$ticket?> ticketChange =
      signal<Query$GetTicketDetails$ticket?>(null);

  //UI logic
  final allMediaMap = signal<Map<int, List<MediaItem>>>({});
  final loadOutImages = listSignal<MediaItem>([]);

  List<MediaItem> mapInspectionMedia(
    Iterable<InspectionMediaType>? media,
    int lineNumber,
    String localPath,
    String token,
    String mediaApiUrl,
  ) {
    if (media == null) return [];
    return media
        .map(
          (s) => MediaItem(
            mediaUrl: s.url,
            token: token,
            id: lineNumber,
            localDir: localPath,
            remoteUrl: mediaApiUrl,
            discrepantId: s.discrepantReason,
          ),
        )
        .toList();
  }

  void buildLineMediaMap(
    Query$GetTicketDetails$ticket ticket,
    String localPath,
    String token,
    String mediaApiUrl,
    String yardCode,
  ) {
    loadOutImages.value = ticket.getLoadoutMedia(
      localPath,
      token,
      mediaApiUrl,
      yardCode,
    );

    final mediaMap = <int, List<MediaItem>>{};
    mediaMap[0] = ticket.getHeaderMedia(
      localPath,
      token,
      mediaApiUrl,
      yardCode,
    );
    for (final line in ticket.activeLines) {
      mediaMap[line.lineNumber] = mapInspectionMedia(
        line.inspectionDetails?.inspectionMedia,
        line.lineNumber,
        localPath,
        token,
        mediaApiUrl,
      );
    }
    allMediaMap.value = mediaMap;
  }

  void addMediaToLine(int line, List<MediaItem> newMedia) {
    if (newMedia.isEmpty) return;
    final current = allMediaMap.value[line] ?? [];
    allMediaMap.value = {
      ...allMediaMap.value,
      line: [...current, ...newMedia],
    };
  }

  void removeMediaFromLines(List<MediaItem> mediaToRemove) {
    if (mediaToRemove.isEmpty) return;
    final grouped = <int, List<MediaItem>>{};
    for (final item in mediaToRemove) {
      grouped.putIfAbsent(item.id, () => []).add(item);
    }

    final updatedMap = Map<int, List<MediaItem>>.from(allMediaMap.value);
    grouped.forEach((line, items) {
      final current = updatedMap[line] ?? [];
      final updated = current.where((item) => !items.contains(item)).toList();
      updatedMap[line] = updated;
    });

    allMediaMap.value = updatedMap;
  }

  void updateSingleMediaItem(String url, String? note, int lineId) {
    final updatedMap = Map<int, List<MediaItem>>.from(allMediaMap.value);
    final currentList = updatedMap[lineId] ?? [];
    final updatedList = List<MediaItem>.from(currentList);
    final index = updatedList.indexWhere((s) => s.mediaUrl == url);
    if (index != -1) {
      updatedList[index] = updatedList[index].copyWith(note: note);
    }
    updatedMap[lineId] = updatedList;
    allMediaMap.value = updatedMap;
  }

  Future<AsyncState<Query$GetTicketDetails$ticket>> getTicketDetails(
    String id,
  ) async {
    try {
      final data = await ticketService.getTicketDetails(id);
      if (data != null) {
        return AsyncData(data.ticket);
      }
      return const AsyncError('Error', StackTrace.empty);
    } on Exception catch (ex, trace) {
      EmrLogger.error(
        'Cannot get ticket details',
        source: 'TicketDetailsController.getTicketDetails()',
        error: ex,
        stackTrace: trace,
        params: {'TicketId': id},
      );
      return const AsyncError('Error', StackTrace.empty);
    }
  }

  Future<void> refreshTicket(String id) async {
    final data = await ticketService.getTicketDetails(id);
    if (data != null) {
      ticketChange.value = data.ticket;
    }
  }

  Future<List<String>> addTicketMedia(
    String ticketId,
    int ticketNumber,
    List<InspectionMedia> lineMedia, {
    List<String>? videoThumbnails,
  }) async {
    try {
      final remotePaths = <String>[];
      final localPaths = <String>[];
      final mediaUploads = <Input$YardAppMediaInput>[];
      for (final input in lineMedia) {
        final compressedFile = switch (input.mediaType) {
          MediaType.image => await mediaController.compressImage(
            input.localUrl,
          ),
          MediaType.video => await mediaController.compressVideo(
            input.localUrl,
          ),
        };

        if (compressedFile == null) {
          EmrLogger.error(
            'Cannot add ticket media',
            source: 'TicketDetailsController.addTicketMedia()',
            params: {
              'TicketId': ticketId,
              'lineNumber': input.lineNumber.toString(),
            },
          );
          continue;
        }

        final url = MediaHelper.createMediaFullUrl(
          mediaController.mediaApiUrl,
          compressedFile.path,
          '$ticketNumber/${input.lineNumber}',
        );

        localPaths.add(input.localUrl);
        remotePaths.add(url);
        mediaUploads.add(
          Input$YardAppMediaInput(
            lineNumber: input.lineNumber,
            url: MediaHelper.removeBasePath(url),
            comment: input.comment,
            discrepantId: input.discrepantId,
          ),
        );
      }
      final input = Input$TicketInspectionMediaInput(
        ticketId: ticketId,
        media: mediaUploads,
      );
      final result = await ticketService.updateTicketMedia(input);
      if (!result) {
        EmrLogger.error(
          'Error occured while saving ticke media details. No media uploaded.',
          stackTrace: StackTrace.current,
          source: 'TicketDetailsController.addInspectionDetails()',
          params: {'TicketId': ticketId},
        );
        return [];
      }

      if (videoThumbnails != null) {
        for (final video in videoThumbnails) {
          localPaths.add(video);
          final url = MediaHelper.createVideoThumbnailUrl(
            mediaController.mediaApiUrl,
            video,
            '$ticketNumber/${lineMedia.first.lineNumber}',
          );
          remotePaths.add(url);
        }
      }
      await mediaController.addTaskToUpload(localPaths, remotePaths);
      return remotePaths;
    } on Exception catch (ex, trace) {
      EmrLogger.error(
        'Cannot add ticket media',
        source: 'TicketDetailsController.addTicketMedia()',
        error: ex,
        stackTrace: trace,
        params: {'TicketId': ticketId},
      );
      return [];
    }
  }

  Future<void> loadTicketDetails(String ticketId) async {
    ticketDetailsSignal.value = const AsyncLoading();
    final result = await getTicketDetails(ticketId);
    localPath = await MediaHelper.getLocalFolder(
      result.value?.getTicketDirName() ?? ticketId,
    );
    token = await FirebaseLogin.getToken();
    ticketDetailsSignal.value = result;
  }

  Future<bool> removeMedia(String ticketId, List<MediaItem> items) async {
    try {
      isLoading.value = true;
      final mediaMap = <int, List<String>>{};

      for (final item in items) {
        final key = item.id;
        final path = MediaHelper.removeBasePath(item.mediaUrl);
        mediaMap.putIfAbsent(key, () => []).add(path);
      }

      final input = Input$TicketInspectionMediaInput(
        ticketId: ticketId,
        media: mediaMap.entries
            .expand(
              (entry) => entry.value.map(
                (path) =>
                    Input$YardAppMediaInput(lineNumber: entry.key, url: path),
              ),
            )
            .toList(),
        isRemoved: true,
      );

      final result = await ticketService.updateTicketMedia(input);
      if (result) {
        removeMediaFromLines(items);
      }
      isLoading.value = false;
      return result;
    } on Exception catch (ex, trace) {
      EmrLogger.error(
        'Cannot remove ticket media',
        source: 'TicketDetailsController.removeMedia()',
        error: ex,
        stackTrace: trace,
        params: {'TicketId': ticketId},
      );
      isLoading.value = false;
      return false;
    }
  }

  Future<bool> updateMediaNote(
    String ticketId,
    int line,
    String? note,
    String mediaUrl,
  ) async {
    try {
      final result = await ticketService.updateMediaComment(
        ticketId,
        line,
        note,
        mediaUrl,
      );
      if (result) {
        updateSingleMediaItem(mediaUrl, note, line);
      }
      return result;
    } on Exception catch (ex, trace) {
      EmrLogger.error(
        'Cannot update ticket media',
        source: 'TicketDetailsController.updateMediaNote()',
        error: ex,
        stackTrace: trace,
        params: {'TicketId': ticketId},
      );
      return Future.value(false);
    }
  }

  Future<bool> addInspectionDetails(
    String ticketId,
    int ticketNumber,
    int line,
    List<String>? discrepancies,
    String? comment,
    List<InspectionMedia> media, {
    List<String>? videoThumbnails,
  }) async {
    try {
      final remotePaths = <String>[];
      final localPaths = <String>[];
      final mediaUploads = <Input$YardAppMediaInput>[];
      for (final input in media) {
        final compressedFile = switch (input.mediaType) {
          MediaType.image => await mediaController.compressImage(
            input.localUrl,
          ),
          MediaType.video => await mediaController.compressVideo(
            input.localUrl,
          ),
        };

        if (compressedFile == null) {
          EmrLogger.error(
            'File compression failed',
            source: 'TicketDetailsController.addInspectionDetails()',
            params: {
              'TicketId': ticketId,
              'discrepancy': input.discrepantId.toString(),
            },
          );
          continue;
        }
        final url = MediaHelper.createMediaFullUrl(
          mediaController.mediaApiUrl,
          compressedFile.path,
          '$ticketNumber/$line',
        );
        localPaths.add(input.localUrl);
        remotePaths.add(url);

        mediaUploads.add(
          Input$YardAppMediaInput(
            lineNumber: line,
            url: MediaHelper.removeBasePath(url),
            comment: input.comment,
            discrepantId: input.discrepantId,
          ),
        );
      }

      final input = Input$TicketInspectionInput(
        discrepancies: discrepancies ?? [],
        comment: comment,
        lineNumber: line,
        ticketId: ticketId,
        media: mediaUploads,
      );
      final result = await ticketService.upsertInspectionDetails(input);
      if (!result) {
        EmrLogger.error(
          'Error oocured while saving inspection details. No media uploaded.',
          stackTrace: StackTrace.current,
          source: 'TicketDetailsController.addInspectionDetails()',
          params: {'TicketId': ticketId},
        );
        return result;
      }

      if (videoThumbnails != null) {
        for (final video in videoThumbnails) {
          localPaths.add(video);
          final url = MediaHelper.createVideoThumbnailUrl(
            mediaController.mediaApiUrl,
            video,
            '$ticketNumber/$line',
          );
          remotePaths.add(url);
        }
      }
      await mediaController.addTaskToUpload(localPaths, remotePaths);

      return result;
    } on Exception catch (ex, trace) {
      EmrLogger.error(
        'Error while processing discrepant details.',
        error: ex,
        stackTrace: trace,
        source: 'TicketDetailsController.addInspectionDetails()',
        params: {'TicketId': ticketId},
      );
      return Future.value(false);
    }
  }

  Future<bool> addNewComment(String content, String ticketId, int line) async {
    try {
      final result = await ticketService.addInspectionComment(
        ticketId,
        line,
        content,
      );
      return result;
    } on Exception catch (ex, trace) {
      EmrLogger.error(
        'Error during add inspection comment',
        source: 'DiscrepantDetailsController.addNewComment()',
        error: ex,
        stackTrace: trace,
      );
      return Future.value(false);
    }
  }
}
