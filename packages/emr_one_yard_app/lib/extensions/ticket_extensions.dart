import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_yard_app/helpers/media_helper.dart';
import 'package:emr_one_yard_app/models/media/group_media.dart';
import 'package:emr_one_yard_app/models/ticket/comment_model.dart';
import 'package:flutter/material.dart';

extension TicketExtensions on Query$SearchTickets$searchTickets$nodes {
  String getName() {
    return '$ticketNumber ${ticketType.name}';
  }

  bool hasMedia() {
    return inspectionMedia.isNotEmpty ||
        lines.any(
          (s) => s.inspectionDetails?.inspectionMedia.isNotEmpty ?? false,
        );
  }

  List<Query$SearchTickets$searchTickets$nodes$lines> get activeLines {
    return lines.where((line) => line.isActive).toList();
  }
}

extension TicketSearchLineExtensions
    on Query$SearchTickets$searchTickets$nodes$lines {
  String getHeading() {
    return '$lineNumber. ${product?.code ?? ''} '
        '${grossWeight.value} ${grossWeight.uom.name}';
  }
}

extension TicketDetailsExtensions on Query$GetTicketDetails$ticket {
  String getHeading() {
    return '$ticketNumber ${ticketType.name.substring(0, 1)}';
  }

  String getTicketDirName() {
    return '$ticketNumber-${ticketType.name}';
  }

  List<MediaItem> getHeaderMedia(
    String localDir,
    String token,
    String mediaApiUrl,
    String yardCode,
  ) => [
    ...inspectionMedia
        .where((s) => !s.url.contains(MediaHelper.loadOutPart))
        .map((m) {
          return MediaItem(
            remoteUrl: mediaApiUrl,
            id: 0,
            localDir: localDir,
            token: token,
            note: m.inspectionNote,
            mediaUrl: m.url,
          );
        }),
  ];

  List<MediaItem> getLoadoutMedia(
    String localDir,
    String token,
    String mediaApiUrl,
    String yardCode,
  ) => [
    ...inspectionMedia
        .where((s) => s.url.contains(MediaHelper.loadOutPart))
        .map((m) {
          return MediaItem(
            remoteUrl: mediaApiUrl,
            id: 0,
            localDir: localDir,
            token: token,
            note: m.inspectionNote,
            mediaUrl: m.url,
          );
        }),
  ];

  List<MediaGroup> mapToMediaGroup(
    String localDir,
    String token,
    String mediaApiUrl,
  ) {
    final groups = <MediaGroup>[];

    groups.add(
      MediaGroup(
        key: '0',
        title: 'Ticket Header',
        items: getHeaderMedia(localDir, token, mediaApiUrl, yardCode),
      ),
    );

    for (final line in activeLines) {
      groups.add(
        MediaGroup(
          key: line.lineNumber.toString(),
          title: line.getHeading(),
          isDiscrepant: line.inspectionDetails?.discrepancies.isNotEmpty,
          items: MediaHelper.getLineImages(
            localDir,
            token,
            mediaApiUrl,
            ticketNumber.toString(),
            yardCode,
            line.inspectionDetails?.inspectionMedia ?? [],
            line.lineNumber,
          ),
        ),
      );
    }
    return groups;
  }

  List<Query$GetTicketDetails$ticket$lines> get activeLines {
    return lines.where((line) => line.isActive).toList();
  }
}

extension TicketDetailsLineExtensions on Query$GetTicketDetails$ticket$lines {
  String getHeading() {
    return '$lineNumber. ${product?.code ?? 'NA'} '
        '${netWeight.value} ${netWeight.uom.name}';
  }

  List<MediaItem> getDiscrepantImages(
    String discrepantId,
    String localDir,
    String token,
    String mediaApiUrl,
  ) => [
    ...inspectionDetails?.inspectionMedia
            .where((s) => s.discrepantReason == discrepantId)
            .map((m) {
              return MediaItem(
                mediaUrl: m.url,
                token: token,
                id: lineNumber,
                remoteUrl: mediaApiUrl,
                note: m.inspectionNote,
                localDir: localDir,
                discrepantId: discrepantId,
              );
            }) ??
        <MediaItem>[],
  ];

  List<MediaItem> removeDiscrepantImages(String discrepantId) {
    final removedMedia = [
      ...inspectionDetails?.inspectionMedia
              .where((item) => item.discrepantReason == discrepantId)
              .map(
                (item) => MediaItem(
                  localDir: '',
                  remoteUrl: '',
                  mediaUrl: item.url,
                  id: lineNumber,
                  token: '',
                ),
              ) ??
          <MediaItem>[],
    ];
    inspectionDetails?.inspectionMedia.removeWhere(
      (item) => item.discrepantReason == discrepantId,
    );
    return removedMedia;
  }
}

extension TicketTypeExtensions on Enum$TicketType {
  String getTicketTypeName(BuildContext context) {
    switch (this) {
      case Enum$TicketType.INWARDS:
        return context.l10n.psnopTicketDirectionInwards;
      case Enum$TicketType.OUTWARDS:
        return context.l10n.psnopTicketDirectionOutwards;
      case Enum$TicketType.$unknown:
        return context.l10n.unknown;
    }
  }
}

extension InspectionCommentExt
    on Query$GetTicketDetails$ticket$lines$inspectionDetails$comments {
  CommentModel mapCommentModel() {
    return CommentModel(content, created.user?.name ?? '', created.at);
  }
}
