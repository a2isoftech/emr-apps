import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_theme/emr_one_theme.dart';
import 'package:emr_one_tickets/emr_one_tickets.dart';
import 'package:flutter/material.dart';

class TicketDetailsHeader extends StatelessWidget {
  const TicketDetailsHeader({required this.model, super.key});

  final TicketDetailsFormData model;

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
                  Text('${model.yardCode.value}'),
                  const HeaderBullet(),
                  Text('${model.ticketNumber.value}'),
                  const HeaderBullet(),
                  Text(
                    model.date.value!.asyMMMd(Localizations.localeOf(context)),
                  ),
                  const SizedBox(width: Insets.gutter),
                  Padding(
                    padding: const EdgeInsets.only(top: 2),
                    child: EmrStatusChip(
                      text:
                          model.ticketType.value
                              ?.displayString(context)
                              .toUpperCase() ??
                          '',
                    ),
                  ),
                  const SizedBox(width: Insets.gutter / 2),
                  Padding(
                    padding: const EdgeInsets.only(top: 2),
                    child: EmrStatusChip(
                      text:
                          model.ticketStatus.value
                              ?.displayString(context)
                              .toUpperCase() ??
                          '',
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: Insets.gutter),
            DefaultTextStyle(
              style: Theme.of(
                context,
              ).textTheme.bodyMedium!.copyWith(color: Colors.white),
              child: ValueListenableBuilder(
                valueListenable: model.account,
                builder: (context, value, child) => Wrap(
                  children: [
                    Text(model.account.value.key),
                    const HeaderBullet(),
                    Text(model.account.value.value),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
