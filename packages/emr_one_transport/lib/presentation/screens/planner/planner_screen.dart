import 'package:collection/collection.dart';
import 'package:cross_file/cross_file.dart';
import 'package:emr_one_core/controllers/emr_one_notification_controller.dart';
import 'package:emr_one_core/data/emr_query_scope_sort_order.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/widgets/favourite_filters/favourite_filter_widget.dart';
import 'package:emr_one_transport/core/constants/string_constants.dart';
import 'package:emr_one_transport/core/permissions/user_permissions.dart';
import 'package:emr_one_transport/core/routing/routing_path.dart';
import 'package:emr_one_transport/core/routing/transport_route_registry.dart';
import 'package:emr_one_transport/data/controllers/common/haulier_report_controller.dart';
import 'package:emr_one_transport/data/controllers/common/open_jobs_report_controller.dart';
import 'package:emr_one_transport/data/controllers/common/yard_report_controller.dart';
import 'package:emr_one_transport/data/controllers/planner/clone_plan_controller.dart';
import 'package:emr_one_transport/data/controllers/planner/planner_filter_controller.dart';
import 'package:emr_one_transport/data/controllers/planner/schedule_plan_controller.dart';
import 'package:emr_one_transport/data/controllers/planner/total_jobs_filter_controller.dart';
import 'package:emr_one_transport/data/dataSources/plan_list_data.dart';
import 'package:emr_one_transport/data/helpers/string_helper.dart';
import 'package:emr_one_transport/data/models/common/action_result.dart';
import 'package:emr_one_transport/data/models/common/enum.dart';
import 'package:emr_one_transport/data/models/plans/plan_haulier_job.dart';
import 'package:emr_one_transport/data/models/plans/plan_response.dart';
import 'package:emr_one_transport/data/planner/plan_service.dart';
import 'package:emr_one_transport/presentation/screens/planner/widget/clone_plan_dlg.dart';
import 'package:emr_one_transport/presentation/screens/planner/widget/import_plan_dlg.dart';
import 'package:emr_one_transport/presentation/screens/planner/widget/plan_detail_dlg.dart';
import 'package:emr_one_transport/presentation/screens/planner/widget/quick_schedule_plan_dlg.dart';
import 'package:emr_one_transport/presentation/shared_widgets/app_modal.dart';
import 'package:emr_one_transport/presentation/shared_widgets/common/error_dialog.dart';
import 'package:emr_one_transport/presentation/shared_widgets/common/success_dialog.dart';
import 'package:emr_one_transport/presentation/shared_widgets/scheduler/report_modal.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class PlannerScreen extends StatefulWidget with OmniSearch {
  const PlannerScreen({super.key});

  @override
  State<PlannerScreen> createState() => _PlannerScreenState();
}

class _PlannerScreenState extends State<PlannerScreen> {
  late EmrGridController<PlanResponse> _gridController;
  late EmrQueryLayoutController<PlanResponse> _queryLayoutController;
  late PlannerFilterController filterController;
  late PlanListDataSource gridDataSource;
  late EmrOneNotificationController notificationController;
  @override
  void initState() {
    super.initState();

    notificationController = context.read<EmrOneNotificationController>();

    _queryLayoutController =
        Provider.of<EmrQueryLayoutController<PlanResponse>>(
          context,
          listen: false,
        );

    _gridController = EmrGridController<PlanResponse>(
      data: _queryLayoutController.dataSource.data,
      showLoader: _queryLayoutController.dataSource.loading,
    );

    filterController =
        _queryLayoutController.filterController! as PlannerFilterController;

    gridDataSource = _queryLayoutController.dataSource as PlanListDataSource;

    gridDataSource.onRefresh = () async {
      _gridController.selectedRows.value = [];
    };
    addAction();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    final dateFormatter = DateFormat.yMd(
      Localizations.localeOf(context).toLanguageTag(),
    );
    filterController.initilize(dateFormatter);
  }

  void addAction() {
    _queryLayoutController.actionsBuilder = (context) => ValueListenableBuilder(
      valueListenable: _gridController.selectedRows,
      builder: (parentContext, value, child) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            if (context.userHasPermission(UserPermissions.plansWrite))
              Padding(
                padding: const EdgeInsets.all(Insets.gutter / 2),
                child: FilledButton(
                  onPressed: () => context.goNamed(RoutingPathName.createPlan),
                  style: EmrButtonStyles.cta(),
                  child: Text(context.l10n.createPlan),
                ),
              ),
            _getFavouritFilterWidget(),
            _addShowActionButton(),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: EmrQueryLayout<PlanResponse>.grid(
            queryLayoutController: _queryLayoutController,
            gridController: _gridController,
            onRowTapped: onRowTapped,
            pinnedColumnCount:
                context.userHasPermission(UserPermissions.plansWrite) ? 4 : 1,
            rowHeight: (rowIndex) => rowIndex >= 0 ? 100 : 40,
            columns: [
              if (context.userHasPermission(UserPermissions.plansWrite)) ...[
                EmrGridColumn(
                  headerBuilder: () => const Text(''),
                  cellBuilder: (PlanResponse rowItem) => IconButton(
                    icon: const Icon(Icons.copy, size: 20),
                    onPressed: () async {
                      final cloneController = Provider.of<ClonePlanController>(
                        context,
                        listen: false,
                      );
                      final isEdited = await EmrDialog.modal<bool?>(
                        context,
                        titleText:
                            '${StringConstants.clonePlanDisplay} :'
                            ' ${rowItem.planNumber}',
                        builder: (context) => ClonePlanDialog(
                          plan: rowItem,
                          controller: cloneController,
                        ),
                        onAccept: () async {
                          final result = await cloneController.clonePlan();
                          if (context.mounted) {
                            if (result.status == ActionStatus.apiSuccess) {
                              await SuccessAlertWidget.showSuccessMessage(
                                context,
                                StringConstants.planClonedSuccessfully,
                              );
                              if (context.mounted) {
                                Navigator.of(context).pop(true);
                              }
                            } else if (result.status ==
                                ActionStatus.apiFailure) {
                              if (result.errorMessage != null &&
                                  result.errorMessage!.isNotEmpty) {
                                await ErrorAlertWidget.showErrorMessage(
                                  context,
                                  result.errorMessage!,
                                );
                              } else {
                                await ErrorAlertWidget.showErrorMessage(
                                  context,
                                  StringConstants.error,
                                );
                              }
                            }
                          }
                        },
                      );
                      if (isEdited ?? false == true) {
                        await gridDataSource.refresh();
                      }
                    },
                    tooltip: StringConstants.cloneTooltipDisplay,
                  ),
                  width: 45,
                ),
                EmrGridColumn(
                  headerBuilder: () => const Text(''),
                  cellBuilder: (PlanResponse rowItem) => IconButton(
                    icon: const Icon(Icons.bolt, size: 20),
                    onPressed: () {
                      final controller = context.read<SchedulePlanController>();
                      EmrDialog.modal<void>(
                        context,
                        titleText:
                            '${StringConstants.quickSchedulePlanDisplay} :'
                            ' ${rowItem.planNumber}',
                        onAccept: () async {
                          final actionResult = await controller
                              .quickSchedulePlan();
                          if (!context.mounted ||
                              actionResult.status ==
                                  ActionStatus.formValidationFailed) {
                            return;
                          }

                          if (actionResult.status == ActionStatus.apiSuccess) {
                            final overlay = EmrOneSuccessNotification(
                              title: context.l10n.success,
                              description: StringConstants
                                  .operationCompletedSuccessfully,
                            );
                            notificationController.showNotification(overlay);
                          } else {
                            final overlay = EmrOneErrorNotification(
                              title: context.l10n.error,
                              description:
                                  actionResult.errorMessage ??
                                  StringConstants.error,
                            );
                            notificationController.showNotification(overlay);
                          }

                          await controller.initialize(rowItem.planNumber);
                          await gridDataSource.refresh();
                        },
                        builder: (_) => ChangeNotifierProvider.value(
                          value: controller,
                          child: QuickSchedulePlanDialog(plan: rowItem),
                        ),
                      );
                    },
                    tooltip: context.l10n.quickSchedule,
                  ),
                  width: 45,
                ),
                EmrGridColumn(
                  headerBuilder: () => const Text(''),
                  cellBuilder: (PlanResponse rowItem) => IconButton(
                    icon: const FaIcon(FontAwesomeIcons.pen, size: 15),
                    onPressed: () => context.goNamed(
                      RoutingPathName.editPlan,
                      params: {
                        StringConstants.planIdRoute: '${rowItem.planNumber}',
                      },
                    ),
                    tooltip: StringConstants.editTooltipDisplay,
                  ),
                  width: 45,
                ),
              ],
              EmrGridColumn(
                headerBuilder: () => MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    onTap: () => _queryLayoutController.dataSource.sortBy(
                      StringConstants.flowType.toLowerCase(),
                    ),
                    child: Row(
                      children: [
                        Flexible(
                          child: Text(
                            context.l10n.planType,
                            style: const TextStyle(fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        _getSortIcon(StringConstants.flowType.toLowerCase()),
                      ],
                    ),
                  ),
                ),
                width: 120,
                cellBuilder: (PlanResponse rowItem) =>
                    SelectableText(displayFlowType(rowItem.flowType!)),
              ),
              EmrGridColumn(
                headerBuilder: () => MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    onTap: () => _queryLayoutController.dataSource.sortBy(
                      StringConstants.planDate.toLowerCase(),
                    ),
                    child: Row(
                      children: [
                        Flexible(
                          child: Text(
                            context.l10n.planDate,
                            style: const TextStyle(fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        _getSortIcon(StringConstants.planDate.toLowerCase()),
                      ],
                    ),
                  ),
                ),
                width: 120,
                cellBuilder: (PlanResponse rowItem) => SelectableText(
                  DateFormat(
                    StringConstants.dateFormatyyyyMMdd,
                  ).format(rowItem.planDate!.toLocal()),
                ),
              ),
              EmrGridColumn(
                headerBuilder: () => MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    onTap: () => _queryLayoutController.dataSource.sortBy(
                      StringConstants.startlocationcodes.toLowerCase(),
                    ),
                    child: Row(
                      children: [
                        Flexible(
                          child: Text(
                            context.l10n.startLocation,
                            style: const TextStyle(fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        _getSortIcon(
                          StringConstants.startlocationcodes.toLowerCase(),
                        ),
                      ],
                    ),
                  ),
                ),
                width: 350,
                cellBuilder: (PlanResponse rowItem) => SelectableText(
                  StringHelper.buildAddress(rowItem.startLocation),
                ),
              ),
              EmrGridColumn(
                headerBuilder: () => MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    onTap: () => _queryLayoutController.dataSource.sortBy(
                      StringConstants.endlocationcodes.toLowerCase(),
                    ),
                    child: Row(
                      children: [
                        Flexible(
                          child: Text(
                            context.l10n.endLocationDisplay,
                            style: const TextStyle(fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        _getSortIcon(
                          StringConstants.endlocationcodes.toLowerCase(),
                        ),
                      ],
                    ),
                  ),
                ),
                width: 350,
                cellBuilder: (PlanResponse rowItem) => SelectableText(
                  StringHelper.buildAddress(rowItem.endLocation),
                ),
              ),
              EmrGridColumn(
                headerBuilder: () => MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    onTap: () => _queryLayoutController.dataSource.sortBy(
                      StringConstants.customerlocationcodes.toLowerCase(),
                    ),
                    child: Row(
                      children: [
                        Flexible(
                          child: Text(
                            context.l10n.customerLocation,
                            style: const TextStyle(fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        _getSortIcon(
                          StringConstants.customerlocationcodes.toLowerCase(),
                        ),
                      ],
                    ),
                  ),
                ),
                width: 350,
                cellBuilder: (PlanResponse rowItem) => SelectableText(
                  StringHelper.buildAddress(rowItem.customerLocation),
                ),
              ),
              EmrGridColumn(
                headerBuilder: () => Text(
                  context.l10n.dispatcherNotes,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                ),
                width: 250,
                cellBuilder: (PlanResponse rowItem) =>
                    SelectableText(rowItem.dispatcherNotes ?? ''),
              ),
              EmrGridColumn(
                headerBuilder: () => Text(
                  context.l10n.officeNotes,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                ),
                width: 250,
                cellBuilder: (PlanResponse rowItem) =>
                    SelectableText(rowItem.officeNotes ?? ''),
              ),
              EmrGridColumn(
                headerBuilder: () => MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    onTap: () => _queryLayoutController.dataSource.sortBy(
                      StringConstants.productFamily.toLowerCase(),
                    ),
                    child: Row(
                      children: [
                        Flexible(
                          child: Text(
                            context.l10n.productFamily,
                            style: const TextStyle(fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        _getSortIcon(
                          StringConstants.productFamily.toLowerCase(),
                        ),
                      ],
                    ),
                  ),
                ),
                width: 200,
                cellBuilder: (PlanResponse rowItem) => SelectableText(
                  rowItem.productFamily?.code ?? StringConstants.noData,
                ),
              ),
              EmrGridColumn(
                headerBuilder: () => Text(
                  context.l10n.products,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                ),
                width: 180,
                cellBuilder: _buildProductsCell,
              ),
              EmrGridColumn(
                headerBuilder: () => Center(
                  child: Text(
                    context.l10n.totalLoadsDisplay,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                width: 120,
                cellBuilder: (PlanResponse rowItem) =>
                    Center(child: Text(rowItem.loads.toString())),
              ),
              EmrGridColumn(
                width: 140,
                headerBuilder: () => const Center(
                  child: Text(
                    StringConstants.assignedLoads,
                    style: TextStyle(fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                cellBuilder: (PlanResponse rowItem) {
                  final assignedLoads = rowItem.haulierScheduleDetails
                      .fold<int>(
                        0,
                        (sum, haulierDetail) =>
                            sum + (haulierDetail.loads ?? 0),
                      );
                  return Center(child: Text(assignedLoads.toString()));
                },
              ),
              EmrGridColumn(
                width: 140,
                headerBuilder: () => const Center(
                  child: Text(
                    StringConstants.unassignedLoads,
                    style: TextStyle(fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                cellBuilder: (PlanResponse rowItem) {
                  final assignedLoads = rowItem.haulierScheduleDetails
                      .fold<int>(
                        0,
                        (sum, haulierDetail) =>
                            sum + (haulierDetail.loads ?? 0),
                      );
                  final unassignedLoads = rowItem.loads - assignedLoads;
                  return Center(child: Text(unassignedLoads.toString()));
                },
              ),
              EmrGridColumn(
                width: 140,
                headerBuilder: () => const Center(
                  child: Text(
                    '${StringConstants.scheduledApiValue} '
                    '${StringConstants.jobs}',
                    style: TextStyle(fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                cellBuilder: (PlanResponse rowItem) => Center(
                  child: Text(
                    rowItem.jobStatusCount?[StringConstants.scheduledApiValue]
                            ?.toString() ??
                        '0',
                  ),
                ),
              ),
              EmrGridColumn(
                width: 140,
                headerBuilder: () => const Center(
                  child: Text(
                    '${StringConstants.startedApiValue} '
                    '${StringConstants.jobs}',
                    style: TextStyle(fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                cellBuilder: (PlanResponse rowItem) => Center(
                  child: Text(
                    rowItem.jobStatusCount?[StringConstants.startedApiValue]
                            ?.toString() ??
                        '0',
                  ),
                ),
              ),
              EmrGridColumn(
                width: 140,
                headerBuilder: () => const Center(
                  child: Text(
                    '${StringConstants.completedApiValue} '
                    '${StringConstants.jobs}',
                    style: TextStyle(fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                cellBuilder: (PlanResponse rowItem) => Center(
                  child: Text(
                    rowItem.jobStatusCount?[StringConstants.completedApiValue]
                            ?.toString() ??
                        '0',
                  ),
                ),
              ),
              EmrGridColumn(
                width: 140,
                headerBuilder: () => const Center(
                  child: Text(
                    '${StringConstants.pendingApiValue} '
                    '${StringConstants.jobs}',
                    style: TextStyle(fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                cellBuilder: (PlanResponse rowItem) => Center(
                  child: Text(
                    rowItem.jobStatusCount?[StringConstants.pendingApiValue]
                            ?.toString() ??
                        '0',
                  ),
                ),
              ),
              EmrGridColumn(
                width: 140,
                headerBuilder: () => const Center(
                  child: Text(
                    '${StringConstants.abandonedApiValue} '
                    '${StringConstants.jobs}',
                    style: TextStyle(fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                cellBuilder: (PlanResponse rowItem) => Center(
                  child: Text(
                    rowItem.jobStatusCount?[StringConstants.abandonedApiValue]
                            ?.toString() ??
                        '0',
                  ),
                ),
              ),
              EmrGridColumn(
                headerBuilder: () => Text(
                  context.l10n.containerPick,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                ),
                width: 300,
                cellBuilder: (PlanResponse rowItem) =>
                    _buildContainerCell(rowItem, ContainerActionType.pick),
              ),
              EmrGridColumn(
                headerBuilder: () => Text(
                  context.l10n.containerDrop,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                ),
                width: 300,
                cellBuilder: (PlanResponse rowItem) =>
                    _buildContainerCell(rowItem, ContainerActionType.drop),
              ),
              EmrGridColumn(
                headerBuilder: () => MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    onTap: () => _queryLayoutController.dataSource.sortBy(
                      StringConstants.jobTypes.toLowerCase(),
                    ),
                    child: Row(
                      children: [
                        Flexible(
                          child: Text(
                            context.l10n.jobType,
                            style: const TextStyle(fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        _getSortIcon(StringConstants.jobTypes.toLowerCase()),
                      ],
                    ),
                  ),
                ),
                width: 120,
                cellBuilder: (PlanResponse rowItem) => SelectableText(
                  jobTypeFromApiValue(rowItem.jobType ?? '').toString(),
                ),
              ),
              EmrGridColumn(
                headerBuilder: () => MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    onTap: () => _queryLayoutController.dataSource.sortBy(
                      StringConstants.dispatchYard.toLowerCase(),
                    ),
                    child: Row(
                      children: [
                        Flexible(
                          child: Text(
                            context.l10n.planningYard,
                            style: const TextStyle(fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        _getSortIcon(
                          StringConstants.dispatchYard.toLowerCase(),
                        ),
                      ],
                    ),
                  ),
                ),
                width: 150,
                cellBuilder: (PlanResponse rowItem) =>
                    SelectableText(rowItem.dispatchYard),
              ),
              EmrGridColumn(
                headerBuilder: () => MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    onTap: () => _queryLayoutController.dataSource.sortBy(
                      StringConstants.planNumberSortType.toLowerCase(),
                    ),
                    child: Row(
                      children: [
                        Flexible(
                          child: Text(
                            context.l10n.planNumber,
                            style: const TextStyle(fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        _getSortIcon(
                          StringConstants.planNumberSortType.toLowerCase(),
                        ),
                      ],
                    ),
                  ),
                ),
                width: 120,
                cellBuilder: (PlanResponse rowItem) =>
                    SelectableText(rowItem.planNumber.toString()),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildProductsCell(PlanResponse plan) {
    final products = plan.productFamily?.products;

    if (products == null || products.isEmpty) {
      return const Text(StringConstants.noData);
    }

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(
          top: Insets.gutter / 2,
          bottom: Insets.gutter / 2,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SelectableText(
              StringHelper.buildProductsString(plan.productFamily?.products),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildContainerCell(PlanResponse plan, ContainerActionType typeId) {
    final containersInfo = plan.containers;

    if (containersInfo == null) {
      return const Text(StringConstants.noData);
    }

    var startLocnContainers = containersInfo.startLocationContainers;
    final customerLocnContainers = containersInfo.customerLocationContainers;

    if (plan.jobType == JobType.pullAndReturn.apiValue) {
      startLocnContainers = customerLocnContainers;
    }

    return Padding(
      padding: const EdgeInsets.only(
        top: Insets.gutter / 2,
        bottom: Insets.gutter / 2,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (typeId == ContainerActionType.pick) ...[
            ...customerLocnContainers.map((e) {
              return SelectableText(e);
            }),
          ],
          if (typeId == ContainerActionType.drop) ...[
            ...startLocnContainers.map((e) {
              return SelectableText(e);
            }),
          ],
        ],
      ),
    );
  }

  void addActions() {
    _queryLayoutController.actionsBuilder = (context) => ValueListenableBuilder(
      valueListenable: _gridController.selectedRows,
      builder: (parentContext, value, child) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _getFavouritFilterWidget(),
            if (context.userHasPermission(UserPermissions.plansWrite) ||
                context.userHasPermission(UserPermissions.exportAction) ||
                context.userHasPermission(UserPermissions.reportsAction))
              _addShowActionButton(),
          ],
        );
      },
    );
  }

  Widget _getSortIcon(String field) {
    final value = _queryLayoutController.dataSource.queryScope.sortOrder
        .firstWhereOrNull((element) => element.field == field);

    return value == null
        ? const SizedBox.shrink()
        : value.direction == EmrQueryScopeSortOrderDirection.asc
        ? const Icon(Icons.arrow_drop_up)
        : const Icon(Icons.arrow_drop_down);
  }

  Widget _getFavouritFilterWidget() {
    final moduleName =
        (TransportRouteRegistry.transportMenuItems.first.routes
                as List<EORoute>)
            .first
            .name ??
        StringConstants.jobList;
    return MenuAnchor(
      builder:
          (BuildContext context, MenuController menuController, Widget? child) {
            return IconButton(
              onPressed: () {
                if (menuController.isOpen) {
                  menuController.close();
                } else {
                  menuController.open();
                }
              },
              icon: const Icon(Icons.filter_alt),
              tooltip: StringConstants.favouriteFilters,
            );
          },
      menuChildren: [
        if (_queryLayoutController.filterController != null)
          Column(
            children: [
              FavouriteFilters(
                module: moduleName,
                filterController: _queryLayoutController.filterController!,
                dataSource: _queryLayoutController.dataSource,
              ),
            ],
          ),
      ],
    );
  }

  Widget _addShowActionButton() {
    final formKey = GlobalKey<FormState>();
    final planService = Provider.of<PlanService>(context, listen: false);
    final controller = context.read<EmrOneNotificationController>();
    final fileNotifier = ValueNotifier<XFile?>(null);
    final haulierReportController = Provider.of<HaulierReportController>(
      context,
    );
    final yardReportController = Provider.of<YardReportController>(context);
    final openJobsReportController = Provider.of<OpenJobsReportController>(
      context,
    );

    return Tooltip(
      message: StringConstants.showMenu,
      child: PopupMenuButton<int>(
        position: PopupMenuPosition.under,
        itemBuilder: (BuildContext context) => <PopupMenuItem<int>>[
          if (context.userHasPermission(UserPermissions.plansWrite))
            PopupMenuItem<int>(
              value: 1,
              onTap: () {
                fileNotifier.value = null;
                EmrDialog.modal<void>(
                  context,
                  titleText: context.l10n.importPlans,
                  builder: (context) => ImportPlanDialog(
                    fileNotifier: fileNotifier,
                    plannerService: planService,
                    formKey: formKey,
                  ),
                  acceptLabel: context.l10n.import,
                  onAccept: () async {
                    if (formKey.currentState?.validate() ?? false == true) {
                      final result = await planService.uploadPlan(
                        await fileNotifier.value!.readAsBytes(),
                      );
                      if (context.mounted) {
                        if (result != null) {
                          controller.showNotification(
                            EmrOneErrorNotification(
                              title: 'Import error',
                              description: result,
                            ),
                          );
                        } else {
                          if (context.mounted) {
                            context.pop();
                            await _queryLayoutController.dataSource.refresh();
                          }
                        }
                      }
                    }
                  },
                );
              },
              child: Text(context.l10n.import),
            ),
          if (context.userHasPermission(UserPermissions.reportsAction))
            PopupMenuItem<int>(
              value: 2,
              onTap: () async {
                final selectedReport = ValueNotifier<List<String>>([
                  ReportType.haulier.toString(),
                ]);
                await EmrDialog.modal<void>(
                  context,
                  titleText: context.l10n.reports,
                  builder: (context) {
                    return MultiProvider(
                      providers: [
                        ChangeNotifierProvider<HaulierReportController>.value(
                          value: haulierReportController,
                        ),
                        ChangeNotifierProvider<YardReportController>.value(
                          value: yardReportController,
                        ),
                        ChangeNotifierProvider<OpenJobsReportController>.value(
                          value: openJobsReportController,
                        ),
                      ],
                      child: ReportModal(selectedReport: selectedReport),
                    );
                  },
                  acceptLabel: context.l10n.sendOrDownload,
                  onAccept: () async {
                    ActionResult? response;
                    switch (selectedReport.value.first) {
                      case StringConstants.haulierDisplay:
                        response = await haulierReportController
                            .sendOrDownloadReport();

                      case StringConstants.yardText:
                        response = await yardReportController
                            .sendOrDownloadYardReport();

                      case StringConstants.openJobs:
                        response = await openJobsReportController
                            .downloadOpenJobsReport();
                      default:
                        break;
                    }

                    if (response != null &&
                        response.status == ActionStatus.formValidationFailed &&
                        context.mounted) {
                      return;
                    } else if (response != null && context.mounted) {
                      notificationController.showNotification(
                        response.status == ActionStatus.apiSuccess
                            ? EmrOneSuccessNotification(
                                title: StringConstants.success,
                                description: StringConstants
                                    .operationCompletedSuccessfully,
                              )
                            : EmrOneErrorNotification(
                                title: StringConstants.errorDisplay,
                                description: response.errorMessage ?? '',
                              ),
                      );
                    }
                  },
                );
              },
              child: Text(context.l10n.reports),
            ),
          if (context.userHasPermission(UserPermissions.exportAction))
            PopupMenuItem<int>(
              value: 3,
              onTap: () async {
                await gridDataSource.exportPlan();
              },
              child: Text(context.l10n.export),
            ),
        ],
        icon: const Icon(Icons.more_vert),
      ),
    );
  }

  void onRowTapped(PlanResponse plan) {
    final queryLayoutController =
        Provider.of<EmrQueryLayoutController<PlanHaulierJob>>(
          context,
          listen: false,
        );
    final plannerFilterController = Provider.of<PlannerFilterController>(
      context,
      listen: false,
    );
    final totalJobsFilterController = Provider.of<TotalJobsFilterController>(
      context,
      listen: false,
    );
    showDialog<void>(
      context: context,
      builder: (_) => AppModal(
        width: MediaQuery.of(context).size.width * 0.75,
        title: 'Plan: #${plan.id.split('/')[2]}',
        content: PlanDetailDialog(
          queryLayoutController: queryLayoutController,
          totalJobsFilterController: totalJobsFilterController,
          plannerFilterController: plannerFilterController,
          plan: plan,
        ),
      ),
    );
  }
}
