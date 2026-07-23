import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_transport/core/constants/string_constants.dart';
import 'package:emr_one_transport/core/permissions/user_permissions.dart';
import 'package:emr_one_transport/core/routing/routing_path.dart';
import 'package:emr_one_transport/data/controllers/containers/container_create_edit_controller.dart';
import 'package:emr_one_transport/data/controllers/containers/containers_filter_controller.dart';
import 'package:emr_one_transport/data/controllers/jobs/job_create_edit_controller.dart';
import 'package:emr_one_transport/data/dataSources/containers_data_source.dart';
import 'package:emr_one_transport/data/models/common/enum.dart';
import 'package:emr_one_transport/data/models/containers/container.dart';
import 'package:emr_one_transport/data/services/container_service.dart';
import 'package:emr_one_transport/data/services/joblist_service.dart';
import 'package:emr_one_transport/presentation/screens/assets/containers/containers_expirations.dart';
import 'package:emr_one_transport/presentation/screens/assets/containers/job_history.dart';
import 'package:emr_one_transport/presentation/shared_widgets/common/error_dialog.dart';
import 'package:emr_one_transport/presentation/shared_widgets/common/success_dialog.dart';
import 'package:file_saver/file_saver.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ContainersScreen extends StatefulWidget with OmniSearch {
  const ContainersScreen({super.key});

  @override
  State<ContainersScreen> createState() => _ContainersScreenState();
}

class _ContainersScreenState extends State<ContainersScreen> {
  late EmrGridController<Containers> _gridController;
  late EmrQueryLayoutController<Containers> _queryLayoutController;
  late ContainersFilterController filterController;
  late ContainersDataSource gridDataSource;
  late ContainerService containerService;
  late ContainerCreateEditController _containersController;

  late ValueNotifier<bool> _hasSelectionNotifier;

  @override
  void initState() {
    super.initState();

    _hasSelectionNotifier = ValueNotifier(false);
    containerService = Provider.of<ContainerService>(context, listen: false);

    _containersController = Provider.of<ContainerCreateEditController>(
      context,
      listen: false,
    );

    _containersController.fetchContainersToExpire();

    _queryLayoutController = Provider.of<EmrQueryLayoutController<Containers>>(
      context,
      listen: false,
    );

    filterController = Provider.of<ContainersFilterController>(
      context,
      listen: false,
    );
    filterController.initilize();

    gridDataSource = _queryLayoutController.dataSource as ContainersDataSource;
    _queryLayoutController.dataSource.loading.value = true;

    _gridController = EmrGridController<Containers>(
      data: _queryLayoutController.dataSource.data,
      rowSelectionMode: RowSelectionMode.multiple,
      showLoader: _queryLayoutController.dataSource.loading,
      onSelectedRowsChanged: (selectedRows) {
        _hasSelectionNotifier.value = selectedRows.isNotEmpty;
      },
    );

    _queryLayoutController = EmrQueryLayoutController<Containers>(
      dataSource: gridDataSource,
      filterController: filterController,
      actionsBuilder: (context) => Row(
        children: [
          if (context.userHasPermission(UserPermissions.containersWrite)) ...[
            FilledButton(
              onPressed: () => context.goNamed(RoutingPathName.addContainer),
              style: EmrButtonStyles.cta(),
              child: Text(context.l10n.addContainer),
            ),
            _buildDeleteButton(),
          ],
          Stack(
            clipBehavior: Clip.none,
            children: [
              IconButton(
                onPressed: () {
                  final containersToExpireDays =
                      _containersController.containersToExpireDays.value;
                  if (_containersController
                      .containersToExpire
                      .value
                      .isNotEmpty) {
                    EmrDialog.modal<void>(
                      context,
                      titleText:
                          '${context.l10n.containerToExpireInNext} '
                          '$containersToExpireDays '
                          '${context.l10n.day}',
                      builder: (_) => SizedBox(
                        width: MediaQuery.sizeOf(context).width - 430,
                        child: ContainersExpirations(
                          containersToExpire:
                              _containersController.containersToExpire.value,
                        ),
                      ),
                      buttons: {},
                    );
                  }
                },
                icon: const Icon(Icons.notifications),
              ),
              ValueListenableBuilder(
                valueListenable: _containersController.containersToExpireCount,
                builder: (context, notificationsCount, child) {
                  if (notificationsCount <= 0) return const SizedBox.shrink();
                  return Positioned(
                    child: Container(
                      padding: const EdgeInsets.all(Insets.gutter / 8),
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.error,
                        shape: BoxShape.circle,
                      ),
                      constraints: const BoxConstraints(
                        minWidth: Insets.gutter,
                        minHeight: Insets.gutter,
                      ),
                      child: Center(
                        child: Text(
                          notificationsCount.toString(),
                          style: Theme.of(context).textTheme.bodyMedium
                              ?.copyWith(
                                fontWeight: FontWeight.bold,
                                color: Theme.of(context).colorScheme.onError,
                              ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
          _buildPrintLabelButton(),
        ],
      ),
    );

    gridDataSource.onRefresh = () async {
      _gridController.selectedRows.value = [];
      _hasSelectionNotifier.value = false;
    };
  }

  @override
  Widget build(BuildContext context) {
    return EmrQueryLayout<Containers>.grid(
      queryLayoutController: _queryLayoutController,
      gridController: _gridController,
      pinnedColumnCount: 2,
      columns: [
        EmrGridColumn(
          width: 50,
          headerBuilder: () => const Text(''),
          cellBuilder: (Containers rowItem) => Builder(
            builder: (context) => IconButton(
              onPressed: () async {
                gridDataSource.loading.value = true;
                final jobs = await _containersController
                    .fetchLatestJobsWithContainers(rowItem.assetNumber);
                gridDataSource.loading.value = false;

                if (context.mounted) {
                  await EmrDialog.modal<void>(
                    context,
                    titleText: StringConstants.getLast10JobsTitle(
                      rowItem.assetNumber,
                    ),
                    builder: (_) => JobHistory(
                      assetNumber: rowItem.assetNumber,
                      latestJobs: jobs,
                      jobListService: Provider.of<JobListService>(
                        context,
                        listen: false,
                      ),
                      jobCreateEditController:
                          Provider.of<JobCreateEditController>(
                            context,
                            listen: false,
                          ),
                    ),
                    buttons: {},
                  );
                }
              },
              icon: const Icon(Icons.fire_truck),
            ),
          ),
        ),
        columnBuilder(
          headerText: context.l10n.assetCode,
          cellText: (rowItem) => rowItem.assetNumber,
          width: 100,
        ),
        columnBuilder(
          headerText: context.l10n.yard,
          cellText: (rowItem) => rowItem.yardCode ?? '',
          width: 50,
        ),
        columnBuilder(
          headerText: context.l10n.assetType,
          cellText: (rowItem) => rowItem.containerType ?? '',
          width: 150,
        ),
        columnBuilder(
          headerText: context.l10n.status,
          cellText: (rowItem) =>
              rowItem.lifeCycleStatus.toString() ==
                  ContainerLifeCycleStatusEnum.notInUse.getLifeCycleStatus
              ? context.l10n.notInUse
              : rowItem.lifeCycleStatus.toString(),
        ),
        columnBuilder(
          headerText: context.l10n.condition,
          cellText: (rowItem) => rowItem.condition ?? '-',
        ),
        columnBuilder(
          headerText: context.l10n.currentLocationStatus,
          cellText: (rowItem) => rowItem.currentLocation?.status ?? '-',
        ),
        columnBuilder(
          headerText: context.l10n.currentLocation,
          cellText: (rowItem) => rowItem.currentLocation?.locationCode ?? '-',
        ),
      ],
    );
  }

  Widget _buildPrintLabelButton() {
    return ValueListenableBuilder<bool>(
      valueListenable: _hasSelectionNotifier,
      builder: (context, hasSelection, _) {
        return Tooltip(
          message: context.l10n.showMenu,
          child: PopupMenuButton<void>(
            position: PopupMenuPosition.under,
            itemBuilder: (BuildContext context) => <PopupMenuItem<void>>[
              PopupMenuItem<void>(
                onTap: hasSelection
                    ? () async {
                        final assetNumbers = _gridController.selectedRows.value
                            .map((c) => c.assetNumber)
                            .toList();
                        final params = {'assetNumbers': assetNumbers};
                        _queryLayoutController.dataSource.loading.value = true;
                        await _containersController.downloadQRCodes(
                          StringConstants.getQrCodesApiPath,
                          MimeType.pdf,
                          StringConstants.qrCodesPdfFileName,
                          queryParams: params,
                        );
                        _queryLayoutController.dataSource.loading.value = false;
                      }
                    : null,
                enabled: hasSelection,
                child: Text(context.l10n.printLabels),
              ),
            ],
            icon: const Icon(Icons.more_vert),
          ),
        );
      },
    );
  }

  Widget _buildDeleteButton() {
    return ValueListenableBuilder<bool>(
      valueListenable: _hasSelectionNotifier,
      builder: (context, hasSelection, _) {
        return IconButton(
          onPressed: hasSelection
              ? () async {
                  await EmrDialog.modal<String?>(
                    context,
                    titleText: context.l10n.confirmDelete,
                    builder: (_) => Padding(
                      padding: const EdgeInsets.only(
                        top: Insets.gutter,
                        right: Insets.gutter * 3,
                        bottom: Insets.gutter,
                      ),
                      child: Text(
                        '${context.l10n.deleteSelectionMsg}'
                        ' ${_gridController.selectedRows.value.length}'
                        ' row(s) ?',
                      ),
                    ),
                    acceptLabel: context.l10n.delete,
                    isDanger: true,
                    onAccept: () async {
                      final response = await containerService.deleteContainers(
                        _gridController.selectedRows.value
                            .map((e) => e.id)
                            .toList(),
                      );
                      if (context.mounted) {
                        await (response.isSuccess
                            ? SuccessAlertWidget.showSuccessMessage(
                                context,
                                context.l10n.containerDeletedSuccessfully,
                              ).then(
                                (_) => {
                                  if (context.mounted)
                                    {Navigator.of(context).pop()},
                                  gridDataSource.refresh(),
                                },
                              )
                            : ErrorAlertWidget.showErrorMessage(
                                context,
                                response.errorMessage.isNotEmpty
                                    ? response.errorMessage
                                    : context.l10n.errorAndTryAgainMsg,
                              ));
                      }
                    },
                  );
                }
              : null,
          icon: const Icon(Icons.delete),
        );
      },
    );
  }

  EmrGridColumn<Containers> columnBuilder({
    required String headerText,
    required String Function(Containers) cellText,
    void Function()? onSortTap,
    void Function(String? id)? onCellTap,
    Widget Function()? getSortIcon,
    int flex = 4,
    double width = 120,
  }) {
    final theme = Theme.of(context);
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
                child: Text(
                  headerText,
                  style: Theme.of(
                    context,
                  ).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              if (getSortIcon != null) getSortIcon.call(),
            ],
          ),
        ),
      ),
      cellBuilder: (Containers rowItem) => headerText == context.l10n.assetCode
          ? Row(
              children: [
                SelectableText.rich(
                  TextSpan(
                    text: rowItem.assetNumber,
                    style: TextStyle(color: theme.colorScheme.tertiary),
                    recognizer:
                        context.userHasPermission(
                          UserPermissions.containersWrite,
                        )
                        ? (TapGestureRecognizer()
                            ..onTap = () {
                              context.goNamed(
                                RoutingPathName.editContainer,
                                params: {'containerId': rowItem.id},
                              );
                            })
                        : null,
                  ),
                ),
              ],
            )
          : SelectableText(cellText.call(rowItem)),
    );
  }
}
