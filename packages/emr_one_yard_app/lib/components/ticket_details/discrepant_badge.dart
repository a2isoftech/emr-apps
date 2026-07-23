import 'package:emr_core_api/graphql/queries/yard_app/tickets/get_ticket_details.graphql.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_yard_app/components/components.dart';
import 'package:emr_one_yard_app/constants/yard_app_constants.dart';
import 'package:emr_one_yard_app/models/model.dart';
import 'package:flutter/material.dart';

class DiscrepantBadge extends StatelessWidget {
  const DiscrepantBadge({
    required this.discrepantMedia,
    required this.ticket,
    required this.line,
    required this.yardCode,
    this.disable = false,
    super.key,
  });

  final Query$GetTicketDetails$ticket ticket;
  final List<MediaItem> discrepantMedia;
  final int line;
  final bool disable;
  final String yardCode;

  @override
  Widget build(BuildContext context) {
    const spacing = Insets.gutter / 8;
    final imagesCount = discrepantMedia.length.clamp(1, 4);
    return Stack(
      clipBehavior: Clip.none,
      children: [
        ThumbnailWidget(
          child: Wrap(
            spacing: spacing,
            runSpacing: spacing,
            children: List.generate(
              imagesCount,
              (i) => SizedBox(
                width: 43,
                height: 43,
                child: Padding(
                  padding: const EdgeInsets.all(Insets.gutter / 4),
                  child: MediaGridItem(
                    item: discrepantMedia[i],
                    yardCode: yardCode,
                  ),
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          width: LayoutConstants.thumbnailSize,
          height: LayoutConstants.thumbnailSize,
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: disable
                  ? null
                  : () => context.goNamed(
                        YardAppNamedRoutes.yardAppdiscrepantDetails,
                        extra: ticket,
                        params: {'id': ticket.id},
                        queryParams: {'line': line.toString()},
                      ),
              onLongPress: disable
                  ? null
                  : () => showDialog<void>(
                        context: context,
                        builder: (context) {
                          return Dialog(
                            child: Padding(
                              padding: const EdgeInsets.all(Insets.gutter / 2),
                              child: SizedBox(
                                width: 400,
                                height: 400,
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Expanded(
                                          child: Text(
                                            context.l10n.discrepantMedia,
                                            style: Theme.of(context)
                                                .textTheme
                                                .titleMedium
                                                ?.copyWith(
                                                  fontWeight: FontWeight.bold,
                                                ),
                                          ),
                                        ),
                                        IconButton(
                                          icon: const Icon(Icons.close),
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                          },
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: Insets.gutter / 2),
                                    Expanded(
                                      child: SingleChildScrollView(
                                        child: Wrap(
                                          spacing: Insets.gutter / 4,
                                          runSpacing: Insets.gutter / 4,
                                          children: discrepantMedia
                                              .map(
                                                (media) => MediaGridItem(
                                                  item: media,
                                                  height: 85,
                                                  width: 85,
                                                  yardCode: yardCode,
                                                ),
                                              )
                                              .toList(),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      ),
            ),
          ),
        ),
        // Flag icon at corner, overlapping
        Positioned(
          top: -8,
          right: -8,
          child: Container(
            padding: const EdgeInsets.all(Insets.gutter / 4),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.flag,
              size: 20,
              color: Theme.of(context).colorScheme.surface,
            ),
          ),
        ),
      ],
    );
  }
}
