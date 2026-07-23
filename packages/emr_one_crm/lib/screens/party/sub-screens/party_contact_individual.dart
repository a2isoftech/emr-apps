import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PartyContactIndividual extends StatefulWidget {
  const PartyContactIndividual({
    required this.selectedContact,
    required this.onBackButtonPressed,
    super.key,
  });

  final Contact selectedContact;
  final VoidCallback onBackButtonPressed;
  @override
  State<PartyContactIndividual> createState() => _PartyContactIndividualState();
}

class _PartyContactIndividualState extends State<PartyContactIndividual> {
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
                '${widget.selectedContact.firstName}'
                ' ${widget.selectedContact.lastName}',
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Text(
                (widget.selectedContact.title ?? '').isEmpty
                    ? context.l10n.noTitle
                    : widget.selectedContact.title ?? '',
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
              buildHeader(context.l10n.email),
              buildSelectableString(
                context,
                widget.selectedContact.contactPreferences.email?.value ?? '',
              ),
              buildHeader(
                context.l10n.phone,
              ),
              buildSelectableString(
                context,
                widget.selectedContact.contactPreferences.mobile?.value ?? '',
              ),
              buildHeader(
                context.l10n.addressDetails,
              ),
              buildSelectableString(
                context,
                buildAddressString(widget.selectedContact.address),
              ),
              buildHeader(context.l10n.gdprPreferences),
              Padding(
                padding: const EdgeInsets.all(8),
                child: Column(
                  children: [
                    createGdprRow(
                      'CAN_SMS',
                      context.l10n.canSms,
                      value: widget.selectedContact.contactPreferences.mobile
                              ?.enabled ??
                          false,
                    ),
                    createGdprRow(
                      'CAN_PHONE',
                      context.l10n.canPhone,
                      value: widget.selectedContact.contactPreferences.phone
                              ?.enabled ??
                          false,
                    ),
                    createGdprRow(
                      'CAN_POST',
                      context.l10n.canPost,
                      value: widget.selectedContact.contactPreferences.post
                              ?.enabled ??
                          false,
                    ),
                    createGdprRow(
                      'CAN_EMAIL',
                      context.l10n.canEmail,
                      value: widget.selectedContact.contactPreferences.email
                              ?.enabled ??
                          false,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget createGdprRow(
    String which,
    String label, {
    required bool value,
  }) {
    return Row(
      children: [
        SizedBox(
          width: 150,
          child: Text(
            '$label:',
          ),
        ),
        Text(
          getGdprPreference(
            which,
            thePref: value,
          ),
          style: TextStyle(
            color: Theme.of(context).colorScheme.tertiary,
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

  String getGdprPreference(
    String which, {
    required bool thePref,
  }) {
    return thePref ? context.l10n.yes : context.l10n.no;
  }
}
