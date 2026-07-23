import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_elv_quotes/elv_quotes.dart';
import 'package:flutter/material.dart';

class ElvAccountSearchAccountTile extends StatelessWidget {
  const ElvAccountSearchAccountTile({
    required this.account,
    required this.selected,
    required this.onTap,
    super.key,
  });

  final AccountModel account;
  final bool selected;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final textTheme = selected
        ? Theme.of(context).primaryTextTheme.bodyMedium
        : Theme.of(context).textTheme.bodyMedium;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: Insets.gutter / 5),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(
          horizontal: Insets.gutter / 2,
          vertical: Insets.gutter / 4,
        ),
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
        onTap: onTap,
      ),
    );
  }
}
