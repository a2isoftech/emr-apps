import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_localisations/emr_one_localisations.dart';
import 'package:emr_one_tickets/emr_one_tickets.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/material.dart';

class MediaCard extends EmrTabBarVerticalViewCard {
  MediaCard(
    BuildContext context, {
    required super.title,
    required TicketDetailsFormData model,
    super.key,
  }) : super(
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             for (final entry in model.media.value.entries) ...[
               Text(
                 (entry.key.startsWith('line|'))
                     ? '${context.l10n.line} ${entry.key.split('|')[1]}'
                     : context.l10n.byKey(entry.key),
                 style: Theme.of(context).textTheme.titleMedium,
               ),
               const Divider(),
               if (entry.value.isEmpty)
                 Padding(
                   padding: const EdgeInsets.only(left: Insets.gutter),
                   child: Center(
                     child: Text(
                       context.l10n.noImagesFound,
                       textAlign: .center,
                     ),
                   ),
                 )
               else
                 _images(context, entry.value),
               const Divider(),
             ],
           ],
         ),
       );

  static Widget _images(
    BuildContext context,
    List<MediaAsset> mediaAssets, {
    Size thumbnailSize = const Size(125, 125),
  }) => Wrap(
    spacing: 8,
    runSpacing: 8,
    children: mediaAssets
        .map(
          (x) => SizedBox(
            width: thumbnailSize.width,
            height: thumbnailSize.height,
            child: ColoredBox(
              color: Theme.of(context).colorScheme.surfaceContainerHighest,
              child: TappableImage(
                imagePath: x.sasUrl!,
                width: thumbnailSize.width,
                height: thumbnailSize.height,
                loadingIcon: const Icon(Icons.download),
                getToken: FirebaseLogin.getToken,
                fit: BoxFit.contain,
              ),
            ),
          ),
        )
        .toList(),
  );
}
