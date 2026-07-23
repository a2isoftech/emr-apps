import 'package:emr_core_api/graphql/schema.graphql.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_yard_app/components/image_badge.dart';
import 'package:emr_one_yard_app/components/text_line.dart';
import 'package:emr_one_yard_app/extensions/ticket_extensions.dart';
import 'package:emr_one_yard_app/helpers/theme_helper.dart' as theme_helper;
import 'package:flutter/material.dart';

class TicketHeadingRow extends StatelessWidget {
  const TicketHeadingRow({
    required this.ticketNumber,
    required this.type,
    required this.yardCode,
    this.totalMedia,
    super.key,
  });
  final String ticketNumber;
  final Enum$TicketType type;
  final int? totalMedia;
  final String yardCode;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: .start,
            children: [
              TextLine(header: context.l10n.ticket, content: ticketNumber),
              Text(yardCode, style: Theme.of(context).textTheme.labelLarge),
            ],
          ),
        ),
        Chip(
          backgroundColor: theme_helper.getBadgeColor(type, context),
          padding: EdgeInsets.zero,
          label: Text(
            type.getTicketTypeName(context),
            style: Theme.of(context).primaryTextTheme.titleSmall?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        if (totalMedia != null) ...[
          const SizedBox(width: Insets.gutter / 2),
          ImageBadge(total: totalMedia!),
          const SizedBox(width: Insets.gutter / 2),
        ],
      ],
    );
  }
}
