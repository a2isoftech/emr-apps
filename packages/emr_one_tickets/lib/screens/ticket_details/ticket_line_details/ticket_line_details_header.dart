import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_theme/emr_one_theme.dart';
import 'package:emr_one_tickets/emr_one_tickets.dart';
import 'package:flutter/material.dart';

class TicketLineDetailsHeader extends StatelessWidget {
  const TicketLineDetailsHeader({
    required this.model,
    required this.lineModel,
    super.key,
  });

  final TicketDetailsFormData model;

  final TicketLineFormData lineModel;

  @override
  Widget build(BuildContext context) {
    final tte = Theme.of(context).extension<TicketThemeExtension>()!;

    return ColoredBox(
      color: model.ticketType.value == Enum$TicketType.INWARDS
          ? tte.inwardColour
          : tte.outwardColour,
      child: Padding(
        padding: const EdgeInsets.all(Insets.gutter),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DefaultTextStyle(
              style: Theme.of(
                context,
              ).textTheme.titleLarge!.copyWith(color: Colors.white),
              child: Wrap(
                children: [
                  Text('${context.l10n.line} ${lineModel.lineNumber}'),
                ],
              ),
            ),
            const SizedBox(height: Insets.gutter),
            DefaultTextStyle(
              style: Theme.of(
                context,
              ).textTheme.bodyMedium!.copyWith(color: Colors.white),
              child: ListenableBuilder(
                listenable: Listenable.merge([
                  lineModel.product,
                  lineModel.location,
                ]),
                builder: (_, _) {
                  return Wrap(
                    children: [
                      Text(lineModel.product.value.toString()),
                      const HeaderBullet(),
                      Text(lineModel.location.value.toString()),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
