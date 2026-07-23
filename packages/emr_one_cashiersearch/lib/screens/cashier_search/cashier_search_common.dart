import 'dart:async';

import 'package:collection/collection.dart';
import 'package:emr_core_api/graphql/schema.graphql.dart';
import 'package:emr_one_cashiersearch/emr_one_cashiersearch.dart';
import 'package:emr_one_core/config/config.dart';
import 'package:emr_one_core/data/emr_query_scope_sort_order.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/widgets/card/emr_card_controller.dart';
import 'package:emr_one_core/widgets/favourite_filters/favourite_filter_widget.dart';
import 'package:emr_one_core/widgets/grid/emr_card_view.dart';
import 'package:emr_sharedtypes/enums/payment_method.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

abstract class CashierSearchCommon extends StatefulWidget
    with AppBarExtender, OmniSearch {
  CashierSearchCommon({required this.controller, super.key});
  final EmrQueryLayoutController<Ticket> controller;

  @override
  List<Widget> getActions(BuildContext context) => [
    IconButton.filled(
      tooltip: context.l10n.refresh,
      onPressed: controller.dataSource.refresh,
      icon: const Icon(Icons.sync),
    ),
  ];
}

abstract class CashierSearchCommonState<TWidget extends CashierSearchCommon>
    extends State<TWidget>
    with TicketPaymentMixin, TicketSearchMixin {
  late final EmrQueryLayoutController<Ticket> controller;
  late final EmrGridController<Ticket> gridController;
  late final PaymentBasketController<Ticket> basketController;
  late OverlayContextMenuController overlayController;
  final useMobileView = ValueNotifier(false);

  @override
  void initState() {
    super.initState();
    basketController = Provider.of<PaymentBasketController<Ticket>>(
      context,
      listen: false,
    );
    controller = widget.controller;
    overlayController = Provider.of<OverlayContextMenuController>(
      context,
      listen: false,
    );

    overlayController.isVisible.value = false;

    gridController = EmrGridController<Ticket>(
      data: controller.dataSource.data,
      rowSelectionMode: RowSelectionMode.multiple,
      showLoader: controller.dataSource.loading,
      selectedRows: basketController.selectedItems.value,
      onSelectedRowsChanged: (selectedRows) {
        if (selectedRows.isEmpty) {
          basketController.selectedItems.value = [...selectedRows];
          _onSelectedItemChanged();
        } else if (selectedRows.length ==
            controller.dataSource.data.value.length) {
          final canSelecttAll = canSelectAll(selectedRows);
          if (!canSelecttAll) {
            gridController.selectedRows.value = [];
          } else {
            basketController.addSelectedItems(selectedRows);
          }
        } else if (selectedRows.isNotEmpty) {
          final canSelect = _canSelect(selectedRows.last);
          if (!canSelect) {
            gridController.selectedRows.value.remove(selectedRows.last);
          } else {
            basketController.selectedItems.value = [...selectedRows];
            _onSelectedItemChanged();
          }
        }
      },
    );

    final filterController =
        controller.filterController! as CashierSearchFiltersController;

    final gridDataSource =
        controller.dataSource as CashierSearchScreenDataSource;
    gridDataSource.supportsPaging = true;

    filterController.filters.addListener(_filterListener);

    basketController.selectedItems.removeListener(_onSelectedItemChanged);
    basketController.selectedItems.addListener(_onSelectedItemChanged);
  }

  bool _initialized = false;

  @override
  void refresh() {
    controller.dataSource.refresh();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (!_initialized) {
      overlayController.initButtons(_getButtonConfigs());
      _initialized = true;
    }
  }

  @override
  Widget build(BuildContext context) {
    return ContextMenuWrapperWidget(
      overlayController: overlayController,
      menuEndPosition: 90,
      child: body(),
    );
  }

  @override
  void dispose() {
    final filterController =
        controller.filterController! as CashierSearchFiltersController;
    filterController.filters.removeListener(_filterListener);
    basketController.selectedItems.removeListener(_onSelectedItemChanged);
    super.dispose();
  }

  Widget addScanButton() {
    return Tooltip(
      message: context.l10n.scanToSearch,
      child: IconButton(
        iconSize: useMobileView.value ? 45 : 24,
        onPressed: () async {
          final scannedCode = await ScanHelper.startInlineCodeScan(
            context,
            title: context.l10n.scan,
          );
          if (scannedCode != null && scannedCode.isNotEmpty) {
            scanTicketNumber(scannedCode);
          }
        },
        icon: const Icon(Icons.qr_code),
      ),
    );
  }

  Widget _addSwitchViewButton() {
    final filterController =
        controller.filterController! as CashierSearchFiltersController;
    return Visibility(
      visible: kIsWeb,
      child: ValueListenableBuilder(
        valueListenable: filterController.searchView,
        builder: (parentContext, value, child) {
          return Tooltip(
            message: parentContext.l10n.switchView,
            child: IconButton(
              icon: value == CashierSearchView.listView
                  ? const Icon(Icons.apps)
                  : const Icon(Icons.list),
              onPressed: () {
                if (value == CashierSearchView.listView) {
                  filterController.searchView.value =
                      CashierSearchView.cardView;
                } else if (value == CashierSearchView.cardView) {
                  filterController.searchView.value =
                      CashierSearchView.listView;
                }
              },
            ),
          );
        },
      ),
    );
  }

  void addActions() {
    controller.actionsBuilder = (context) => Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _getFavouritFilterWidget(),
        addScanButton(),
        _addSwitchViewButton(),
        _getTicketPayments(),
        _getPaymentBasket(),
      ],
    );
  }

  Widget _getTicketPayments() {
    return Tooltip(
      message: context.l10n.paymentAuthorizations,
      child: IconButton(
        iconSize: useMobileView.value ? 45 : 24,
        onPressed: () async {
          await context.pushNamed(RoutingPathName.ticketPayments);
        },
        icon: const Icon(Icons.lock_clock),
      ),
    );
  }

  void scanTicketNumber(String? scannedCode) {
    if (scannedCode?.isEmpty ?? true) {
      return;
    }
    final gridDataSource =
        controller.dataSource as CashierSearchScreenDataSource;
    gridDataSource.isScanned = true;
    final filterController =
        controller.filterController! as CashierSearchFiltersController;

    final allValues = <FilterItem>[];
    final existingFilter = filterController.filters.value
        .where(
          (element) =>
              element.key == CashierSearchFiltersController.kTicketNumber,
        )
        .firstOrNull;
    if (existingFilter != null) {
      allValues.addAll([...(existingFilter.value as List<FilterItem>)]);
    }

    final filters = scannedCode!.split('/');
    if (filters.last.isEmpty || filters.first.isEmpty) {
      return;
    }

    if (allValues.any((element) => element.value == filters.last)) {
      return;
    }

    allValues.add(FilterItem(key: filters.last, value: filters.last));

    filterController.filters.value = [
      EmrFilterModel<List<FilterItem>>(
        key: CashierSearchFiltersController.kTicketNumber,
        name: 'TicketNumber',
        text:
            '''${allValues.first.value} ${allValues.length > 1 ? '(+${allValues.length - 1})' : ''}''',
        value: [...allValues],
      ),
      EmrFilterModel<List<String>>(
        key: CashierSearchFiltersController.kYard,
        name: 'Yard',
        text: filters.first,
        value: filters,
      ),
    ];
  }

  void mobileViewConfiguration() {}

  void addDefaultFilters() {
    final filterController =
        controller.filterController! as CashierSearchFiltersController;
    final startDateFilter = filterController.filters.value
        .where((element) => element.key == 'StartDate')
        .first;
    final endDateFilter = filterController.filters.value
        .where((element) => element.key == 'EndDate')
        .first;
    final statusFilter = filterController.filters.value
        .where((element) => element.key == 'TicketStatus')
        .first;
    final yardFilter = filterController.filters.value
        .where((element) => element.key == CashierSearchFiltersController.kYard)
        .firstOrNull;
    final accountTypeFilter = filterController.filters.value
        .where(
          (element) =>
              element.key == CashierSearchFiltersController.kTicketAccountType,
        )
        .firstOrNull;

    final userInfoService = Provider.of<UserInfoService>(context);
    filterController.addOrUpdateFilter(
      filter: startDateFilter,
      text: startDateFilter.text ?? '',
      value: startDateFilter.value,
    );
    filterController.addOrUpdateFilter(
      filter: endDateFilter,
      text: endDateFilter.text ?? '',
      value: endDateFilter.value,
    );
    filterController.addOrUpdateFilter(
      filter: statusFilter,
      text: statusFilter.text ?? '',
      value: statusFilter.value,
    );
    if (yardFilter == null) {
      final defaultYard = userInfoService.userInfo.getDefaultYard();
      filterController.addOrUpdateFilter(
        filter: EmrFilterModel<List<String>>(
          key: CashierSearchFiltersController.kYard,
          name: 'Yard',
          value: [defaultYard],
          text: defaultYard,
          enableDelete: false,
        ),
        value: [defaultYard],
        text: defaultYard,
      );
    }
    if (accountTypeFilter == null) {
      filterController.addOrUpdateFilter(
        filter: EmrFilterModel<String>(
          enableDelete: false,
          key: CashierSearchFiltersController.kTicketAccountType,
          name: CashierSearchFiltersController.kTicketAccountType,
          value: Enum$AccountType.RETAIL.name,
          text: Enum$AccountType.RETAIL.name,
        ),
        value: Enum$AccountType.RETAIL.name,
        text: Enum$AccountType.RETAIL.name,
      );
    }
  }

  Future<void> updateSelectedYardDetails(String yardCode) async {
    if (yardCode.isEmpty) {
      await TicketsUtility.errorDialogWidget(
        context,
        context.l10n.invalidYardInUserPreferenceError,
      );
      return;
    }
    final cashierService = Provider.of<ICashierSearchService>(
      context,
      listen: false,
    );
    final yardResult = await cashierService.getYardById(yardCode);
    if (!yardResult.success && mounted) {
      await TicketsUtility.errorYardDialogWidget(context, yardResult.message);
      return;
    }
    paymentController.setDefaultPaymentMode(
      yardResult.data?.defaultPaymentMethod ?? PaymentMethod.none,
    );
    paymentController.setYardPaymentMethods(yardResult.data!);

    final yardDevices = await paymentController.getDevices(
      yardResult.data!.yardCode,
    );

    final atmDevice = yardDevices.data!.atmServers.firstOrNull;
    paymentController.setAtmServerDevice(atmDevice);
  }

  Widget body() {
    final filterController =
        controller.filterController! as CashierSearchFiltersController;

    useMobileView.value = TicketsUtility.isSmallScreen(context);
    addActions();
    mobileViewConfiguration();
    final userInfoService = Provider.of<UserInfoService>(context);
    updateSelectedYardDetails(userInfoService.userInfo.getDefaultYard());
    controller.dataSource.onRefresh = () async {
      duplicatePartyAvailable = {};

      _updateBasket();
      _onSelectedItemChanged();
    };
    if (!useMobileView.value) {
      addDefaultFilters();
    }

    return ValueListenableBuilder(
      valueListenable: filterController.searchView,
      builder: (parentContext, value, child) {
        switch (value) {
          case CashierSearchView.cardView:
            return _getCardView();
          case CashierSearchView.listView:
            return _getGridView();
        }
      },
    );
  }

  Widget _getGridView() {
    final locale = Localizations.localeOf(context);
    return EmrQueryLayout<Ticket>.grid(
      gridController: gridController,
      queryLayoutController: controller,
      columns: [
        columnBuilder(
          headerText: context.l10n.category,
          width: 70,
          getSortIcon: () => _sortIcon('ticketCategory'),
          onSortTap: () => controller.dataSource.sortBy('ticketCategory'),
          cellText: (rowItem) => rowItem.ticketCategory.name.toUpperCase(),
        ),
        columnBuilder(
          headerText: context.l10n.number,
          getSortIcon: () => _sortIcon('ticketNumber'),
          onSortTap: () => controller.dataSource.sortBy('ticketNumber'),
          cellText: (rowItem) => rowItem.ticketNumber.toString(),
        ),
        columnBuilder(
          width: 70,
          headerText: context.l10n.type,
          getSortIcon: () => _sortIcon('ticketType'),
          onSortTap: () => controller.dataSource.sortBy('ticketType'),
          cellText: (rowItem) => rowItem.ticketType.name.toUpperCase(),
        ),
        columnBuilder(
          width: 70,
          headerText: context.l10n.status,
          getSortIcon: () => _sortIcon('ticketStatus'),
          onSortTap: () => controller.dataSource.sortBy('ticketStatus'),
          cellText: (rowItem) => rowItem.ticketStatus.name.toUpperCase(),
        ),
        //change
        columnBuilder(
          width: 80,
          headerText: context.l10n.created,
          getSortIcon: () => _sortIcon('createdDateEpoch'),
          onSortTap: () => controller.dataSource.sortBy('createdDateEpoch'),
          cellText: (rowItem) => DateFormat.yMd(
            locale.toString(),
          ).format(DateTime.now().toLocal()),
        ),
        columnBuilder(
          headerText: context.l10n.account,
          getSortIcon: () => _sortIcon('partyAccountNo'),
          onSortTap: () => controller.dataSource.sortBy('partyAccountNo'),
          cellText: (rowItem) => rowItem.account.accountNumber ?? '_',
        ),
        columnBuilder(
          width: 200,
          headerText: context.l10n.accountName,
          getSortIcon: () => _sortIcon('partyName'),
          onSortTap: () => controller.dataSource.sortBy('partyName'),
          cellText: (rowItem) => rowItem.account.name ?? '_',
        ),
        columnBuilder(
          headerText: context.l10n.totalPayable,
          cellText: (rowItem) => TicketsUtility.formatCurrency(
            context,
            rowItem.currency ?? '',
            rowItem.price ?? 0,
          ),
        ),

        columnBuilderWidget(
          headerText: context.l10n.priced,
          flex: 1,
          width: 70,
          cellBuilder: (rowItem) => IconButton(
            onPressed: () {
              getRePriceModal(rowItem);
            },
            padding: EdgeInsets.zero,
            constraints: const BoxConstraints(),
            icon: Icon(
              rowItem.paymentValidationResult!.validationFlags.isPriced
                  ? Icons.done
                  : Icons.close,
              color: rowItem.paymentValidationResult!.validationFlags.isPriced
                  ? CashierSearchColors.green
                  : CashierSearchColors.red,
              size: 20,
            ),
          ),
        ),

        columnBuilderWidget(
          headerText: context.l10n.agreement,
          flex: 1,
          width: 90,
          cellBuilder: (rowItem) => IconButton(
            onPressed: () => getAgreementModel(
              rowItem.paymentValidationResult!.validationFlags,
              rowItem.account.details!,
            ),
            padding: EdgeInsets.zero,
            constraints: const BoxConstraints(),
            icon: Icon(
              rowItem
                      .paymentValidationResult!
                      .validationFlags
                      .hasRequiredAgreements
                  ? Icons.done
                  : Icons.close,
              color:
                  rowItem
                      .paymentValidationResult!
                      .validationFlags
                      .hasRequiredAgreements
                  ? CashierSearchColors.green
                  : CashierSearchColors.red,
              size: 20,
            ),
          ),
        ),
        columnBuilderWidget(
          headerText: context.l10n.identity,
          flex: 1,
          width: 70,
          cellBuilder: (rowItem) => IconButton(
            onPressed: () => getIdentiesModel(
              rowItem.paymentValidationResult!.validationFlags,
              rowItem.account.details!,
            ),
            padding: EdgeInsets.zero,
            constraints: const BoxConstraints(),
            icon: Icon(
              rowItem
                      .paymentValidationResult!
                      .validationFlags
                      .hasRequiredIdentities
                  ? Icons.done
                  : Icons.close,
              color:
                  rowItem
                      .paymentValidationResult!
                      .validationFlags
                      .hasRequiredIdentities
                  ? CashierSearchColors.green
                  : CashierSearchColors.red,
              size: 20,
            ),
          ),
        ),
        columnBuilderWidget(
          headerText: context.l10n.lines,
          cellBuilder: (rowItem) => Row(
            mainAxisSize: MainAxisSize.min,
            spacing: Insets.gutter / 4,
            children: [
              Text(
                rowItem.lines
                        ?.where((line) => line.isActive)
                        .length
                        .toString() ??
                    '0',
              ),
              IconButton(
                icon: Icon(
                  Icons.info_outline,
                  size: 20,
                  color: Theme.of(context).colorScheme.tertiary,
                ),
                padding: EdgeInsets.zero,
                constraints: const BoxConstraints(),
                onPressed: () => onTicketLineIconClick(rowItem),
              ),
            ],
          ),
        ),
        columnBuilderWidget(
          headerText: context.l10n.product,
          width: 150,
          cellBuilder: getLineChips,
        ),
        columnBuilder(
          headerText: context.l10n.vrn,
          getSortIcon: () => _sortIcon('vehicleNo'),
          onSortTap: () => controller.dataSource.sortBy('vehicleNo'),
          cellText: (rowItem) => rowItem.transportDetails.vehicleReg ?? '_',
        ),
      ],
    );
  }

  Widget _sortIcon(String field) {
    final value = controller.dataSource.queryScope.sortOrder.firstWhereOrNull(
      (element) => element.field == field,
    );

    return value == null
        ? const SizedBox.shrink()
        : value.direction == EmrQueryScopeSortOrderDirection.asc
        ? const Icon(Icons.arrow_drop_up)
        : const Icon(Icons.arrow_drop_down);
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

  Widget _getCardView() {
    return ValueListenableBuilder(
      valueListenable: useMobileView,
      builder: (BuildContext context, value, Widget? child) {
        if (value) {
          return Scaffold(
            body: Stack(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal:
                            (Insets.gutter) +
                            (MediaQuery.of(context).size.width -
                                    TicketsUtility.ticketCardWidth -
                                    (Insets.gutter * 2)) /
                                2,
                      ),
                      child: Row(children: [Expanded(child: addScanButton())]),
                    ),
                    Flexible(
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal:
                              (MediaQuery.of(context).size.width -
                                  TicketsUtility.ticketCardWidth -
                                  (Insets.gutter * 2)) /
                              2,
                          vertical: Insets.gutter / 2,
                        ),
                        child: EmrCardView<Ticket>(
                          key: widget.key,
                          buildItem: (controller, ticket, index) {
                            return ticketCard(ticket);
                          },
                          controller: EmrGridController<Ticket>(
                            data: controller.dataSource.data,
                            //showLoader: controller.dataSource.loading,
                          ),
                          alternateBackgroundRowColour: true,
                          verticalPadding: 2,
                          horizontalPadding: 0,
                          noRecordsMessage: Text(
                            context.l10n.cashierEmptyMessage,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        } else {
          return EmrQueryLayout<Ticket>.card(
            queryLayoutController: controller,
            facetsPanelBuilder: (controller) {
              return Container();
            },
            buildCard: (controller, ticket, index) {
              return ticketCard(ticket);
            },
          );
        }
      },
    );
  }

  Widget ticketCard(Ticket ticket) {
    if (duplicatePartyAvailable.isEmpty) {
      _updateQuickPayStatus();
    }
    final isSelected = basketController.selectedItems.value.contains(ticket);
    return TicketCard(
      key: UniqueKey(),
      ticket: ticket,
      onTicketCardSelected: (_) => _selectTicket(ticket),
      canSelect: (_) => _canSelect(ticket),
      toggleController: EmrCardController(selected: isSelected),
      paymentController: paymentController,
      onButtonClick: _onCardButtonClick,
      isDuplicatePartyAvailable:
          duplicatePartyAvailable[ticket.account.accountNumber!] ?? false,
      onRefresh: refresh,
      isCloudTicket: false,
    );
  }

  Future<void> _onCardButtonClick(Ticket ticket) async {
    if (ticket.ticketStatus == TicketStatus.active) {
      paymentDeduction = ticket.paymentDeduction;
      transactionIds = [ticket.id];
      displayIds = ['${ticket.ticketNumber}'];
      account = ticket.account.details;
      currency = ticket.currency;
      paymentType = PaymentType.ticket;
      unawaited(EmrDialog.busy(context, titleText: ''));
      await startPayment(
        isAuthRequired: ticket.isPaymentAuthorizationRequired,
        paymentMode: ticket.defaultPaymentMethod!,
        yardCode: paymentController.yard!.yardCode,
      );
      if (!mounted) return;
      context.pop();
      await controller.dataSource.refresh();
    } else if (ticket.ticketStatus == TicketStatus.paid) {
      await EmrDialog.modal<void>(
        context,
        titleText: context.l10n.unpayConfirmation,
        acceptLabel: context.l10n.unpay,
        isDanger: true,
        builder: (context1) => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: Insets.gutter,
          children: [
            Text(
              context.l10n.unpayConfirmationMsg,
              style: Theme.of(context).textTheme.titleMedium,
            ),
            PaymentInfo(
              paymentRecord: ticket.paymentRecord!,
              currency: ticket.currency!,
              isUnpay: true,
            ),
          ],
        ),
        onAccept: () async {
          unawaited(EmrDialog.busy(context, titleText: ''));
          final result = await paymentController.unpayPayment(
            ticket.paymentRecord!.id,
          );
          if (!mounted) return;
          context.pop();
          if (result.isSuccess && (result.result ?? false)) {
            await TicketsUtility.infoDialogWidget(
              context,
              title: context.l10n.success,
              message: context.l10n.unpaySuccess,
            );
            unawaited(controller.dataSource.refresh());
          } else {
            await TicketsUtility.errorDialogWidget(
              context,
              result.error?.errorMessage ?? '',
            );
          }
          if (!mounted) return;
          context.pop();
        },
      );
    }
  }

  void _selectTicket(Ticket ticket) {
    overlayController.type = MessageType.info;
    basketController.toggleSelectedItem(ticket);
  }

  Widget _getFavouritFilterWidget() {
    final moduleName =
        (CashiersearchRouteRegistry.cashiersearchMenuItems.first.routes
                as List<EORoute>)
            .first
            .name ??
        context.l10n.cashier;
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
              tooltip: context.l10n.favouriteFilters,
            );
          },
      menuChildren: [
        if (controller.filterController != null)
          Column(
            children: [
              FavouriteFilters(
                module: moduleName,
                filterController: controller.filterController!,
                dataSource: controller.dataSource,
              ),
            ],
          ),
      ],
    );
  }

  void checkTicketNumberAndIgnoreDate(
    CashierSearchScreenDataSource gridDataSource,
    CashierSearchFiltersController filterController,
  ) {
    final ticketNumberFilter = filterController.filters.value
        .where(
          (element) =>
              element.key == CashierSearchFiltersController.kTicketNumber,
        )
        .firstOrNull;
    if (ticketNumberFilter == null) {
      gridDataSource.isScanned = false;
      final startDateFilter = filterController.filters.value
          .where(
            (element) =>
                element.key == CashierSearchFiltersController.kStartDate,
          )
          .firstOrNull;
      final endDateFilter = filterController.filters.value
          .where(
            (element) => element.key == CashierSearchFiltersController.kEndDate,
          )
          .firstOrNull;

      final statusFilter = filterController.filters.value
          .where(
            (element) =>
                element.key == CashierSearchFiltersController.kTicketStatus,
          )
          .toList();
      if (startDateFilter == null) {
        filterController.addOrUpdateFilter(
          filter: EmrFilterModel<DateTime>(
            key: CashierSearchFiltersController.kStartDate,
            name: 'StartDate',
            enableDelete: false,
            textBuilder: (context, filterModel) =>
                EmrFilter.defaultDateTimeTextBuilder(
                  context,
                  filterModel as EmrFilterModel<DateTime>,
                  prefix: '${context.l10n.from}:',
                ),
          ),
          text: '${context.l10n.from}: ${getNowDateText(context)}',
          value: DateTime.now(),
        );
      } else if (endDateFilter == null) {
        filterController.addOrUpdateFilter(
          filter: EmrFilterModel<DateTime>(
            key: CashierSearchFiltersController.kEndDate,
            name: 'EndDate',
            enableDelete: false,
            textBuilder: (context, filterModel) =>
                EmrFilter.defaultDateTimeTextBuilder(
                  context,
                  filterModel as EmrFilterModel<DateTime>,
                  prefix: '${context.l10n.to}:',
                ),
          ),
          text: '${context.l10n.to}: ${getNowDateText(context)}',
          value: DateTime.now(),
        );
      } else if (statusFilter.isEmpty) {
        filterController.addOrUpdateFilter(
          filter: EmrFilterModel<List<String>>(
            key: CashierSearchFiltersController.kTicketStatus,
            name: 'Status',
            enableDelete: false,
            value: [TicketStatus.active.name.capitalize()],
            text:
                '${context.l10n.status}: '
                '${TicketStatus.active.name.capitalize()}',
          ),
          text:
              '${context.l10n.status}: '
              '${TicketStatus.active.name.capitalize()}',
          value: [TicketStatus.active.name.capitalize()],
        );
      }
    }
  }

  String getNowDateText(BuildContext context1) {
    final locale = Localizations.localeOf(context1).toString();
    return DateFormat.yMd(locale).format(DateTime.now());
  }

  Future<void> onTicketsPaid(List<int> tickets) async {
    await controller.dataSource.refresh();
    paymentController.setSelectedBankAccount(null);
  }

  bool _isSingleParty(List<Ticket> tickets) {
    final onePartyOnly = tickets
        .map((e) => e.account.accountNumber)
        .toList()
        .toSet();
    return onePartyOnly.length == 1;
  }

  bool canSelectAll(List<Ticket> selectedRows) {
    if (selectedRows.isNotEmpty) {
      final isSingleParty = _isSingleParty(selectedRows);
      if (!isSingleParty) {
        EmrModal.showMessageBar(
          context,
          context.l10n.multiplePartyNotAllowed,
          messageType: MessageBarTypes.error,
        );
        return false;
      }
    }
    return true;
  }

  Future<void> downloadUint8ListWeb(Uint8List bytes, String fileName) async {
    final exportService = ExportDataService();
    await exportService.downloadFileWeb(fileName: fileName, data: bytes);
  }

  Future<void> _printAtmQrCode() async {
    final response = await paymentController.printAtmQrCode(
      gridController.selectedRows.value.first.paymentRecord!.id,
    );

    if (!mounted) return;
    unawaited(
      EmrModal.showMessageBar(
        context,
        response.isSuccess
            ? context.l10n.artmQrCodePrinted
            : context.l10n.couldNotPrintAtmQrCode,
        messageType: response.isSuccess
            ? MessageBarTypes.success
            : MessageBarTypes.error,
      ),
    );
  }

  Future<void> _printRemittance() async {
    final ticket = gridController.selectedRows.value.first;
    final mediaService = Provider.of<MediaService>(context, listen: false);

    final mediaApiUrl = Provider.of<AppConfig>(context, listen: false).mediaApi;
    var remittance = ticket.remittanceDetails;

    if (remittance == null) {
      unawaited(EmrDialog.busy(context, titleText: ''));
      final apiResult = await paymentController.reprintRemittanceCopy(
        ticket.paymentRecord!.id,
      );

      if (!mounted) return;
      context.pop();

      if (!apiResult.isSuccess) {
        await EmrDialog.modal<void>(
          context,
          titleText: context.l10n.error,
          acceptLabel: context.l10n.ok,
          builder: (context) => LogWidget(
            errors: apiResult.error!.details.values.toList(),
            warnings: apiResult.warning?.details.values.toList() ?? [],
          ),
          onAccept: () => Navigator.maybePop(context),
        );
        return;
      }
      remittance = apiResult.result;
    }

    if (remittance == null) {
      await TicketsUtility.errorDialogWidget(
        context,
        context.l10n.remitanceCopyNotFound,
      );
      return;
    }

    final url = remittance.mediaUrl.toAbsoluteUrl(mediaApiUrl);

    await EmrDialog.modal<bool>(
      context,
      titleText: context.l10n.remittanceCopy,
      acceptLabel: context.l10n.ok,
      builder: (BuildContext context) {
        return SizedBox(
          width: MediaQuery.sizeOf(context).width * 0.5,
          height: MediaQuery.sizeOf(context).height * 0.7,
          child: FutureBuilder(
            future: mediaService.getImage(url),
            builder: (context, snapshot) {
              if (snapshot.connectionState != ConnectionState.done ||
                  snapshot.connectionState == ConnectionState.waiting) {
                return const Center(
                  child: SizedBox(
                    height: 50,
                    width: 50,
                    child: CircularProgressIndicator(),
                  ),
                );
              }
              if (snapshot.hasError) {
                return Center(child: Text(context.l10n.remitanceCopyNotFound));
              }
              if (snapshot.data == null) {
                return Center(child: Text(context.l10n.remitanceCopyNotFound));
              }
              final file = snapshot.data;
              return Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Tooltip(
                        message: context.l10n.download,
                        child: IconButton(
                          onPressed: () {
                            downloadUint8ListWeb(
                              file!,
                              remittance!.mediaUrl.split('/').last,
                            );
                          },
                          icon: const Icon(Icons.download),
                        ),
                      ),
                    ],
                  ),
                  Expanded(child: EmrPdfViewer(data: file)),
                ],
              );
            },
          ),
        );
      },
    );
  }

  bool _canSelect(Ticket ticket) {
    if (ticket.ticketStatus == TicketStatus.paid) {
      return true;
    }

    var isPayable = true;
    var errorMessage = '';
    final items = [
      ...{
        ...basketController.selectedItems.value,
        ...basketController.basketItems.value,
      },
    ];
    final selectionCheck = [...items, ticket];

    if (!_isSingleParty(selectionCheck)) {
      errorMessage = context.l10n.multiplePartyNotAllowed;
      isPayable = false;
    }

    if (errorMessage.isNotEmpty) {
      ScaffoldMessenger.of(context).removeCurrentSnackBar();
      EmrModal.showMessageBar(
        context,
        errorMessage,
        messageType: MessageBarTypes.error,
      );
    }

    return isPayable;
  }

  Widget _getPaymentBasket() {
    return PaymentBasketWidget<Ticket>(
      controller: basketController,
      onTap: _navigateToBasketDetails,
      paymentController: paymentController,
    );
  }

  void _onSelectedItemChanged() {
    overlayController.buttons.value = [];
    overlayController.initButtons(_getButtonConfigs());
    overlayController.message.value =
        basketController.selectedItems.value.isNotEmpty
        ? '''${context.l10n.ticketCount(basketController.selectedItems.value.length)}'''
              ' ${context.l10n.selected}'
        : null;
    overlayController.evaluateAllButtons();
    gridController.selectedRows.value = [
      ...basketController.selectedItems.value,
    ];
    overlayController.isVisible.value =
        basketController.selectedItems.value.isNotEmpty;
  }

  List<MenuButtonConfig> _getButtonConfigs() {
    if (basketController.selectedItems.value.any(
      (x) => x.ticketStatus == TicketStatus.paid,
    )) {
      return [
        MenuButtonConfig(
          label: context.l10n.paymentDetails,
          icon: Icons.payment_outlined,
          onPressed: () async => showPaymentDetails(
            basketController.selectedItems.value.first.paymentRecord,
            basketController.selectedItems.value.first.currency!,
          ),
          shouldEnable: () => basketController.selectedItems.value.length == 1,
        ),
        MenuButtonConfig(
          label: context.l10n.printRemittance,
          icon: Icons.print,
          onPressed: () async {
            await _printRemittance();
          },
          shouldEnable: () => basketController.selectedItems.value.length == 1,
        ),
        MenuButtonConfig(
          label: context.l10n.printAtmQrCode,
          icon: Icons.print,
          onPressed: () async {
            await _printAtmQrCode();
          },
          shouldEnable: () =>
              basketController.selectedItems.value.length == 1 &&
              [
                PaymentMethod.atm,
                PaymentMethod.digitalWalletWithAtm,
                PaymentMethod.autoChequeWithEncashmentAtm,
              ].contains(
                basketController
                        .selectedItems
                        .value
                        .first
                        .paymentRecord
                        ?.paymentMethod ??
                    PaymentMethod.none,
              ),
        ),
      ];
    }

    return [
      MenuButtonConfig(
        label: context.l10n.addAndGoToBasket,
        icon: Icons.shopping_cart_outlined,
        onPressed: _addAndGoToBasket,
        shouldEnable: () => basketController.selectedItems.value.isNotEmpty,
      ),
      MenuButtonConfig(
        label: context.l10n.addToBasket,
        icon: Icons.add_outlined,
        onPressed: _addBasket,
        shouldEnable: () => basketController.selectedItems.value.isNotEmpty,
      ),
      MenuButtonConfig(
        label: context.l10n.createAdvance,
        icon: Icons.payment_sharp,
        onPressed: _navigateToAddAdvance,
        shouldEnable: () => basketController.selectedItems.value.isNotEmpty,
      ),
      MenuButtonConfig(
        label: context.l10n.editTicket,
        icon: Icons.edit_outlined,
        onPressed: () {
          getRePriceModal(basketController.selectedItems.value.first);
        },
        shouldEnable: () => basketController.selectedItems.value.length == 1,
      ),
    ];
  }

  void _addBasket() {
    basketController.addBasketItems(basketController.selectedItems.value);
    overlayController.type = MessageType.success;
    overlayController.message.value =
        '''${context.l10n.ticketCount(basketController.selectedItems.value.length)}'''
        ' ${context.l10n.addedToBasket}';
    Future.delayed(const Duration(seconds: 3), () {
      overlayController.type = MessageType.info;
      if (!mounted) return;
      overlayController.message.value =
          '''${context.l10n.ticketCount(basketController.selectedItems.value.length)}'''
          ' ${context.l10n.selected}';
    });
  }

  void _addAndGoToBasket() {
    _addBasket();
    _navigateToBasketDetails();
  }

  //Update existing ticket reference with the new reference from response
  //to bypass contains check in emr grid.
  void _updateBasket() {
    basketController.clearSelectedItems();
    final ticket = controller.dataSource.data.value.firstOrNull;
    if (ticket == null) return;
    final updatedTicketsById = <String, Ticket>{
      for (final t in controller.dataSource.data.value) t.id: t,
    };

    for (final oldTicket in basketController.basketItems.value) {
      final updatedTicket = updatedTicketsById[oldTicket.id];
      if (updatedTicket != null) {
        basketController.removeBasketItem(oldTicket);
        basketController.addBasketItem(updatedTicket);
        basketController.addSelectedItem(updatedTicket);
      }
    }
  }

  Future<void> _navigateToAddAdvance() async {
    await context.pushNamed(
      TicketConstants.kAdvanceFormPath,
      params: {'id': TicketConstants.kEmptyId},
      extra: basketController.selectedItems.value,
    );
  }

  void _navigateToBasketDetails() {
    context.goNamed(RoutingPathName.paymentBasket);
  }

  void _updateQuickPayStatus() {
    final data = controller.dataSource.data.value;
    if (data.isEmpty) {
      duplicatePartyAvailable = {};
    }

    for (final accountNumber in data.map(
      (ticket) => ticket.account.accountNumber!,
    )) {
      if (duplicatePartyAvailable.containsKey(accountNumber)) {
        duplicatePartyAvailable[accountNumber] = true;
      } else {
        duplicatePartyAvailable[accountNumber] = false;
      }
    }
  }

  void _filterListener() {
    final filterController =
        controller.filterController! as CashierSearchFiltersController;

    final gridDataSource =
        controller.dataSource as CashierSearchScreenDataSource;
    checkTicketNumberAndIgnoreDate(gridDataSource, filterController);
  }

  Map<String, bool> duplicatePartyAvailable = {};
}
