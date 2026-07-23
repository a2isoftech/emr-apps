import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

class ShareLogRow extends StatelessWidget {
  const ShareLogRow({this.daysToShare, super.key});

  final int? daysToShare;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                context.l10n.diagnosticLog,
                style: EmrOneConstants.kSmallestHeadingTextStyle.copyWith(
                  color: Theme.of(context).colorScheme.onSurface,
                ),
              ),
              Text(
                context.l10n.shareLogs,
                style: EmrOneConstants.kSmallSubtleTextStyle,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: Container(
              padding: const EdgeInsets.only(
                left: 4,
                right: 4,
                top: 2,
                bottom: 2,
              ),
              child: const Icon(Icons.share),
            ),
          ),
        ],
      ),
      onTap: () async {
        final files = await TextLogFileService().getLogFiles(
          daysToGet: daysToShare,
        );
        if (files.isEmpty) {
          if (context.mounted) {
            await EmrDialog.ok(
              context,
              titleText: context.l10n.error,
              contentText: context.l10n.noLogsAvailable,
            );
          }
          return;
        }
        await SharePlus.instance.share(
          ShareParams(
            files: files,
          ),
        );
      },
    );
  }
}
