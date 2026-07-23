import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_yard_app/components/card_base.dart';
import 'package:emr_one_yard_app/components/image_badge.dart';
import 'package:emr_one_yard_app/components/text_line.dart';
import 'package:emr_one_yard_app/extensions/load_outs_extensions.dart';
import 'package:flutter/material.dart';

class LoadOutCard extends StatelessWidget {
  const LoadOutCard({
    required Query$SearchLoadOuts$loadOuts$nodes loadOut,
    super.key,
  }) : _loadOut = loadOut;

  final Query$SearchLoadOuts$loadOuts$nodes _loadOut;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: Insets.gutter / 2),
      child: CardBase(
        header: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextLine(
              header: '${context.l10n.containerNumberAbbr} #',
              content: _loadOut.containerId,
            ),
            ImageBadge(total: _loadOut.totalImages()),
          ],
        ),
        content: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextLine(
              header: context.l10n.createdAt,
              content: _loadOut.created.at.asyMMdtime(
                Localizations.localeOf(context),
              ),
            ),
            TextLine(
              header: context.l10n.status,
              content: _loadOut.completed
                  ? context.l10n.completed
                  : context.l10n.inProgress,
            ),
            TextLine(
              header: context.l10n.ticket,
              content: _loadOut.ticketId == null
                  ? ''
                  : _loadOut.ticketId!.split('/').skip(1).join('-'),
            ),
          ],
        ),
      ),
    );
  }
}
