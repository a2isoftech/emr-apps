import 'package:collection/collection.dart';
import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_accounts/emr_one_accounts.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_sharedtypes/models/models.dart';
import 'package:flutter/material.dart';

class ContactTypeInformation extends StatefulWidget {
  const ContactTypeInformation({
    required this.title,
    required this.controller,
    super.key,
  });

  final String title;
  final ManageContactController controller;

  @override
  State<ContactTypeInformation> createState() => _ContactTypeInformationState();
}

class _ContactTypeInformationState extends State<ContactTypeInformation> {
  bool hasConflict = false;
  Map<Contact, List<String>> conflictingContacts = {};
  Map<String, ValueNotifier<List<Enum$ContactType>>> existingContactNewTypes =
      {};

  @override
  void initState() {
    super.initState();
    widget.controller.data.contactTypes.addListener(_onContactTypesChanged);
  }

  @override
  Widget build(BuildContext context) {
    return EmrTabBarVerticalViewCard(
      title: widget.title,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ValueListenableBuilder<List<Enum$ContactType>>(
            valueListenable: widget.controller.data.contactTypes,
            builder: (context, selectedTypes, _) {
              final hasMainContact = selectedTypes.contains(
                Enum$ContactType.MAIN,
              );

              final account = widget.controller.account;
              final currentContactId = widget.controller.contact?.id;
              final otherContactsWithMain =
                  account?.contacts
                      ?.where(
                        (contact) =>
                            contact.id != null &&
                            contact.id != currentContactId &&
                            (contact.contactTypes?.contains(
                                  Enum$ContactType.MAIN.toJson(),
                                ) ??
                                false),
                      )
                      .isNotEmpty ??
                  false;

              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  EmrMultiPickerFormField(
                    labelText: context.l10n.contactType,
                    items: (_) => Future.value(
                      widget.controller.contactTypes.value.keys
                          .where(
                            (type) =>
                                !(hasConflict &&
                                    conflictingContacts.values.any(
                                      (conflictTypes) => conflictTypes.contains(
                                        type.displayString(context),
                                      ),
                                    )),
                          )
                          .toList(),
                    ),
                    itemTitleText: (item) => item.displayString(context),
                    binding: widget.controller.data.contactTypes,
                  ),
                  if (!hasMainContact && !otherContactsWithMain)
                    Text(
                      context.l10n.mainContactRemovalErrorInline,
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: Theme.of(context).colorScheme.error,
                      ),
                    ),
                  if (hasConflict) _buildConflictSection(context),
                ],
              );
            },
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    widget.controller.data.contactTypes.removeListener(_onContactTypesChanged);
    for (final notifier in existingContactNewTypes.values) {
      notifier.dispose();
    }
    super.dispose();
  }

  void _cleanupResolvedConflicts(Set<String> activeConflictContactIds) {
    final removedIds = widget.controller.resolvedConflicts.keys
        .where((id) => !activeConflictContactIds.contains(id))
        .toList();

    for (final id in removedIds) {
      widget.controller.resolvedConflicts.remove(id);
    }
  }

  void _onContactTypesChanged() {
    _checkForConflicts(widget.controller.data.contactTypes.value);
  }

  bool _contactHasType(Contact contact, Enum$ContactType type) {
    final types = contact.contactTypes;
    if (types == null) return false;
    return types.contains(_displayContactType(type)) ||
        types.contains(type.toJson());
  }

  String _displayContactType(Enum$ContactType type) {
    return type.displayString(context);
  }

  void _checkForConflicts(List<Enum$ContactType> selectedTypes) {
    final previousValues = <String, List<Enum$ContactType>>{
      for (final entry in existingContactNewTypes.entries)
        entry.key: List<Enum$ContactType>.of(entry.value.value),
    };

    for (final notifier in existingContactNewTypes.values) {
      notifier.dispose();
    }

    final newConflictingContacts = <Contact, List<String>>{};
    final newExistingContactNewTypes =
        <String, ValueNotifier<List<Enum$ContactType>>>{};
    final activeConflictContactIds = <String>{};
    final account = widget.controller.account;
    final currentContactId = widget.controller.contact?.id;

    if (account == null) {
      setState(() {
        conflictingContacts = {};
        existingContactNewTypes = {};
      });
      return;
    }

    final existingContacts =
        account.contacts
            ?.where(
              (contact) => contact.id != null && contact.id != currentContactId,
            )
            .cast<Contact>()
            .toList() ??
        <Contact>[];

    for (final targetType in [
      Enum$ContactType.MAIN,
      Enum$ContactType.PAYMENTS,
    ]) {
      if (!selectedTypes.contains(targetType)) {
        continue;
      }

      final existing = existingContacts.firstWhereOrNull(
        (contact) => _contactHasType(contact, targetType),
      );
      if (existing != null) {
        final displayType = _displayContactType(targetType);
        newConflictingContacts[existing] ??= [];
        newConflictingContacts[existing]!.add(displayType);

        final contactId = existing.id ?? '';
        if (contactId.isNotEmpty) {
          activeConflictContactIds.add(contactId);
        }
      }
    }

    _cleanupResolvedConflicts(activeConflictContactIds);

    for (final contact in newConflictingContacts.keys) {
      final contactId = contact.id ?? '';
      if (contactId.isEmpty) continue;

      final existingContactTypes =
          contact.contactTypes
              ?.map((typeStr) {
                try {
                  return EnumExtensions.getEnumValueNotifier<Enum$ContactType>(
                    typeStr,
                    Enum$ContactType.values,
                  ).value.key;
                } catch (_) {
                  return null;
                }
              })
              .whereType<Enum$ContactType>()
              .toList() ??
          [];

      final availableTypesForContact = existingContactTypes.toList();

      final defaultTypes = previousValues.containsKey(contactId)
          ? previousValues[contactId]!
          : (availableTypesForContact.isNotEmpty
                ? availableTypesForContact
                : [Enum$ContactType.OTHER]);

      final notifier = ValueNotifier<List<Enum$ContactType>>(defaultTypes);
      notifier.addListener(() {
        final newTypes = notifier.value;
        if (newTypes.isNotEmpty) {
          widget.controller.setResolvedConflict(contactId, newTypes);
        } else {
          widget.controller.deleteResolvedConflictContact(contactId);
        }
      });

      newExistingContactNewTypes[contactId] = notifier;
      if (defaultTypes.isNotEmpty) {
        widget.controller.setResolvedConflict(contactId, defaultTypes);
      }
    }

    setState(() {
      hasConflict = newConflictingContacts.isNotEmpty;
      conflictingContacts = newConflictingContacts;
      existingContactNewTypes = newExistingContactNewTypes;
    });
  }

  void _deleteConflictContact(String contactId) {
    setState(() {
      conflictingContacts.removeWhere((contact, _) => contact.id == contactId);
      existingContactNewTypes.remove(contactId)?.dispose();
    });
    widget.controller.deleteResolvedConflictContact(contactId);
  }

  Widget _buildConflictSection(BuildContext context) {
    if (!hasConflict || conflictingContacts.isEmpty) {
      return const SizedBox.shrink();
    }

    final selectedTypes = widget.controller.data.contactTypes.value;

    final account = widget.controller.account;
    final currentContactId = widget.controller.contact?.id;
    final otherContacts =
        account?.contacts
            ?.where(
              (contact) => contact.id != null && contact.id != currentContactId,
            )
            .cast<Contact>()
            .toList() ??
        <Contact>[];

    final typesToExclude = <Enum$ContactType>{};
    for (final type in [Enum$ContactType.MAIN, Enum$ContactType.PAYMENTS]) {
      final exists = otherContacts.any(
        (contact) =>
            (contact.contactTypes?.contains(type.toJson()) ?? false) ||
            (contact.contactTypes?.contains(type.displayString(context)) ??
                false),
      );
      if (exists) typesToExclude.add(type);
    }

    final availableTypes = widget.controller.contactTypes.value.keys
        .where(
          (type) =>
              !selectedTypes.contains(type) && !typesToExclude.contains(type),
        )
        .toList();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: Insets.gutter),

        ...conflictingContacts.entries.map((entry) {
          final contact = entry.key;
          final conflictTypes = entry.value;

          final name = [
            contact.firstName,
            contact.lastName,
          ].where((e) => e?.isNotEmpty ?? false).join(' ');

          final contactId = contact.id ?? '';

          final existingContactNewTypesNotifier =
              existingContactNewTypes[contactId];

          if (existingContactNewTypesNotifier == null) {
            return const SizedBox.shrink();
          }

          final typesText = conflictTypes.join(', ');

          final conflictingTypeEnums = conflictTypes
              .map((typeStr) {
                return Enum$ContactType.values.firstWhereOrNull(
                  (type) => type.displayString(context) == typeStr,
                );
              })
              .whereType<Enum$ContactType>()
              .toList();

          final filteredAvailableTypes = availableTypes
              .where((type) => !conflictingTypeEnums.contains(type))
              .toList();

          return Container(
            margin: const EdgeInsets.only(bottom: Insets.gutter),
            padding: const EdgeInsets.all(Insets.gutter),
            decoration: BoxDecoration(
              border: Border.all(color: Theme.of(context).dividerColor),
              borderRadius: BorderRadius.circular(Insets.gutter / 2),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: Insets.gutter),
                  padding: const EdgeInsets.all(Insets.gutter),
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.errorContainer,
                    borderRadius: BorderRadius.circular(Insets.gutter / 2),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.warning_amber_rounded,
                        color: Theme.of(context).colorScheme.onErrorContainer,
                      ),

                      const SizedBox(width: Insets.gutter / 2),

                      Expanded(
                        child: Text(
                          context.l10n.onlyOneContactTypeAllowed(typesText),
                          style: Theme.of(context).textTheme.bodyMedium
                              ?.copyWith(
                                color: Theme.of(
                                  context,
                                ).colorScheme.onErrorContainer,
                              ),
                        ),
                      ),
                    ],
                  ),
                ),

                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 2,
                      child: Text(
                        context.l10n.existingContact,
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ),

                    Expanded(
                      flex: 4,
                      child: Padding(
                        padding: const EdgeInsets.only(left: Insets.gutter),
                        child: Text(
                          '$name ($typesText)',
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                      ),
                    ),

                    SizedBox(
                      width: Insets.gutter * 3,
                      child: IconButton(
                        padding: EdgeInsets.zero,
                        alignment: Alignment.topCenter,
                        icon: const Icon(Icons.delete_outline),
                        onPressed: () {
                          _deleteConflictContact(contactId);
                        },
                        tooltip: context.l10n.deleteThisContact,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: Insets.gutter),

                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 2,
                      child: Text(
                        context.l10n.existingContactType,
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ),

                    Expanded(
                      flex: 4,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          EmrMultiPickerFormField<Enum$ContactType>(
                            items: (_) => Future.value(filteredAvailableTypes),
                            itemTitleText: (item) =>
                                item.displayString(context),
                            binding: existingContactNewTypesNotifier,
                          ),

                          const SizedBox(height: Insets.gutter / 4),

                          ValueListenableBuilder<List<Enum$ContactType>>(
                            valueListenable: existingContactNewTypesNotifier,
                            builder: (context, selectedTypes, _) {
                              if (selectedTypes.isEmpty) {
                                return Text(
                                  context.l10n.noTypeSelectedDeleteContact,
                                  style: Theme.of(context).textTheme.bodySmall
                                      ?.copyWith(
                                        color: Theme.of(
                                          context,
                                        ).colorScheme.error,
                                      ),
                                );
                              }

                              return const SizedBox.shrink();
                            },
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: Insets.gutter * 3),
                  ],
                ),
              ],
            ),
          );
        }),
      ],
    );
  }
}
