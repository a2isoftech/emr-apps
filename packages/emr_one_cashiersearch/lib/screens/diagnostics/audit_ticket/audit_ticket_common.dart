import 'dart:async';
import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:emr_core_api/extensions/build_context_extensions.dart';
import 'package:emr_one_cashiersearch/emr_one_cashiersearch.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_sharedtypes/enums/enums.dart';
import 'package:emr_sharedtypes/models/ticket/sync_weighbridge_ticket_task.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

abstract class AuditTicketCommon extends StatefulWidget
    with AppBarExtender, OmniSearch {
  AuditTicketCommon({required this.controller, super.key});
  final AuditTicketScreenController controller;
  @override
  List<Widget> getActions(BuildContext context) => [
    IconButton.filled(
      tooltip: context.l10n.refresh,
      onPressed: controller.dataSource.refresh,
      icon: const Icon(Icons.sync),
    ),
  ];
}

abstract class AuditTicketCommonState<TWidget extends AuditTicketCommon>
    extends State<TWidget> {
  late final AuditTicketScreenController controller;
  late final EmrGridController<Ticket> gridController;

  @override
  void initState() {
    super.initState();
    controller = widget.controller;
    controller.dataSource.refresh();
    gridController = EmrGridController<Ticket>(
      data: controller.dataSource.data,
      showLoader: controller.dataSource.loading,
      onSelectedRowsChanged: (selectedRows) {},
    );
  }

  @override
  Widget build(BuildContext context) {
    return body();
  }

  void addDefaultFilters() {
    final filterController =
        controller.filterController! as AuditTicketFilterController;
    final yardFilter = filterController.filters.value
        .where((element) => element.key == AuditTicketFilterController.kYard)
        .firstOrNull;
    final userInfoService = Provider.of<UserInfoService>(context);
    if (yardFilter == null) {
      final defaultYard = userInfoService.userInfo.getDefaultYard();
      filterController.addOrUpdateFilter(
        filter: EmrFilterModel<String>(
          key: AuditTicketFilterController.kYard,
          name: AuditTicketFilterController.kYard,
          value: defaultYard,
          text: defaultYard,
          enableDelete: false,
        ),
        value: defaultYard,
        text: defaultYard,
      );
    }
  }

  Widget body() {
    final filterController =
        controller.filterController! as AuditTicketFilterController;
    addDefaultFilters();
    // controller.dataSource.refresh();
    return ValueListenableBuilder(
      valueListenable: filterController.searchView,
      builder: (parentContext, value, child) {
        switch (value) {
          case CashierSearchView.cardView:
            return Container();
          case CashierSearchView.listView:
            return _getGridView();
        }
      },
    );
  }

  Widget _getGridView() {
    return Stack(
      children: [
        EmrQueryLayout<Ticket>.grid(
          gridController: gridController,
          queryLayoutController: controller,
          columns: [
            columnBuilder(
              width: 80,
              headerText: context.l10n.yard,
              cellText: (ticket) => ticket.yardCode,
            ),
            columnBuilder(
              width: 80,
              headerText: context.l10n.ticketNo,
              cellText: (ticket) => ticket.ticketNumber.toString(),
            ),
            columnBuilder(
              headerText: context.l10n.status,
              cellText: (ticket) => ticket.ticketStatus.name.toUpperCase(),
            ),
            columnBuilder(
              width: 70,
              headerText: context.l10n.type,
              cellText: (ticket) => ticket.ticketType.name.toUpperCase(),
            ),
            columnBuilder(
              headerText: context.l10n.account,
              cellText: (ticket) => ticket.account.accountNumber ?? '_',
            ),
            columnBuilder(
              width: 150,
              headerText: context.l10n.accountName,
              cellText: (ticket) => ticket.account.name ?? '_',
            ),
            columnBuilderWidget(
              headerText: context.l10n.history,
              flex: 1,
              cellBuilder: (ticket) => IconButton(
                icon: const Icon(Icons.history),
                tooltip: context.l10n.history,
                onPressed: () {
                  EmrDialog.modal<void>(
                    context,
                    titleText:
                        '${context.l10n.ticket} ${ticket.yardCode}-'
                        '${ticket.ticketNumber}',
                    acceptLabel: context.l10n.ok,
                    buttons: {EmrDialogButton.accept},
                    builder: (_) => SizedBox(
                      width: 700,
                      height: 650,
                      child: SingleChildScrollView(
                        child: TicketTimeline(
                          initialTicket: ticket,
                          reloadTicket: () async {
                            final updated = await controller.getTicketById(
                              ticket.id,
                            );
                            return updated!;
                          },
                          actionBuilder: getTimeLineActions,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget getJsonWidget(Object? json) {
    return json == null
        ? const SizedBox.shrink()
        : SelectableText(const JsonEncoder.withIndent('  ').convert(json));
  }

  EmrGridColumn<Ticket> columnBuilder({
    required String headerText,
    required String Function(Ticket) cellText,
    void Function()? onSortTap,
    void Function(String? id)? onCellTap,
    Widget Function()? getSortIcon,
    int flex = 4,
    double width = 100,
  }) {
    return columnBuilderWidget(
      headerText: headerText,
      cellBuilder: (rowItem) =>
          Text(cellText.call(rowItem), overflow: TextOverflow.ellipsis),
      onCellTap: onCellTap,
      onSortTap: onSortTap,
      getSortIcon: getSortIcon,
      flex: flex,
      width: width,
    );
  }

  EmrGridColumn<Ticket> columnBuilderWidget({
    required String headerText,
    required Widget Function(Ticket) cellBuilder,
    void Function()? onSortTap,
    void Function(String? id)? onCellTap,
    Widget Function()? getSortIcon,
    int flex = 4,
    double width = 100,
  }) {
    return EmrGridColumn(
      flex: flex,
      width: width,
      headerBuilder: () => MouseRegion(
        cursor: onSortTap != null
            ? SystemMouseCursors.click
            : MouseCursor.defer,
        child: GestureDetector(
          onTap: onSortTap,
          child: Row(
            children: [
              Flexible(
                child: Text(headerText, overflow: TextOverflow.ellipsis),
              ),
              if (getSortIcon != null) getSortIcon.call(),
            ],
          ),
        ),
      ),
      cellBuilder: cellBuilder,
    );
  }

  Widget getTimeLineActions(Ticket ticket, FlowStepType type) {
    switch (type) {
      case FlowStepType.ticketCreated:
        return getTicketCreatedActions(ticket);
      case FlowStepType.ticketFinished:
        return getTicketActions(ticket);
      case FlowStepType.syncTask:
        return getWbSyncTaskActions(ticket);
      case FlowStepType.paymentRecord:
        return getPaymentRecordActions(ticket);
      case FlowStepType.postingTask:
        return getPaymentPostingTaskActions(ticket);
    }
  }

  Future<void> showJsonPopup(Object? json, String title) async {
    await EmrDialog.modal<void>(
      context,
      titleText: title,
      buttons: {EmrDialogButton.accept},
      builder: (context1) => SizedBox(
        width: 450,
        height: 450,
        child: SingleChildScrollView(child: getJsonWidget(json)),
      ),
      acceptLabel: context.l10n.ok,
      onAccept: () async => Navigator.of(context).pop(),
    );
  }

  Widget getTicketCreatedActions(Ticket ticket) {
    if (ticket.ticketStatus == TicketStatus.draft) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: Insets.gutter / 2,
        children: [
          FilledButton(
            onPressed: () => _unlockTicket(ticket.id),
            style: EmrButtonStyles.cta(),
            child: Text(context.l10n.unlock),
          ),
          LinkText(
            label: context.l10n.viewJson,
            onTap: () => showJsonPopup(ticket, context.l10n.ticket),
          ),
        ],
      );
    }
    return LinkText(
      label: context.l10n.viewJson,
      onTap: () => showJsonPopup(ticket, context.l10n.ticket),
    );
  }

  Widget getTicketActions(Ticket ticket) {
    final error =
        ticket.metadata['OppraToTradeSyncErrorMessage']?.toString() ?? '';
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: Insets.gutter / 2,
      children: [
        if (ticket.ticketStatus == TicketStatus.active)
          FilledButton(
            onPressed: () => _syncTicket(ticket),
            style: EmrButtonStyles.cta(),
            child: Text(context.l10n.initiateResync),
          ),
        Text(
          context.l10n.t3TicketVersion(
            (ticket.metadata['T3TicketVersion'] ?? 0).toString(),
          ),
        ),
        if (error.isNotEmpty) Text(context.l10n.t3SyncError(error)),
        if (ticket.ticketStatus == TicketStatus.active)
          LinkText(
            label: context.l10n.viewJson,
            onTap: () => showJsonPopup(ticket, context.l10n.ticket),
          ),
      ],
    );
  }

  Widget getWbSyncTaskActions(Ticket ticket) {
    if (ticket.ticketStatus != TicketStatus.draft) {
      final validSyncTask = getValidSyncTask(ticket);
      final multipleSyncTaskPresent =
          (ticket.syncWeighbridgeTicketTasks?.length ?? 0) > 1;
      final remark = validSyncTask?.eventLogs.lastOrNull?.message ?? '';
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: Insets.gutter / 2,
        children: [
          if (!multipleSyncTaskPresent &&
              validSyncTask?.status != SyncWeighbridgeTicketTaskStatus.success)
            FilledButton(
              onPressed: () => _syncTicketTasks(ticket),
              style: EmrButtonStyles.cta(),
              child: Text(
                validSyncTask == null
                    ? context.l10n.createTask
                    : context.l10n.resync,
              ),
            ),
          if (validSyncTask != null) ...[
            Text(
              '${context.l10n.status}: '
              '''${validSyncTask.status.name.toCapitalized()}''',
            ),
            if (remark.isNotEmpty) Text(context.l10n.remark(remark)),
            LinkText(
              label: context.l10n.viewJson,
              onTap: () => showJsonPopup(
                validSyncTask,
                context.l10n.syncWeighbridgeTask,
              ),
            ),
          ],
          if (multipleSyncTaskPresent) ...[
            const Text('Multiple sync task present for this ticket'),
            Row(
              spacing: Insets.gutter / 2,
              children: ticket.syncWeighbridgeTicketTasks!
                  .mapIndexed(
                    (index, task) => LinkText(
                      label: 'Task ${index + 1}',
                      onTap: () =>
                          showJsonPopup(task, context.l10n.syncWeighbridgeTask),
                    ),
                  )
                  .toList(),
            ),
          ],
        ],
      );
    }
    return const SizedBox.shrink();
  }

  Future<void> _unlockTicket(String ticketId) async {
    EmrLogger.info('Requesting to unlock the ticket $ticketId');
    try {
      final response = await context.coreApi.ticketService.unlockTicket(
        ticketId,
      );
      if (!mounted) {
        return;
      }
      if (response.isSuccess) {
        unawaited(controller.dataSource.refresh());
        unawaited(
          EmrModal.showMessageBar(
            context,
            context.l10n.ticketUnlocked(response.ticketId),
          ),
        );
        EmrLogger.info('Ticket ${response.ticketId} is unlocked');
      } else {
        unawaited(
          EmrModal.showMessageBar(
            context,
            '''${context.l10n.unableToUnlock(response.ticketId)}${response.lockedBy != null ? ', ${context.l10n.lockedByName(response.lockedBy!)}' : ''}''',
            messageType: MessageBarTypes.error,
          ),
        );
        EmrLogger.error('Unable to unlock Ticket ${response.ticketId}');
      }
    } catch (ex) {
      if (mounted) {
        unawaited(
          EmrModal.showMessageBar(
            context,
            context.l10n.unableToUnlock(ticketId),
            messageType: MessageBarTypes.error,
          ),
        );
      }
    }
  }

  Future<bool> _syncTicketTasks(Ticket ticket) async {
    final multipleSyncTaskPresent =
        (ticket.syncWeighbridgeTicketTasks?.length ?? 0) > 1;
    if (multipleSyncTaskPresent) {
      unawaited(
        EmrModal.showMessageBar(
          context,
          'Multiple sync task present for this ticket',
          messageType: MessageBarTypes.error,
        ),
      );
      return false;
    }

    final validSyncTask = getValidSyncTask(ticket);

    if (validSyncTask == null) {
      final result = await controller.createWeighbridgeSyncTicketTask(
        ticket.id,
      );
      if (!mounted) return false;
      if (result.isSuccess) {
        unawaited(controller.dataSource.refresh());
        unawaited(
          EmrModal.showMessageBar(
            context,
            '${context.l10n.syncTicketTasks} ${context.l10n.created}',
          ),
        );
        return true;
      } else {
        unawaited(
          EmrModal.showMessageBar(
            context,
            result.error?.errorMessage ?? context.l10n.failed,
            messageType: MessageBarTypes.error,
          ),
        );
        return false;
      }
    }

    if (validSyncTask.completedDate != null) {
      return true;
    }

    try {
      await context.coreApi.ticketService.syncTicketTasks([validSyncTask.id]);
      if (!mounted) return false;

      unawaited(controller.dataSource.refresh());
      unawaited(
        EmrModal.showMessageBar(context, context.l10n.requestQueuedString),
      );
      return true;
    } catch (e) {
      if (mounted) {
        unawaited(
          EmrModal.showMessageBar(
            context,
            context.l10n.unableToSyncTickets(ticket.id),
            messageType: MessageBarTypes.error,
          ),
        );
      }
    }
    return false;
  }

  Future<bool> _syncTicket(Ticket ticket) async {
    try {
      if (ticket.syncWeighbridgeTicketTasks?.isEmpty ?? true) {
        if (await _syncTicketTasks(ticket)) {
          if (!mounted) return false;
          unawaited(
            EmrModal.showMessageBar(context, context.l10n.requestQueuedString),
          );
          return true;
        } else {
          if (!mounted) return false;
          unawaited(
            EmrModal.showMessageBar(
              context,
              context.l10n.failed,
              messageType: MessageBarTypes.error,
            ),
          );
          return false;
        }
      }

      final result = await controller.resyncTicket(ticket.id);
      if (!mounted) return false;
      if (result.isSuccess) {
        unawaited(
          EmrModal.showMessageBar(context, context.l10n.requestQueuedString),
        );
        return true;
      } else {
        unawaited(
          EmrModal.showMessageBar(
            context,
            result.error?.errorMessage ?? context.l10n.failed,
            messageType: MessageBarTypes.error,
          ),
        );
        return false;
      }
    } catch (e) {
      if (mounted) {
        unawaited(
          EmrModal.showMessageBar(
            context,
            context.l10n.failed,
            messageType: MessageBarTypes.error,
          ),
        );
      }
    }
    return false;
  }

  Widget getPaymentRecordActions(Ticket ticket) {
    if (ticket.paymentRecord != null) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: Insets.gutter / 2,
        children: [
          Text(
            '${context.l10n.status}:  '
            '${ticket.paymentRecord!.status.name.toCapitalized()}',
          ),
          if (ticket.paymentRecord?.paymentPostingTask?.status !=
              PaymentPostingTaskStatusEnum.success)
            FilledButton(
              onPressed: () => _syncTicket(ticket),
              style: EmrButtonStyles.cta(),
              child: Text(context.l10n.resyncTicketsFromPaymentRecord),
            ),
          LinkText(
            label: context.l10n.viewJson,
            onTap: () =>
                showJsonPopup(ticket.paymentRecord, context.l10n.paymentRecord),
          ),
        ],
      );
    }
    return const SizedBox.shrink();
  }

  Widget getPaymentPostingTaskActions(Ticket ticket) {
    if (ticket.paymentRecord?.paymentPostingTask == null) {
      return const SizedBox.shrink();
    }
    final postingTask = ticket.paymentRecord!.paymentPostingTask!;

    final remark = postingTask.eventLogs.lastOrNull?.message ?? '';
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: Insets.gutter / 2,
      children: [
        if (postingTask.status != PaymentPostingTaskStatusEnum.success)
          FilledButton(
            onPressed: () =>
                postingTask.status == PaymentPostingTaskStatusEnum.error
                ? _syncPostingTask(ticket)
                : null,
            style: EmrButtonStyles.cta(),
            child: Text(context.l10n.retriggerProcessor),
          ),
        Text(
          '${context.l10n.status}: ${postingTask.status.name.toCapitalized()}',
        ),
        if (remark.isNotEmpty) Text(context.l10n.remark(remark)),
        LinkText(
          label: context.l10n.viewJson,
          onTap: () =>
              showJsonPopup(postingTask, context.l10n.paymentPostingTask),
        ),
      ],
    );
  }

  Future<bool> _syncPostingTask(Ticket ticket) async {
    try {
      final result = await controller.updatePostingTaskStatus(
        ticket.paymentRecord!.paymentPostingTask!.id,
        PaymentPostingTaskStatusEnum.ready,
      );
      if (!mounted) return false;
      if (result.isSuccess) {
        unawaited(
          EmrModal.showMessageBar(context, context.l10n.requestQueuedString),
        );
        return true;
      } else {
        unawaited(
          EmrModal.showMessageBar(
            context,
            result.error?.errorMessage ?? context.l10n.failed,
            messageType: MessageBarTypes.error,
          ),
        );
        return false;
      }
    } catch (e) {
      if (mounted) {
        unawaited(
          EmrModal.showMessageBar(
            context,
            context.l10n.failed,
            messageType: MessageBarTypes.error,
          ),
        );
      }
    }
    return false;
  }

  SyncWeighbridgeTicketTask? getValidSyncTask(Ticket ticket) {
    if (ticket.syncWeighbridgeTicketTasks?.isEmpty ?? true) {
      return null;
    }

    if (ticket.syncWeighbridgeTicketTasks!.length == 1) {
      return ticket.syncWeighbridgeTicketTasks!.first;
    }

    return null;
  }
}
