import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_cashiersearch/emr_one_cashiersearch.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class SyncTicketTasksSearch extends StatefulWidget
    with AppBarExtender, OmniSearch {
  SyncTicketTasksSearch({
    required this.userInfoService,
    required this.preferences,
    super.key,
  });

  final UserInfoService userInfoService;
  final SyncTicketTasksPreferences preferences;
  final ValueNotifier<List<String>> selectedTasks =
      ValueNotifier<List<String>>([]);
  final ValueNotifier<List<String>> syncQueue = ValueNotifier<List<String>>([]);
  final ValueNotifier<VoidCallback> triggerSync = ValueNotifier(() {});
  final ValueNotifier<VoidCallback> retryQueuedTasks = ValueNotifier(() {});

  @override
  List<Widget> getActions(BuildContext context) => [
        AnimatedBuilder(
          animation: Listenable.merge([selectedTasks, syncQueue]),
          builder: (context, _) {
            final sel = selectedTasks.value;
            final queue = syncQueue.value;
            final hasSelection = sel.isNotEmpty;
            final hasQueue = queue.isNotEmpty && sel.isEmpty;

            return IconButton.filled(
              tooltip:
                  hasQueue ? 'Retry queued tasks' : context.l10n.syncSelected,
              onPressed: hasSelection
                  ? triggerSync.value
                  : (hasQueue ? retryQueuedTasks.value : null),
              icon: const Icon(Icons.sync),
            );
          },
        ),
      ];

  @override
  State<SyncTicketTasksSearch> createState() => _SyncTicketTasksSearch();
}

class _SyncTicketTasksSearch extends State<SyncTicketTasksSearch> {
  late final SyncTicketTasksDataSource _dataSource;
  late final SyncTicketTasksSearchFilterController _filterController;
  late final EmrQueryLayoutController<SyncWeighbridgeTicketTask>
      _queryLayoutController;
  late final Future<void> _initializeFuture;
  final ValueNotifier<bool> allTasksSelected = ValueNotifier(false);
  final ValueNotifier<int> syncVersion = ValueNotifier<int>(0);
  late final ICashierSearchService _ticketService;

  bool _suppressHeaderListener = false;

  @override
  void initState() {
    super.initState();
    _ticketService = Provider.of<ICashierSearchService>(context, listen: false);
    allTasksSelected.addListener(_onAllSelectionChange);
    widget.selectedTasks.addListener(_onTaskSelectionChange);

    widget.triggerSync.value = () async {
      if (await _syncTicketTasks(context, widget.selectedTasks.value)) {
        if (!mounted) return;
        await EmrModal.showMessageBar(
          context,
          'Tasks are added in the queue successfully!',
          messageType: MessageBarTypes.information,
        );
      }
    };

    widget.retryQueuedTasks.value = () async {
      if (await _syncTicketTasks(context, widget.syncQueue.value)) {
        if (!mounted) return;
        await EmrModal.showMessageBar(
          context,
          'Tasks are Again added in the queue!',
          messageType: MessageBarTypes.information,
        );
      }
    };

    _initializeFuture = initialize();
  }

  @override
  void dispose() {
    _filterController.filters.removeListener(_onFilterChanged);
    widget.selectedTasks.removeListener(_onTaskSelectionChange);
    allTasksSelected.removeListener(_onAllSelectionChange);
    _queryLayoutController.dispose();
    super.dispose();
  }

  void _onFilterChanged() {
    widget.preferences.saveFilter(_filterController.filtersAsMap);
  }

  @override
  Widget build(BuildContext context) {
    const headerTextStyle = TextStyle(fontWeight: FontWeight.bold);
    return FutureBuilder(
      future: _initializeFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState != ConnectionState.done) {
          return const CircularProgressIndicator();
        }
        return EmrQueryLayout<SyncWeighbridgeTicketTask>.grid(
          queryLayoutController: _queryLayoutController,
          columns: [
            EmrGridColumn(
              headerBuilder: () => ValueListenableBuilder<int>(
                valueListenable: syncVersion,
                builder: (context, version, _) => ValueListenableBuilder(
                  valueListenable: allTasksSelected,
                  builder: (context, isChecked, child) {
                    final allSelectableTasks = _dataSource.data.value.where(
                      (task) =>
                          !task.isComplete &&
                          !widget.syncQueue.value.contains(task.id),
                    );
                    final isDisabled = allSelectableTasks.isEmpty;
                    return Checkbox(
                      value: isChecked,
                      onChanged: isDisabled
                          ? null
                          : (checked) {
                              allTasksSelected.value = checked!;
                            },
                    );
                  },
                ),
              ),
              cellBuilder: (task) => task.isComplete
                  ? const Checkbox(
                      value: false,
                      onChanged: null,
                    )
                  : ValueListenableBuilder<List<String>>(
                      valueListenable: widget.syncQueue,
                      builder: (context, queue, _) {
                        final isInQueue = queue.contains(task.id);
                        return ValueListenableBuilder<List<String>>(
                          valueListenable: widget.selectedTasks,
                          builder: (context, sel, _) {
                            return Checkbox(
                              value: sel.contains(task.id),
                              onChanged: isInQueue
                                  ? null
                                  : (checked) {
                                      final newList = List<String>.from(
                                        sel,
                                      );
                                      if (checked!) {
                                        newList.add(
                                          task.id,
                                        );
                                      } else {
                                        newList.remove(
                                          task.id,
                                        );
                                      }
                                      widget.selectedTasks.value = newList;
                                    },
                            );
                          },
                        );
                      },
                    ),
              width: 20,
            ),
            EmrGridColumn(
              width: 20,
              headerBuilder: SizedBox.shrink,
              cellBuilder: (rowData) => IconButton(
                onPressed: () => Flyout.show<void>(
                  context: context,
                  builder: (context) => Material(
                    child: Column(
                      spacing: Insets.gutter,
                      children: [
                        Row(
                          children: [
                            Text(
                              '${context.l10n.history} - ${rowData.ticketId}',
                              textAlign: TextAlign.start,
                              style: EmrOneConstants.kMediumHeadingTextStyle,
                            ),
                          ],
                        ),
                        Expanded(
                          child: rowData.eventLogs.isEmpty
                              ? Center(
                                  child: Text(context.l10n.noResults),
                                )
                              : Stepper(
                                  onStepTapped: (_) {},
                                  controlsBuilder: (context, details) =>
                                      const SizedBox.shrink(),
                                  steps:
                                      rowData.eventLogs.map(_getStep).toList(),
                                ),
                        ),
                      ],
                    ),
                  ),
                ),
                icon: const Icon(Icons.history),
              ),
            ),
            EmrGridColumn(
              headerBuilder: () => EmrSortableGridHeader(
                field: 'ticketId',
                dataSource: _queryLayoutController.dataSource,
                child: Text(
                  context.l10n.ticketId,
                  style: headerTextStyle,
                ),
              ),
              cellBuilder: (syncTicketTask) => Text(syncTicketTask.ticketId),
            ),
            EmrGridColumn(
              headerBuilder: () => EmrSortableGridHeader(
                field: 'ticketCompletedDate',
                dataSource: _queryLayoutController.dataSource,
                child: Text(
                  context.l10n.ticketCompletedOn,
                  style: headerTextStyle,
                ),
              ),
              cellBuilder: (syncTicketTask) => Text(
                DateFormat.yMd()
                    .add_jm()
                    .format(syncTicketTask.ticketCompletedDate.toLocal()),
              ),
            ),
            EmrGridColumn(
              headerBuilder: () => EmrSortableGridHeader(
                field: 'weighbridgeId',
                dataSource: _queryLayoutController.dataSource,
                child: Text(
                  context.l10n.weighbridgeId,
                  style: headerTextStyle,
                ),
              ),
              cellBuilder: (syncTicketTask) =>
                  Text(syncTicketTask.weighbridgeId),
            ),
            EmrGridColumn(
              headerBuilder: () => Text(
                context.l10n.machineName,
                style: headerTextStyle,
              ),
              cellBuilder: (syncTicketTask) => Text(syncTicketTask.machineName),
            ),
            EmrGridColumn(
              headerBuilder: () => Text(
                context.l10n.completedBy,
                style: headerTextStyle,
              ),
              cellBuilder: (syncTicketTask) =>
                  Text(syncTicketTask.ticketCompletedBy),
            ),
            EmrGridColumn(
              headerBuilder: () => Text(
                context.l10n.syncedOn,
                style: headerTextStyle,
              ),
              cellBuilder: (syncTicketTask) => Text(
                syncTicketTask.isComplete
                    ? DateFormat.yMd()
                        .add_jm()
                        .format(syncTicketTask.completedDate!.toLocal())
                    : '—',
              ),
            ),
            EmrGridColumn(
              headerBuilder: () => Text(
                context.l10n.status,
                style: headerTextStyle,
              ),
              cellBuilder: _statusWidget,
            ),
            EmrGridColumn(
              headerBuilder: () => Text(
                context.l10n.inTrade,
                style: headerTextStyle,
              ),
              cellBuilder: (rowItem) => Text(
                rowItem.inTrade
                    ? context.l10n.trueText
                    : context.l10n.falseText,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            EmrGridColumn(
              headerBuilder: () => Text(
                context.l10n.actions,
                style: headerTextStyle,
              ),
              cellBuilder: _syncTicketActionWidget,
            ),
          ],
        );
      },
    );
  }

  Color _getColorFromEventLogType(EventLogType type) {
    return switch (type) {
      EventLogType.error => Colors.red,
      EventLogType.information => Colors.blue,
      EventLogType.success => Colors.green,
      EventLogType.warning => Colors.orange
    };
  }

  Gradient _getGradientFromEventLogType(EventLogType type) {
    final color = _getColorFromEventLogType(type);

    return LinearGradient(colors: [color, color]);
  }

  void _onAllSelectionChange() {
    if (_suppressHeaderListener) return;
    if (allTasksSelected.value) {
      final allSyncableTasks = _dataSource.data.value
          .where(
            (task) =>
                !task.isComplete && !widget.syncQueue.value.contains(task.id),
          )
          .map((task) => task.id)
          .toList();
      widget.selectedTasks.value = allSyncableTasks;
    } else {
      widget.selectedTasks.value = [];
    }
  }

  void _onTaskSelectionChange() {
    final syncable = _dataSource.data.value
        .where(
          (task) =>
              !task.isComplete && !widget.syncQueue.value.contains(task.id),
        )
        .map((task) => task.id)
        .toList();
    final selected = widget.selectedTasks.value;
    final allSelected =
        syncable.isNotEmpty && syncable.every(selected.contains);

    if (allTasksSelected.value != allSelected) {
      _suppressHeaderListener = true;
      allTasksSelected.value = allSelected;
      _suppressHeaderListener = false;
    }
  }

  Future<void> initialize() async {
    _dataSource = SyncTicketTasksDataSource(
      coreApiService: context.coreApi,
      handleErrors: handleErrors,
    );

    final savedFilters = await widget.preferences.getFilter();
    _filterController = SyncTicketTasksSearchFilterController(
      userInfoService: widget.userInfoService,
      ticketService: _ticketService,
      savedFilters: savedFilters,
    );

    _filterController.filters.addListener(_onFilterChanged);
    _queryLayoutController =
        EmrQueryLayoutController<SyncWeighbridgeTicketTask>(
      dataSource: _dataSource,
      filterController: _filterController,
    );
  }

  Future<bool> _syncTicketTasks(BuildContext context, List<String> ids) async {
    if (ids.isEmpty) {
      return false;
    }

    try {
      widget.syncQueue.value = [
        ...widget.syncQueue.value,
        ...ids,
      ];
      await context.coreApi.ticketService.syncTicketTasks(ids);
      widget.selectedTasks.value = widget.selectedTasks.value
          .where((taskId) => !ids.contains(taskId))
          .toList();
      allTasksSelected.value = false;
      syncVersion.value++;
      return true;
    } catch (e) {
      if (context.mounted) {
        final ticketIds = _dataSource.data.value
            .where((task) => ids.contains(task.id))
            .map((task) => task.ticketId)
            .toList();
        await EmrModal.showMessageBar(
          context,
          context.l10n.unableToSyncTickets(ticketIds.join(', ')),
          messageType: MessageBarTypes.error,
        );
        widget.syncQueue.value = widget.syncQueue.value
            .where((queuedId) => !ids.contains(queuedId))
            .toList();
      }
    }
    return false;
  }

  Widget _syncTicketActionWidget(SyncWeighbridgeTicketTask task) {
    return ValueListenableBuilder<List<String>>(
      valueListenable: widget.syncQueue,
      builder: (context, queue, _) {
        return !((task.isComplete ||
                    widget.syncQueue.value.contains(task.id)) &&
                task.inTrade)
            ? IconButton(
                tooltip: context.l10n.clickToSyncTicket,
                color: Theme.of(context).colorScheme.primary,
                onPressed: () {
                  _syncTicketTasks(context, [task.id]);
                },
                icon: const Icon(Icons.sync),
              )
            : const SizedBox.shrink();
      },
    );
  }

  Widget _statusWidget(SyncWeighbridgeTicketTask task) {
    final syncedColor = Theme.of(context).colorScheme.primary;
    final unsyncedColor = Theme.of(context).colorScheme.error;
    return ValueListenableBuilder<List<String>>(
      valueListenable: widget.syncQueue,
      builder: (context, queue, _) {
        if (task.isComplete) {
          return Text(
            context.l10n.synced,
            style: TextStyle(
              color: syncedColor,
              fontWeight: FontWeight.w600,
            ),
          );
        } else if (queue.contains(task.id)) {
          return Text(
            context.l10n.inSyncQueue,
            style: TextStyle(
              color: syncedColor,
              fontWeight: FontWeight.w600,
            ),
          );
        } else {
          return Text(
            context.l10n.unsynced,
            style: TextStyle(
              color: unsyncedColor,
              fontWeight: FontWeight.w600,
            ),
          );
        }
      },
    );
  }

  Future<void> handleErrors(String errorMessage) async {
    EmrLogger.error(errorMessage);
    await EmrModal.showMessageBar(
      context,
      errorMessage,
      messageType: MessageBarTypes.error,
    );
  }

  Step _getStep(EventLog x) {
    return Step(
      state: switch (x.type) {
        EventLogType.error => StepState.error,
        EventLogType.information => StepState.complete,
        EventLogType.success => StepState.complete,
        EventLogType.warning => StepState.error
      },
      title: x.details.isEmpty
          ? Text(x.message)
          : ExpansionTile(
              expandedCrossAxisAlignment: CrossAxisAlignment.start,
              expandedAlignment: Alignment.centerLeft,
              childrenPadding: const EdgeInsets.all(Insets.gutter),
              title: Text(
                x.message,
                style: TextStyle(color: _getColorFromEventLogType(x.type)),
              ),
              children: [
                if (x.type == EventLogType.error) ...[
                  Text('Message: ${x.details['Message'] as String? ?? ''}'),
                  Text(
                    'Stack Trace: ${x.details['StackTrace'] as String? ?? ''}',
                  ),
                ] else if (x.type == EventLogType.success) ...[
                  const Text(
                    'GeneratedXml: ',
                  ),
                  Text(
                    formatXml(x.details['GeneratedXml'] as String? ?? ''),
                  ),
                ],
              ],
            ),
      content: Container(),
      stepStyle: StepStyle(
        gradient: _getGradientFromEventLogType(x.type),
      ),
      subtitle: Text(
        DateFormat.yMd().add_jm().format(x.dateTime.toLocal()),
      ),
    );
  }

  String formatXml(String input) {
    final buffer = StringBuffer();
    var indentLevel = 0;

    final tagRegex = RegExp('<[^<>]+?>');
    final matches = tagRegex.allMatches(input);
    var lastEnd = 0;

    for (final match in matches) {
      final textBetween = input.substring(lastEnd, match.start).trim();
      if (textBetween.isNotEmpty) {
        buffer.writeln('${'  ' * indentLevel}$textBetween');
      }

      final tag = match.group(0)!;

      if (tag.startsWith('</')) {
        // Closing tag
        indentLevel = (indentLevel - 1).clamp(0, indentLevel);
        buffer.writeln('${'  ' * indentLevel}$tag');
      } else {
        final isSelfClosing = tag.endsWith('/>');
        final tagNameMatch = RegExp(r'<\s*([^\s>/]+)').firstMatch(tag);
        final tagName = tagNameMatch?.group(1) ?? '';
        final attrRegex = RegExp(r'([\w:-]+)="(.*?)"');

        buffer.write('${'  ' * indentLevel}<$tagName');

        final attributes = attrRegex.allMatches(tag);
        for (final attr in attributes) {
          final name = attr.group(1);
          final value = attr.group(2);
          buffer.write('\n${'  ' * (indentLevel + 1)}$name="$value"');
        }

        if (isSelfClosing) {
          buffer.writeln('\n${'  ' * indentLevel}/>');
        } else {
          buffer.writeln('>');
          indentLevel++;
        }
      }

      lastEnd = match.end;
    }

    // Any trailing text
    final remaining = input.substring(lastEnd).trim();
    if (remaining.isNotEmpty) {
      buffer.writeln('${'  ' * indentLevel}$remaining');
    }

    return buffer.toString();
  }
}
