import 'dart:math';

import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_accounts/constants.dart';
import 'package:emr_one_accounts/emr_one_accounts.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PublicationsGrid extends StatefulWidget {
  const PublicationsGrid({
    required this.account,
    required this.controller,
    super.key,
  });

  final Account? account;
  final ManagePublicationsController controller;

  @override
  State<PublicationsGrid> createState() => _PublicationsGridState();
}

class _PublicationsGridState extends State<PublicationsGrid> {
  final GlobalKey<FormState> publicationsFormKey = GlobalKey<FormState>();
  final ScrollController _scrollController = ScrollController();
  late final ValueNotifier<List<AccountPublication>> _publications;
  final Map<String, ManagePublicationsController> _deleteControllers = {};

  ManagePublicationsController _getDeleteController(AccountPublication item) {
    return _deleteControllers.putIfAbsent(
      item.publication.id,
      () => ManagePublicationsController(
        coreApiService: widget.controller.coreApiService,
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    _publications = ValueNotifier([...?widget.account?.publications]);
    widget.controller.gridRefreshSignal.addListener(_refreshGridData);
  }

  @override
  void didUpdateWidget(PublicationsGrid oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.controller != widget.controller) {
      oldWidget.controller.gridRefreshSignal.removeListener(_refreshGridData);
      widget.controller.gridRefreshSignal.addListener(_refreshGridData);
    }
    if (oldWidget.account != widget.account) {
      _publications.value = [...?widget.account?.publications];
    }
  }

  @override
  void dispose() {
    for (final c in _deleteControllers.values) {
      c.dispose();
    }
    _scrollController.dispose();
    _publications.dispose();
    widget.controller.gridRefreshSignal.removeListener(_refreshGridData);
    super.dispose();
  }

  Future<void> _refreshGridData() async {
    final accountId = widget.account?.id ?? '';
    // Use controller's local account data first (already updated by mutation)
    if (widget.controller.account != null && mounted) {
      _publications.value = [...widget.controller.account!.publications];
      context.read<AccountDetailsController>().currentAccount.value =
          widget.controller.account;
      return;
    }
    // Fallback: fetch fresh data from the API
    final result = await context.coreApi.accountService.getAccountInfo(
      accountId,
      forceLoad: true,
    );
    final newAccount = result.$1;
    if (newAccount != null && mounted) {
      _publications.value = [...newAccount.publications];
      context.read<AccountDetailsController>().currentAccount.value =
          newAccount;
    }
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<List<AccountPublication>>(
      valueListenable: _publications,
      builder: (context, publications, _) {
        final height = publications.isEmpty
            ? accountGridEmptyHeight
            : min(publications.length + 1, accountGridMaxVisibleRows) *
                  accountGridRowHeight;
        if (publications.isEmpty) {
          return Column(
            children: [
              Container(
                padding: const EdgeInsets.all(Insets.gutter),
                color: Theme.of(context).colorScheme.surfaceContainerHighest,
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        context.l10n.priorityLabel,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Text(
                        context.l10n.publicationName,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        context.l10n.actions,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(width: Insets.gutter * 2.5),
                  ],
                ),
              ),
              Text(context.l10n.noRecordsMessage),
            ],
          );
        }
        return SizedBox(
          height: height,
          child: Scrollbar(
            controller: _scrollController,
            thumbVisibility: true,
            child: ReorderableListView.builder(
              shrinkWrap: true,
              scrollController: _scrollController,
              header: Container(
                padding: const EdgeInsets.all(Insets.gutter),
                color: Theme.of(context).colorScheme.surfaceContainerHighest,
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        context.l10n.priorityLabel,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Text(
                        context.l10n.publicationName,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        context.l10n.actions,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(width: Insets.gutter * 2.5),
                  ],
                ),
              ),

              itemCount: publications.length,

              onReorder: (oldIndex, newIndex) {
                final reordered = [...publications];
                final item = reordered.removeAt(oldIndex);
                reordered.insert(
                  (newIndex > oldIndex) ? newIndex - 1 : newIndex,
                  item,
                );
                _publications.value = reordered;
                widget.account?.publications = [...reordered];
                widget.controller.account = widget.account;
                widget.controller.updateAccountPublications(reordered);
              },

              itemBuilder: (context, index) {
                final item = publications[index];

                return GestureDetector(
                  key: ValueKey(item),
                  onTap: () {
                    EmrDialog.modal<void>(
                      context,
                      titleText: context.l10n.publication,
                      acceptLabel: context.l10n.save,
                      builder: (context1) => ScaffoldMessenger(
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.6,
                          height: MediaQuery.of(context).size.width * 0.3,
                          child: ManagePublicationScreen(
                            accountId: widget.account?.id ?? '',
                            publicationId: item.publication.id,
                            controller: widget.controller,
                            publicationsFormKey: publicationsFormKey,
                          ),
                        ),
                      ),
                      onAccept: () async {
                        final (success, error) = await widget.controller
                            .update();

                        if (!success) {
                          await EmrModal.showMessageBar(
                            context,
                            error,
                            messageType: MessageBarTypes.error,
                          );
                          return;
                        }

                        widget.controller.reset();
                        widget.controller.gridRefreshSignal.value++;

                        context.pop();

                        await EmrModal.showMessageBar(
                          context,
                          context.l10n.msgPublicationSaved,
                        );
                      },
                    );
                  },
                  child: Container(
                    key: ValueKey(item),
                    color: index.isEven
                        ? Theme.of(context).colorScheme.surfaceContainerLowest
                        : Theme.of(context).colorScheme.surfaceContainerHighest,
                    padding: const EdgeInsets.symmetric(
                      horizontal: Insets.gutter,
                    ),
                    height: accountGridRowHeight,
                    child: Row(
                      children: [
                        Expanded(child: Text((index + 1).toString())),
                        Expanded(flex: 3, child: Text(item.publication.name)),
                        Expanded(
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Builder(
                              builder: (context) {
                                final deleteController = _getDeleteController(
                                  item,
                                );
                                return RecordDeleter(
                                  controller: deleteController,
                                  entityName: 'publication',
                                  showIcon: true,
                                  onPreDelete: () {
                                    widget.account?.publications = [
                                      ..._publications.value,
                                    ];
                                    deleteController.account = widget.account;
                                    deleteController.setPublication(item);
                                  },
                                  onDelete:
                                      ({
                                        required bool success,
                                        required String error,
                                      }) async {
                                        if (!success) {
                                          await EmrModal.showMessageBar(
                                            context,
                                            error,
                                            messageType: MessageBarTypes.error,
                                          );
                                        } else {
                                          _deleteControllers
                                              .remove(item.publication.id)
                                              ?.dispose();
                                          widget
                                              .controller
                                              .account
                                              ?.publications
                                              .removeWhere(
                                                (p) =>
                                                    p.publication.id ==
                                                    item.publication.id,
                                              );
                                          _publications.value = _publications
                                              .value
                                              .where((p) => p != item)
                                              .toList();
                                          await EmrModal.showMessageBar(
                                            context,
                                            context.l10n.msgPublicationDeleted,
                                          );
                                          widget.controller.reset();
                                          widget
                                              .controller
                                              .gridRefreshSignal
                                              .value++;
                                        }
                                      },
                                );
                              },
                            ),
                          ),
                        ),
                        SizedBox(
                          width: Insets.gutter * 2.5,
                          child: ReorderableDragStartListener(
                            index: index,
                            child: const Icon(Icons.drag_handle),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        );
      },
    );
  }
}
