import 'dart:async';
import 'dart:io';

import 'package:emr_core_api/graphql/queries/yard_app/tickets/get_ticket_details.graphql.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/models/media_file.dart';
import 'package:emr_one_yard_app/components/components.dart';
import 'package:emr_one_yard_app/controllers/controllers.dart';
import 'package:emr_one_yard_app/helpers/media_helper.dart';
import 'package:emr_one_yard_app/models/media/group_media.dart';
import 'package:emr_one_yard_app/models/media/inspection_media.dart';
import 'package:flutter/material.dart';

mixin MediaActionsMixin {
  Future<bool> handleDelete(
    BuildContext context,
    List<MediaItem> item,
    TicketDetailsController detailsController,
    Query$GetTicketDetails$ticket ticket,
  ) async {
    final completer = Completer<bool>();
    await EmrDialog.noYes(
      context,
      titleText: context.l10n.confirmation,
      contentText: item.length == 1
          ? context.l10n.confirmMediaDelete
          : context.l10n.confirmSelectedDelete,
      onYes: () async {
        final result = await detailsController.removeMedia(
          ticket.id,
          item,
        );

        if (!context.mounted) return;

        if (!result) {
          unawaited(
            EmrModal.showMessageBar(
              context,
              context.l10n.anErrorOccurredTryAgain,
              messageType: MessageBarTypes.error,
            ),
          );
        }
        completer.complete(result);
      },
    );
    return completer.future;
  }

  Future<MediaItem?> handleAddNote(
    BuildContext context,
    MediaItem item,
    TicketDetailsController detailsController,
    Query$GetTicketDetails$ticket ticket,
  ) async {
    final note = await showNoteDialog(
      context,
      item.note ?? '',
    );

    if (note != null && note != item.note) {
      await detailsController.updateMediaNote(
        ticket.id,
        item.id,
        note,
        MediaHelper.removeBasePath(item.mediaUrl),
      );
      return item.copyWith(note: note);
    }
    return null;
  }

  Future<MediaItem?> handleEditImage(
    BuildContext context,
    MediaItem item,
    TicketDetailsController detailsController,
    Query$GetTicketDetails$ticket ticket,
  ) async {
    final editedFilePath = await ImageEditorDialog.show(
      context: context,
      sourceImagePath: item.fullUrl,
      mediaController: detailsController.mediaController,
      token: item.token,
      localPath: item.localDir,
    );

    if (editedFilePath != null &&
        editedFilePath.isNotEmpty &&
        File(editedFilePath).existsSync()) {
      final paths = await detailsController.addTicketMedia(
        ticket.id,
        ticket.ticketNumber,
        [
          InspectionMedia(
            localUrl: editedFilePath,
            lineNumber: item.id,
            mediaType: MediaType.image,
            discrepantId: item.discrepantId,
          ),
        ],
      );
      if (paths.isNotEmpty) {
        detailsController.addMediaToLine(
          item.id,
          [
            item.copyWith(
              mediaUrl: MediaHelper.removeBasePath(paths.first),
              isNew: item.discrepantId != null,
            ),
          ],
        );
        return item.copyWith(
          mediaUrl: paths.first,
          isNew: item.discrepantId != null,
        );
      }
      if (context.mounted) {
        unawaited(
          EmrModal.showMessageBar(
            context,
            context.l10n.anErrorOccurredTryAgain,
            messageType: MessageBarTypes.error,
          ),
        );
      }
    }
    return null;
  }

  Future<List<MediaItem>> processMedia(
    String location,
    Query$GetTicketDetails$ticket ticket,
    TicketDetailsController detailsController,
    int lineSelected,
    String token,
    List<MediaFile> addedMedia, {
    String? discrepantId,
    bool uploadOnExit = false,
    List<String> videoThumbnails = const [],
  }) async {
    if (uploadOnExit && addedMedia.isNotEmpty) {
      unawaited(
        uploadTicketMedia(
          addedMedia,
          location,
          ticket,
          detailsController,
          lineSelected,
          discrepantId: discrepantId,
          videoThumbnails: videoThumbnails,
        ),
      );
    }
    return addedMedia
        .map(
          (m) => MediaItem(
            localDir: location,
            mediaUrl: MediaHelper.createMediaPartialUrl(
              m.media.path,
              '${ticket.ticketNumber}/$lineSelected',
            ),
            token: token,
            id: lineSelected,
            remoteUrl: detailsController.mediaController.mediaApiUrl,
            discrepantId: discrepantId,
            isNew: discrepantId != null,
          ),
        )
        .toList();
  }

  static Future<List<String>> uploadTicketMedia(
    List<MediaFile> addedMedia,
    String location,
    Query$GetTicketDetails$ticket ticket,
    TicketDetailsController detailsController,
    int lineSelected, {
    String? discrepantId,
    List<String> videoThumbnails = const [],
  }) async {
    if (addedMedia.isEmpty) {
      return [];
    }
    final listOfMediaToUpload = <InspectionMedia>[];
    final videoThumbnails = <String>[];

    for (final m in addedMedia) {
      listOfMediaToUpload.add(
        InspectionMedia(
          localUrl: m.media.path,
          mediaType: m.mediaType,
          lineNumber: lineSelected,
          discrepantId: discrepantId,
        ),
      );
    }

    final remoteUrls = await detailsController.addTicketMedia(
      ticket.id,
      ticket.ticketNumber,
      listOfMediaToUpload,
      videoThumbnails: videoThumbnails,
    );
    return remoteUrls;
  }
}
