import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PartyManagerIndividual extends StatefulWidget {
  const PartyManagerIndividual({
    required this.selectedManager,
    required this.onBackButtonPressed,
    super.key,
  });

  final AccountManager selectedManager;
  final VoidCallback onBackButtonPressed;
  @override
  State<PartyManagerIndividual> createState() => _PartyManagerIndividualState();
}

class _PartyManagerIndividualState extends State<PartyManagerIndividual> {
  Widget buildHeader(String title) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Text(
        title,
        style: EmrOneConstants.kSmallestHeadingTextStyle,
      ),
    );
  }

  Widget buildSelectableString(BuildContext context, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: Insets.gutter / 2),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: SelectableText(
          value.isEmpty ? context.l10n.none : value,
          onTap: () {
            Clipboard.setData(ClipboardData(text: value))
                .catchError((e) {})
                .whenComplete(() {
              if (context.mounted) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(context.l10n.textCopied),
                  ),
                );
              }
            });
          },
          style: TextStyle(
            color: Theme.of(context).colorScheme.tertiary,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DecoratedBox(
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.grey,
            ),
            color: Colors.grey,
            borderRadius: const BorderRadius.all(Radius.circular(5)),
          ),
          child: BackButton(
            color: Colors.white,
            onPressed: () {
              widget.onBackButtonPressed();
            },
          ),
        ),
        Column(
          children: [
            const CircleAvatar(
              minRadius: 50,
              maxRadius: 100,
              backgroundColor: Colors.grey,
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Text(
                widget.selectedManager.name ?? '',
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Text(
                widget.selectedManager.accountManagerTypeId,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8),
              child: Divider(
                thickness: 2,
              ),
            ),
          ],
        ),
        SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildHeader(
                context.l10n.email,
              ),
              buildSelectableString(
                context,
                widget.selectedManager.emailAddress ?? '',
              ),
              buildHeader(context.l10n.depot),
              buildSelectableString(
                context,
                widget.selectedManager.defaultDepot ?? '',
              ),
              buildHeader(context.l10n.territory),
              buildSelectableString(
                context,
                widget.selectedManager.defaultTerritory,
              ),
              buildHeader(context.l10n.currentPermissions),
              buildSelectableString(
                context,
                (widget.selectedManager.permissions ?? []).join('\n'),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
