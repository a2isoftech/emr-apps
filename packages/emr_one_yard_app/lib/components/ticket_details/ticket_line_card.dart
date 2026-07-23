import 'package:emr_core_api/graphql/queries/yard_app/tickets/get_ticket_details.graphql.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_yard_app/components/card_base.dart';
import 'package:emr_one_yard_app/components/components.dart';
import 'package:emr_one_yard_app/components/ticket_details/discrepant_badge.dart';
import 'package:emr_one_yard_app/controllers/ticket_details_controller.dart';
import 'package:emr_one_yard_app/models/media/group_media.dart';
import 'package:flutter/material.dart';
import 'package:signals/signals_flutter.dart';

class TicketLineCard extends StatelessWidget {
  const TicketLineCard({
    required this.title,
    required this.ticket,
    required this.selectedMedia,
    required this.controller,
    this.onAddMore,
    this.onMediaDelete,
    this.onMediaEdit,
    this.onAddNote,
    this.line,
    super.key,
    this.discrepantMedia = const [],
    this.otherImages = const [],
    this.isAddMoreActive = false,
    this.allowMultiSelect = true,
  });

  final String title;
  final void Function()? onAddMore;
  final List<MediaItem> discrepantMedia;
  final List<MediaItem> otherImages;
  final Query$GetTicketDetails$ticket ticket;
  final int? line;
  final ListSignal<MediaItem> selectedMedia;
  final TicketDetailsController controller;
  final Future<MediaItem?> Function(MediaItem)? onAddNote;
  final Future<bool> Function(MediaItem)? onMediaDelete;
  final Future<MediaItem?> Function(MediaItem)? onMediaEdit;
  final bool isAddMoreActive;
  final bool allowMultiSelect;

  @override
  Widget build(BuildContext context) {
    return CardBase(
      header: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: Theme.of(
              context,
            ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
          ),
        ],
      ),
      content: Padding(
        padding: const EdgeInsetsGeometry.symmetric(
          vertical: Insets.gutter / 2,
        ),
        child: Wrap(
          runSpacing: Insets.gutter,
          spacing: Insets.gutter,
          children: [
            if (onAddMore != null)
              AddMoreButton(
                onTap: selectedMedia.watch(context).isEmpty ? onAddMore : null,
                isActive: isAddMoreActive,
              ),
            if (discrepantMedia.isNotEmpty && (line ?? 0) > 0)
              DiscrepantBadge(
                yardCode: controller.userInfoService.userInfo.defaultYard,
                line: line!,
                ticket: ticket,
                discrepantMedia: discrepantMedia,
                disable: selectedMedia.watch(context).isNotEmpty,
              ),
            ...otherImages.map(
              (media) => MediaGridItem(
                yardCode: controller.userInfoService.userInfo.defaultYard,
                item: media,
                selected: selectedMedia.watch(context).contains(media),
                onTap: (item) async {
                  if (selectedMedia.isNotEmpty) {
                    if (selectedMedia.contains(item)) {
                      selectedMedia.remove(item);
                    } else {
                      selectedMedia.add(item);
                    }
                  } else {
                    await showDialog<void>(
                      barrierColor: Colors.transparent,
                      context: context,
                      builder: (context) => FullScreenMediaViewer(
                        yardCode:
                            controller.userInfoService.userInfo.defaultYard,
                        initialIndex: otherImages.indexOf(item),
                        mediaItems: otherImages,
                        onAddNote: onAddNote,
                        onDelete: onMediaDelete,
                        onEdit: onMediaEdit,
                        title: title,
                      ),
                    );
                  }
                },
                onLongPress: allowMultiSelect
                    ? (item) {
                        if (selectedMedia.value.isEmpty) {
                          selectedMedia.add(item);
                        }
                      }
                    : null,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
