import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_elv_quotes/elv_quotes.dart';
import 'package:flutter/material.dart';

class ElvAccountSearchExpendableTile extends StatelessWidget {
  const ElvAccountSearchExpendableTile({
    required this.account,
    required this.selected,
    required this.initialLocationSelectedCode,
    required this.onTap,
    super.key,
  });

  final AccountModel account;
  final bool selected;
  final String? initialLocationSelectedCode;
  final void Function(AccountLocation location)? onTap;

  @override
  Widget build(BuildContext context) {
    final textTheme = selected
        ? Theme.of(context).primaryTextTheme.bodyMedium
        : Theme.of(context).textTheme.bodyMedium;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: Insets.gutter / 4),
      child: ExpansionTile(
        tilePadding: EdgeInsets.zero,
        initiallyExpanded: selected,
        childrenPadding: const EdgeInsets.all(Insets.gutter),
        title: ListTile(
          title: Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: context.l10n.accountNumber,
                  style: textTheme!.copyWith(fontWeight: FontWeight.bold),
                ),
                const TextSpan(text: ': '),
                TextSpan(text: account.code ?? '', style: textTheme),
              ],
            ),
          ),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: context.l10n.name,
                      style: textTheme.copyWith(fontWeight: FontWeight.bold),
                    ),
                    const TextSpan(text: ': '),
                    TextSpan(text: account.name ?? '', style: textTheme),
                  ],
                ),
              ),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: account.address.getShortAddress,
                      style: textTheme,
                    ),
                  ],
                ),
              ),
            ],
          ),
          selected: selected,
          selectedColor: Theme.of(context).colorScheme.onPrimary,
          selectedTileColor: Theme.of(context).colorScheme.primary,
        ),
        children: account.locations.map((location) {
          final isSelected = initialLocationSelectedCode == location.code;

          return ListTile(
            title: Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: context.l10n.locationCode,
                    style: textTheme.copyWith(fontWeight: FontWeight.bold),
                  ),
                  const TextSpan(text: ': '),
                  TextSpan(text: location.code, style: textTheme),
                ],
              ),
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: context.l10n.location,
                        style: textTheme.copyWith(fontWeight: FontWeight.bold),
                      ),
                      const TextSpan(text: ': '),
                      TextSpan(text: location.name, style: textTheme),
                    ],
                  ),
                ),
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: location.address.getShortAddress,
                        style: textTheme,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            selected: isSelected,
            selectedColor: Theme.of(context).colorScheme.onPrimary,
            selectedTileColor: Theme.of(context).colorScheme.primary,
            onTap: () {
              onTap?.call(location);
            },
          );
        }).toList(),
      ),
    );
  }
}
