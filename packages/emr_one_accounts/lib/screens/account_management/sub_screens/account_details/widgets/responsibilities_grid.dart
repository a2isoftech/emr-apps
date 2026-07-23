import 'dart:math';

import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_accounts/constants.dart';
import 'package:emr_one_accounts/emr_one_accounts.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ResponsibilitiesGrid extends StatefulWidget {
  const ResponsibilitiesGrid({
    required this.account,
    required this.controller,
    required this.onRefresh,
    super.key,
  });

  final Account? account;
  final ManageResponsibilitiesController controller;
  final void Function() onRefresh;

  @override
  State<ResponsibilitiesGrid> createState() => _ResponsibilitiesGridState();
}

class _ResponsibilitiesGridState extends State<ResponsibilitiesGrid> {
  late final ValueNotifier<List<AccountManager>> _managers;
  final _isReordering = ValueNotifier<bool>(false);
  final managerFormKey = GlobalKey<FormState>();
  final ScrollController _scrollController = ScrollController();
  final Map<String, ManageResponsibilitiesController> _deleteControllers = {};

  ManageResponsibilitiesController _getDeleteController(AccountManager item) {
    final key = '${item.userId}_${item.accountManagerTypeId}';
    return _deleteControllers.putIfAbsent(
      key,
      () => ManageResponsibilitiesController(
        coreApiService: widget.controller.coreApiService,
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    widget.controller.setAccount(widget.account);
    _managers = ValueNotifier(widget.controller.allManagers);
    widget.controller.gridRefreshSignal.addListener(_refreshGridData);
  }

  @override
  void didUpdateWidget(covariant ResponsibilitiesGrid oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.controller != widget.controller) {
      oldWidget.controller.gridRefreshSignal.removeListener(_refreshGridData);
      widget.controller.gridRefreshSignal.addListener(_refreshGridData);
    }
    if (oldWidget.account != widget.account) {
      widget.controller.setAccount(widget.account);
      _managers.value = widget.controller.allManagers;
    }
  }

  @override
  void dispose() {
    for (final c in _deleteControllers.values) {
      c.dispose();
    }
    widget.controller.gridRefreshSignal.removeListener(_refreshGridData);
    _scrollController.dispose();
    _managers.dispose();
    _isReordering.dispose();
    super.dispose();
  }

  Future<void> _refreshGridData() async {
    final result = await context.coreApi.accountService.getAccountInfo(
      widget.account?.id ?? '',
      forceLoad: true,
    );
    final newAccount = result.$1;
    if (newAccount != null && mounted) {
      widget.controller.setAccount(newAccount);
      _managers.value = widget.controller.allManagers;
      context.read<AccountDetailsController>().currentAccount.value =
          newAccount;
    }
    _isReordering.value = false;
  }

  Widget _buildHeader(BuildContext context) {
    return Container(
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
            flex: 2,
            child: Text(
              context.l10n.managerName,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            flex: 2,
            child: Text(
              context.l10n.serviceType,
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
    );
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<List<AccountManager>>(
      valueListenable: _managers,
      builder: (context, managers, _) {
        final height = managers.isEmpty
            ? accountGridEmptyHeight
            : min(managers.length + 1, accountGridMaxVisibleRows) *
                  accountGridRowHeight;
        if (managers.isEmpty) {
          return Column(
            children: [
              _buildHeader(context),
              Text(context.l10n.noRecordsMessage),
            ],
          );
        }
        return SizedBox(
          height: height,
          child: ValueListenableBuilder<bool>(
            valueListenable: _isReordering,
            builder: (context, isReordering, child) {
              return Stack(
                children: [
                  child!,
                  if (isReordering)
                    Positioned.fill(
                      child: ColoredBox(
                        color: Theme.of(context).colorScheme.surface
                        .withValues(alpha: 0.6),
                        child: Center(child: processingIndicator()),
                      ),
                    ),
                ],
              );
            },
            child: Scrollbar(
              controller: _scrollController,
              thumbVisibility: true,
              child: ReorderableListView.builder(
                shrinkWrap: true,
                scrollController: _scrollController,
                header: _buildHeader(context),
                itemCount: managers.length,
                onReorder: (oldIndex, newIndex) async {
                  final reordered = [...managers];
                  final item = reordered.removeAt(oldIndex);
                  reordered.insert(
                    (newIndex > oldIndex) ? newIndex - 1 : newIndex,
                    item,
                  );
                  _managers.value = reordered;
                  _isReordering.value = true;

                  widget.controller.setAccount(widget.account);
                  const newPrimaryIndex = 0;
                  final (success, error) = await widget.controller
                      .savePrimaryManager(reordered, newPrimaryIndex);
                  if (!success) {
                    _isReordering.value = false;
                    _managers.value = managers;
                    if (context.mounted) {
                      await EmrModal.showMessageBar(
                        context,
                        error,
                        messageType: MessageBarTypes.error,
                      );
                    }
                  } else {
                    widget.controller.gridRefreshSignal.value++;
                    widget.onRefresh();
                  }
                },
                itemBuilder: (context, index) {
                  final item = managers[index];
                  final isPrimary = item.priority == 0 && index == 0;

                  return GestureDetector(
                    key: ValueKey(
                      '${item.userId}_${item.accountManagerTypeId}',
                    ),
                    onTap: () => _onRowTapped(
                      item,
                      item.priority ?? index,
                      isPrimary),
                    child: Container(
                      key: ValueKey(
                        '${item.userId}_${item.accountManagerTypeId}_container',
                      ),
                      decoration: BoxDecoration(
                        color: isPrimary
                            ? Theme.of(context).colorScheme.onPrimaryContainer
                            : index.isEven
                                ? Theme.of(context)
                                .colorScheme.surfaceContainerLowest
                                : Theme.of(context)
                                .colorScheme.surfaceContainerHighest,       
                        border: isPrimary
                            ? Border(
                                left: BorderSide(
                                  color: Theme.of(context).colorScheme.primary,
                                  width: Insets.gutter / 4,
                                ),
                              )
                            : null,
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: Insets.gutter,
                      ),
                      height: accountGridRowHeight,
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                              (item.priority ?? index).toString(),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Row(
                              children: [
                                Flexible(child: Text(item.name ?? '')),
                                if (isPrimary) ...[
                                  const SizedBox(width: Insets.gutter / 2),
                                  EmrStatusChip(
                                    text: context.l10n.primaryManager,
                                  ),
                                ],
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Text(
                              AccountService.mapToAccountManagerType(
                                item.accountManagerTypeId,
                              ).displayString(context),
                            ),
                          ),
                          Expanded(
                            child: isPrimary
                                ? const SizedBox.shrink()
                                : Align(
                                    alignment: Alignment.centerLeft,
                                    child: Builder(
                                      builder: (context) {
                                        final deleteController =
                                            _getDeleteController(item);
                                        return RecordDeleter(
                                          controller: deleteController,
                                          entityName: context
                                          .l10n
                                          .responsibility
                                          .toLowerCase(),
                                          showIcon: true,
                                          onPreDelete: () {
                                            deleteController.account =
                                                widget.controller.account;
                                            deleteController.setAccountManager(
                                              item.userId,
                                              item.accountManagerTypeId,
                                            );
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
                                                    messageType:
                                                        MessageBarTypes.error,
                                                  );
                                                } else {
                                                  final key =
                                                  '${item.userId}_'
                                                  '${item.accountManagerTypeId}'
                                                  ;
                                                  _deleteControllers
                                                      .remove(key)
                                                      ?.dispose();
                                                  widget.account?.managers
                                                  ?.removeWhere(
                                                    (m) =>
                                                    m.userId ==
                                                      item.userId &&
                                                    m.accountManagerTypeId ==
                                                      item.accountManagerTypeId,
                                                  );
                                                  _managers.value = _managers
                                                      .value
                                                      .where((m) => m != item)
                                                      .toList();
                                                  await EmrModal.showMessageBar(
                                                    context,
                                                    context.l10n
                                                      .responsibilityDeletedMsg,
                                                  );
                                                  FocusManager
                                                      .instance
                                                      .primaryFocus
                                                      ?.unfocus();
                                                  widget.controller.reset();
                                                  await _refreshGridData();
                                                  AccountDetailsController
                                                          .forceLoad =
                                                      true;
                                                  widget.onRefresh();
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
          ),
        );
      },
    );
  }

  void _onRowTapped(
    AccountManager manager,
    int displayPriority,
    bool isPrimary) {
    widget.controller.setAccount(widget.account);
    widget.controller.setAccountManager(
      manager.userId,
      manager.accountManagerTypeId,
      displayPriority: displayPriority,
      manager: manager,
    );

    EmrDialog.modal<void>(
      context,
      titleText: isPrimary
          ? '${context.l10n.editManager} - ${context.l10n.primaryManager}'
          : context.l10n.editManager,
      acceptLabel: context.l10n.save,
      builder: (context) => SizedBox(
        width: MediaQuery.of(context).size.width * 0.6,
        height: MediaQuery.of(context).size.width * 0.18,
        child: ManageResponsibilitiesScreen(
          accountId: widget.account?.id ?? '',
          userId: manager.userId,
          accountManagerTypeId: manager.accountManagerTypeId,
          manageResponsibilitiesController: widget.controller,
          responsibilityFormKey: managerFormKey,
          isEditing: true,
        ),
      ),
      onAccept: () async {
        final (success, error) = await widget.controller.update();
        if (!success) {
          final message =
              error ==
                  ManageResponsibilitiesController
                      .kManagerAlreadyExistsInServiceType
              ? context.l10n.managerAlreadyExistsInServiceType
              : error;
          await EmrModal.showMessageBar(
            context,
            message,
            messageType: MessageBarTypes.error,
          );
          return;
        }
        FocusManager.instance.primaryFocus?.unfocus();
        widget.controller.reset();
        widget.controller.gridRefreshSignal.value++;
        context.pop();
        await EmrModal.showMessageBar(
          context,
          context.l10n.responsibilitySavedMsg,
        );
      },
    ).then((_) => widget.controller.reset());
  }
}
