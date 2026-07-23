import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/widgets/form_styles.dart';
import 'package:emr_one_crm/keys.dart';
import 'package:emr_one_crm/screens/party/party_controller.dart';
import 'package:emr_one_crm/screens/party/sub-screens/party_contact_individual.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class PartyContacts extends StatefulWidget {
  const PartyContacts({
    required this.partyController,
    super.key,
  });

  final PartyController partyController;

  @override
  State<PartyContacts> createState() => _PartyContactsState();
}

class _PartyContactsState extends State<PartyContacts> {
  List<bool> _isChecked = [];

  bool showContactDetail = false;
  Contact? selectedContact;

  @override
  void initState() {
    super.initState();

    _isChecked = List<bool>.filled(
      (widget.partyController.partyInfo.contacts ?? []).length,
      false,
    );

    widget.partyController.contactData.value =
        widget.partyController.partyInfo.contacts ?? [];
  }

  @override
  Widget build(BuildContext context) {
    final allContacts = widget.partyController.contactData.value;
    final colorScheme = Theme.of(context).colorScheme;

    if (allContacts.isEmpty) {
      return const GenericMessage(
        subTitle: '',
        title: 'This party does not have any contacts',
      );
    }

    if (showContactDetail) {
      return PartyContactIndividual(
        selectedContact: selectedContact!,
        onBackButtonPressed: () {
          setState(() {
            selectedContact = null;
            showContactDetail = false;
          });
        },
      );
    }

    return Column(
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: RichText(
            text: TextSpan(
              style: EmrOneConstants.kMediumHeadingTextStyle.copyWith(
                fontWeight: FontWeight.normal,
                color: colorScheme.onSurface,
              ),
              children: [
                TextSpan(
                  text: '${allContacts.length} ',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(text: context.l10n.contacts),
              ],
            ),
          ),
        ),
        buildSearchTextField(),
        ValueListenableBuilder(
          valueListenable: widget.partyController.busy,
          builder: (BuildContext context, value, Widget? child) {
            return ValueListenableBuilder(
              valueListenable: widget.partyController.contactData,
              builder: (context, value, child) {
                return ListView.separated(
                  shrinkWrap: true,
                  physics: const ScrollPhysics(),
                  itemCount: widget.partyController.contactData.value.length,
                  separatorBuilder: (context, index) =>
                      const Divider(height: 1),
                  itemBuilder: (BuildContext ctx, index) {
                    final contact =
                        widget.partyController.contactData.value[index];
                    return ListTile(
                      contentPadding: EdgeInsets.zero,
                      onTap: () {
                        setState(() {
                          _isChecked[index] = !_isChecked[index];
                          showContactDetail = true;
                          selectedContact = contact;
                        });
                      },
                      title: Text(
                        '${contact.firstName}'
                        ' ${contact.lastName}',
                      ),
                      subtitle: Text(
                        (contact.contactTypes ?? []).isEmpty
                            ? context.l10n.contactTypeNotSet
                            : contact.contactTypes!.first,
                        overflow: TextOverflow.ellipsis,
                      ),
                    );
                  },
                );
              },
            );
          },
        ),
      ],
    );
  }

  Padding buildSearchTextField() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(
        0,
        Insets.gutter,
        Insets.gutter,
        Insets.gutter,
      ),
      child: TextField(
        key: K.partyContactSearchTextField,
        autofocus: kIsWeb,
        decoration: FormStyles.textFieldDecoration(context)
            .copyWith(labelText: context.l10n.search),
        onChanged: (value) {
          widget.partyController.contactFilterQuery = value;
          widget.partyController.contactSearchChanged();
        },
      ),
    );
  }
}
