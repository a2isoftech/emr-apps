import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PartyArisingPointIndividual extends StatefulWidget {
  const PartyArisingPointIndividual({
    required this.selectedArisingPoint,
    required this.onBackButtonPressed,
    super.key,
  });

  final Location selectedArisingPoint;
  final VoidCallback onBackButtonPressed;
  @override
  State<PartyArisingPointIndividual> createState() =>
      _PartyArisingPointIndividualState();
}

class _PartyArisingPointIndividualState
    extends State<PartyArisingPointIndividual> {
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
            Padding(
              padding: const EdgeInsets.all(8),
              child: Text(
                widget.selectedArisingPoint.name ?? '',
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Text(
                widget.selectedArisingPoint.code ?? '',
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
              buildHeader(context.l10n.arisingPointCode),
              buildSelectableString(
                context,
                widget.selectedArisingPoint.code ?? '',
              ),
              buildHeader(context.l10n.arisingPointAddress),
              buildSelectableString(
                context,
                buildAddressString(widget.selectedArisingPoint.address),
              ),
              buildHeader(context.l10n.arisingPointLocation),
              buildSelectableString(
                context,
                widget.selectedArisingPoint.code ?? '',
              ),
            ],
          ),
        ),
      ],
    );
  }

  String buildAddressString(Address? address) {
    if (address == null) {
      return '';
    }
    return '${address.address1} \n'
        '${address.address2}\n${address.address3}\n'
        '${address.postCode}';
  }
}
