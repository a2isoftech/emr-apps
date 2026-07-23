import 'dart:math';

import 'package:easy_image_viewer/easy_image_viewer.dart';
import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_tickets/widgets/ticketgallery/selectable_image.dart';
import 'package:emr_one_tickets/widgets/ticketgallery/video_player.dart';
import 'package:flutter/material.dart';

class TicketGalleryImages extends StatefulWidget {
  const TicketGalleryImages({
    required this.images,
    required this.ticket,
    super.key,
    this.onImageSelected,
    this.getInitialSate,
  });

  final List<Trade2MediaAsset> images;
  final Trade2Ticket ticket;
  final void Function(String url, {bool selected})? onImageSelected;
  final bool Function(String url)? getInitialSate;

  @override
  State<TicketGalleryImages> createState() => _TicketGalleryImagesState();
}

class _TicketGalleryImagesState extends State<TicketGalleryImages> {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final width = mediaQuery.size.width;
    final imgColCount = 3 + (max(0, width - 600) / 400).round();
    final images = <Widget>[];

    if (widget.images.isNotEmpty) {
      images.addAll(
        widget.images.map((e) {
          final isVideo = e.url.startsWith('v/');
          return SelectableImage(
            initialState: widget.getInitialSate?.call(e.url) ?? false,
            onSelectionChanged: (value) {
              if (widget.onImageSelected != null) {
                widget.onImageSelected!.call(e.url, selected: value);
              }
            },
            child: GestureDetector(
              onTap: () async {
                if (!isVideo) {
                  await showImageViewer(
                    context,
                    NetworkImage(e.sasUrl!),
                  );
                } else {
                  await showDialog<void>(
                    context: context,
                    builder: (BuildContext context) {
                      return Dialog(
                        child: AspectRatio(
                          aspectRatio: 16 / 9,
                          child: VideoPlayerWidget(sasUrl: e.sasUrl ?? ''),
                        ),
                      );
                    },
                  );
                }
              },
              child: !isVideo
                  ? Image.network(
                      e.sasThumbnailUrl!,
                      loadingBuilder: (context, child, loadingProgress) {
                        if (loadingProgress == null) return child;
                        return Padding(
                          padding: const EdgeInsets.all(Insets.gutter * 2),
                          child: Center(
                            child: SizedBox(
                              width: 48,
                              height: 48,
                              child: CircularProgressIndicator(
                                value: loadingProgress.expectedTotalBytes !=
                                        null
                                    ? loadingProgress.cumulativeBytesLoaded /
                                        loadingProgress.expectedTotalBytes!
                                    : null,
                              ),
                            ),
                          ),
                        );
                      },
                      errorBuilder: (context, error, stackTrace) =>
                          const Icon(Icons.error),
                    )
                  : Center(
                      child: Icon(
                        Icons.play_circle_fill,
                        size: 64,
                        color: Theme.of(context).colorScheme.outline,
                      ),
                    ),
            ),
          );
        }).toList(),
      );
    }

    final heading = 'Ticket ${widget.ticket.ticketNumber} '
        '${widget.ticket.partyAccountNo} '
        '${widget.ticket.partyName} - '
        '${widget.ticket.createdDate.asyMMMd(Localizations.localeOf(context))}';

    return Padding(
      padding: const EdgeInsets.all(Insets.gutter),
      child: Column(
        children: [
          FormHeadingRow(
            headings: [heading],
            isLeading: true,
          ),
          GridView(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: imgColCount,
              mainAxisSpacing: Insets.gutter / 2,
              crossAxisSpacing: Insets.gutter / 2,
            ),
            children: images,
          ),
          const Divider(),
          const SizedBox(height: Insets.gutter / 2),
        ],
      ),
    );
  }
}
