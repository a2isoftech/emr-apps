import 'dart:math';

import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_accounts/constants.dart';
import 'package:emr_one_accounts/emr_one_accounts.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ContactsGrid extends StatefulWidget {
  const ContactsGrid({
    required this.account,
    required this.controller,
    super.key,
  });

  final Account account;
  final ManageContactController controller;

  @override
  State<ContactsGrid> createState() => _ContactsGridState();
}

class _ContactsGridState extends State<ContactsGrid> {
  late EmrGridController<Contact> gridController;
  late final contactFormKey = GlobalKey<FormState>();
  final Map<String, ManageContactController> _deleteControllers = {};

  ManageContactController _getDeleteController(Contact contact) {
    return _deleteControllers.putIfAbsent(
      contact.id!,
      () => ManageContactController(
        coreApiService: widget.controller.coreApiService,
        mediaService: widget.controller.mediaService,
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    final sortedContacts = _sortContacts(widget.account.contacts ?? []);
    gridController = EmrGridController<Contact>(
      data: ValueNotifier(sortedContacts),
    );
    widget.controller.gridRefreshSignal.addListener(_refreshGridData);
  }

  @override
  void didUpdateWidget(covariant ContactsGrid oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.controller != widget.controller) {
      oldWidget.controller.gridRefreshSignal.removeListener(_refreshGridData);
      widget.controller.gridRefreshSignal.addListener(_refreshGridData);
    }
    gridController.data.value = _sortContacts(
      widget.account.contacts ?? [],
    );
  }

  @override
  void dispose() {
    for (final c in _deleteControllers.values) {
      c.dispose();
    }
    widget.controller.gridRefreshSignal.removeListener(_refreshGridData);
    super.dispose();
  }

  Future<void> _refreshGridData() async {
    gridController.showLoader.value = true;
    final result = await context.coreApi.accountService.getAccountInfo(
      widget.account.id ?? '',
      forceLoad: true,
    );
    final newAccount = result.$1;
    if (newAccount != null && mounted) {
      gridController.data.value = _sortContacts(
        newAccount.contacts ?? [],
      );
    }
    if (mounted) {
      gridController.showLoader.value = false;
    }
  }

  Future<void> _refreshContacts() async {
    final result = await widget.controller.coreApiService.accountService
        .getAccountInfo(widget.account.id!, forceLoad: true);
    final updatedAccount = result.$1;
    if (updatedAccount != null) {
      widget.account.contacts
        ?..clear()
        ..addAll(updatedAccount.contacts ?? []);
      widget.account.portalEnabledContacts =
      updatedAccount.portalEnabledContacts;
      gridController.data.value = _sortContacts(
        widget.account.contacts ?? [],
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<List<Contact>>(
      valueListenable: gridController.data,
      builder: (context, contacts, _) {
        final height = contacts.isEmpty
            ? accountGridEmptyHeight
            : min(contacts.length + 1, accountGridMaxVisibleRows)
            * accountGridRowHeight;

        return SizedBox(
          height: height,
          child: EmrGrid<Contact>(
      controller: gridController,
      alternateBackgroundRowColour: true,
      pinnedRowCount: 1,
      rowHeight: (rowIndex) => accountGridRowHeight,
      noRecordsMessage: Text(context.l10n.noRecordsMessage),
      columns: [
        EmrGridColumn(
          headerBuilder: () => EmrGridHeader(text: context.l10n.firstName),
          cellBuilder: (contact) => Text(contact.firstName ?? ''),
        ),
        EmrGridColumn(
          headerBuilder: () => EmrGridHeader(text: context.l10n.lastName),
          cellBuilder: (contact) => Text(contact.lastName ?? ''),
        ),
        EmrGridColumn(
          headerBuilder: () => EmrGridHeader(text: context.l10n.emailAddress),
          cellBuilder: (contact) =>
              Text(contact.contactPreferences.email?.value ?? ''),
        ),
        EmrGridColumn(
          headerBuilder: () => EmrGridHeader(text: context.l10n.contactNumber),
          cellBuilder: (contact) =>
              Text(contact.contactPreferences.mobile?.value ?? ''),
        ),
        EmrGridColumn(
          headerBuilder: () => EmrGridHeader(text: context.l10n.contactType),
          cellBuilder: (contact) {
            final sortedTypes = _sortContactTypes(contact.contactTypes);
            final label = localizedContactTypeLabel(context, sortedTypes);
            return Tooltip(
              message: label,
              child: Text(
                label,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                softWrap: false,
              ),
            );
          },
        ),
        EmrGridColumn(
          headerBuilder: () => EmrGridHeader(text: context.l10n.actions),
          cellBuilder: (item) {
            final deleteController = _getDeleteController(item);
            return RecordDeleter(
              controller: deleteController,
              entityName: context.l10n.contact.toLowerCase(),
              showIcon: true,
              disableIcon:
                  item.contactTypes?.contains(Enum$ContactType.MAIN.toJson()) ??
                  false,
              tooltipForDisableIcon: context.l10n.mainContactRemovalErrorInline,
              onPreDelete: () {
                deleteController.account = widget.account;
                deleteController.setContact(item);
              },
              onDelete: ({required bool success, required String error}) async {
                if (!success) {
                  await EmrModal.showMessageBar(
                    context,
                    error.isNotEmpty
                        ? error
                        : context.l10n.failedToDeleteContact,
                    messageType: MessageBarTypes.error,
                  );
                  return;
                } else {
                  widget.account.contacts!.removeWhere((c) => c.id == item.id);
                  _deleteControllers.remove(item.id)?.dispose();
                  final updatedContacts = _sortContacts(
                    widget.account.contacts ?? [],
                  );
                  gridController.data.value = updatedContacts;

                  if (mounted) {
                    await EmrModal.showMessageBar(
                      context,
                      context.l10n.contactDeleteSuccess,
                    );

                    final hasDocuments =
                        (item.proofOfIdentification?.isNotEmpty ?? false) ||
                            (item.proofOfAddress?.isNotEmpty ?? false) ||
                            item.signature != null;
                    if (hasDocuments && context.mounted) {
                      context
                          .read<ManageDocumentsController>()
                          .setAccount(widget.account);
                    }
                  }
                  widget.controller.reset();
                }
              },
            );
          },
        ),
      ],
      onRowTapped: (contact) {
        widget.controller.errorMessage.value = '';
        showAddEditContactDialog(contact);
      },
          ),
        );
      },
    );
  }

  void showAddEditContactDialog(Contact? contact) {
    final errorKey = GlobalKey();
    final originalAddresses = widget.account.addresses
        .whereType<Address>()
        .toList();
    EmrDialog.modal<void>(
      context,
      titleText: contact == null
          ? context.l10n.addContact
          : context.l10n.editContact,
      acceptLabel: context.l10n.save,
      onCancel: () {
        widget.account.addresses
          ..clear()
          ..addAll(originalAddresses);
        widget.controller.reset();
        Navigator.of(context).pop();
      },
      builder: (context) => Column(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.8,
            height: MediaQuery.of(context).size.height * 0.8,
            child: ManageContactScreen(
              account: widget.account,
              contact: contact,
              manageContactController: widget.controller,
              contactFormKey: contactFormKey,
              errorKey: errorKey,
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.8,
            child: ValueListenableBuilder<String>(
              valueListenable: widget.controller.errorMessage,
              builder: (_, visible, __) {
                return visible != ''
                    ? Container(
                        padding: const EdgeInsets.all(Insets.gutter / 2),
                        color: Theme.of(context).colorScheme.error,
                        child: Text(
                          widget.controller.errorMessage.value,
                          style: const TextStyle(color: Colors.white),
                        ),
                      )
                    : const SizedBox.shrink();
              },
            ),
          ),
        ],
      ),
      onAccept: () async {
        if (widget.controller.showMessageWhileRemoveMainContact()) {
         await EmrModal.showMessageBar(
            context,
            context.l10n.mainContactRemovalErrorToastr,
            messageType: MessageBarTypes.error,
          );
          return;
        }

        if (contactFormKey.currentState?.validate() ?? true) {
          final (success, error) = contact == null
              ? await widget.controller.create()
              : await widget.controller.update();

          if (!success) {
            if (mounted) {
              await EmrModal.showMessageBar(
                context,
                context.l10n.anErrorOccurredTryAgain,
                messageType: MessageBarTypes.error,
              );
            }

            return;
          }
          if (success) {
            if (!mounted) return;
            final documentsController =
                context.read<ManageDocumentsController>();
            final accountDetailController =
                context.read<AccountDetailsController>();
            widget.controller.reset();
            widget.controller.gridRefreshSignal.value++;
            context.pop();
            await _refreshContacts();
            accountDetailController.refreshScreen();
            documentsController.setAccount(widget.account);
            if (mounted) {
              await EmrModal.showMessageBar(
                context,
                context.l10n.contactSavedSuccessfully,
              );
            }
          }
        } else {
          widget.controller.isFormValid.value = false;
        }
      },
    );
  }

  Enum$ContactType _parseContactType(String type) {
    return Enum$ContactType.fromJson(type.trim());
  }

  bool _contactTypesContain(
    List<String>? contactTypes,
    Enum$ContactType target,
  ) {
    if (contactTypes == null) return false;
    return contactTypes.any((t) => _parseContactType(t) == target);
  }

  int _getPriority(List<String>? contactTypes) {
    if (_contactTypesContain(contactTypes, Enum$ContactType.MAIN)) return 0;
    if (_contactTypesContain(contactTypes, Enum$ContactType.PAYMENTS)) return 1;
    return 2;
  }

  int _getTypePriority(String type) {
    final parsed = _parseContactType(type);
    if (parsed == Enum$ContactType.MAIN) return 0;
    if (parsed == Enum$ContactType.PAYMENTS) return 1;
    return 2;
  }

  List<String> _sortContactTypes(List<String>? types) {
    if (types == null) return [];
    final sorted = List<String>.from(types);
    sorted.sort((a, b) {
      final pA = _getTypePriority(a);
      final pB = _getTypePriority(b);
      if (pA != pB) return pA.compareTo(pB);
      return a.compareTo(b);
    });
    return sorted;
  }

  List<Contact> _sortContacts(List<Contact> contacts) {
    return List<Contact>.from(contacts)..sort((a, b) {
      final priorityA = _getPriority(a.contactTypes);
      final priorityB = _getPriority(b.contactTypes);
      if (priorityA != priorityB) {
        return priorityA.compareTo(priorityB);
      }
      final typeA = a.contactTypes?.first ?? '';
      final typeB = b.contactTypes?.first ?? '';
      return typeA.compareTo(typeB);
    });
  }
}
