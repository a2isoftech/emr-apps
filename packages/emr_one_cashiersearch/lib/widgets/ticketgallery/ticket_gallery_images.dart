import 'dart:math';

import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_cashiersearch/widgets/widgets.dart';
import 'package:emr_one_core/config/app_config.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TicketGalleryImages extends StatefulWidget {
  const TicketGalleryImages({
    required this.images,
    required this.ticket,
    super.key,
    this.onImageSelected,
    this.getInitialSate,
  });

  final List<InventoryMediaAsset> images;
  final Ticket ticket;
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

    final url = Provider.of<AppConfig>(context, listen: false).mediaApi;
    if (widget.images.isNotEmpty) {
      images.addAll(
        widget.images
            .asMap()
            .map((i, e) {
              var mediaUrl = e.url;
              if (!mediaUrl.startsWith('/') && !mediaUrl.startsWith('http')) {
                mediaUrl = '/$mediaUrl';
              }
              final isVideo = mediaUrl.startsWith('/v/');
              final imageUrl = mediaUrl.toLowerCase().startsWith('http')
                  ? mediaUrl
                  : '''$url$mediaUrl''';
              return MapEntry(
                i,
                SelectableImage(
                  initialState: widget.getInitialSate?.call(e.url) ?? false,
                  onSelectionChanged: (value) {
                    if (widget.onImageSelected != null) {
                      widget.onImageSelected!.call(e.url, selected: value);
                    }
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(Insets.gutter * 2),
                    child: Column(
                      children: [
                        Expanded(
                          child: !isVideo
                              ? TappableImage(
                                  imagePath: imageUrl,
                                )
                              : TappableVideo(url: e.sasUrl ?? ''),
                        ),
                        Text('${widget.ticket.ticketNumber}-${i + 1}'),
                      ],
                    ),
                  ),
                ),
              );
            })
            .values
            .toList(),
      );
    }

    final heading = 'Ticket ${widget.ticket.ticketNumber} '
        '${widget.ticket.account?.accountNumber} '
        '${widget.ticket.account?.name} - '
        '${widget.ticket.created.at.asyMMMd(Localizations.localeOf(context))}';

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
