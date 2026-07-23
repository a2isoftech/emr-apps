import 'package:collection/collection.dart';
import 'package:emr_one_cashiersearch/emr_one_cashiersearch.dart';
import 'package:emr_one_core/data/emr_query_scope_sort_order.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/widgets/card/emr_card_controller.dart';
import 'package:emr_sharedtypes/enums/payment_method.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

abstract class AdvancesSearchCommon extends StatefulWidget with OmniSearch {
  AdvancesSearchCommon({super.key});
}

abstract class AdvancesSearchCommonState<TWidget extends AdvancesSearchCommon>
    extends State<TWidget> {
  late final EmrGridController<Advance> gridController;
  late final EmrQueryLayoutController<Advance> controller;
  late PaymentBasketController<Advance> basketController;
  late ITicketPaymentController paymentController;
  late OverlayContextMenuController overlayController;
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    controller = Provider.of<EmrQueryLayoutController<Advance>>(
      context,
      listen: false,
    );

    basketController = Provider.of<PaymentBasketController<Advance>>(
      context,
      listen: false,
    );

    gridController = EmrGridController<Advance>(
      data: controller.dataSource.data,
      selectedRows: basketController.basketItems.value,
      rowSelectionMode: RowSelectionMode.single,
      showLoader: controller.dataSource.loading,
      onSelectedRowsChanged: (selectedRows) {
        basketController.clearSelectedItems();
        if (selectedRows.isNotEmpty) {
          basketController.addSelectedItem(selectedRows.last);
        }
      },
    );

    paymentController = Provider.of<ITicketPaymentController>(
      context,
      listen: false,
    );

    overlayController = Provider.of<OverlayContextMenuController>(
      context,
      listen: false,
    );

    overlayController.isVisible.value = false;

    basketController.selectedItems.removeListener(_onSelectedItemChanged);
    basketController.selectedItems.addListener(_onSelectedItemChanged);

    isLoading = true;
    controller.dataSource.refresh();
  }

  bool _initialized = false;

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
    basketController.selectedItems.removeListener(_onSelectedItemChanged);
    super.dispose();
    currentlySelected = null;
  }

  Widget _addSwitchViewButton() {
    final filterController =
        controller.filterController! as AdvanceFiltersController;
    return Visibility(
      visible: kIsWeb,
      child: ValueListenableBuilder(
        valueListenable: filterController.searchView,
        builder: (parentContext, value, child) {
          return Tooltip(
            message: context.l10n.switchView,
            child: IconButton(
              icon: value == AdvanceSearchView.listView
                  ? const Icon(Icons.apps)
                  : const Icon(Icons.list),
              onPressed: () {
                if (value == AdvanceSearchView.listView) {
                  filterController.searchView.value =
                      AdvanceSearchView.cardView;
                } else if (value == AdvanceSearchView.cardView) {
                  filterController.searchView.value =
                      AdvanceSearchView.listView;
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
        _addCreateNewAdvanceButton(context),
        _addSwitchViewButton(),
        _getPaymentBasket(),
      ],
    );
  }

  Widget body() {
    final filterController =
        controller.filterController! as AdvanceFiltersController;

    final userInfoService = Provider.of<UserInfoService>(context);
    updateSelectedYardDetails(userInfoService.userInfo.getDefaultYard());

    controller.dataSource.onRefresh = () async {
      _updateBasket();
      _onSelectedItemChanged();
      setState(() {
        isLoading = false;
      });
    };

    addDefaultFilters();

    addActions();
    return Row(
      children: [
        Expanded(
          flex: 6,
          child: ValueListenableBuilder(
            valueListenable: filterController.searchView,
            builder: (parentContext, value, child) {
              switch (value) {
                case AdvanceSearchView.cardView:
                  return _getCardView();
                case AdvanceSearchView.listView:
                  return _getGridView();
              }
            },
          ),
        ),
      ],
    );
  }

  void addDefaultFilters() {
    final filterController =
        controller.filterController! as AdvanceFiltersController;
    final yardFilter = filterController.filters.value
        .where(
          (element) => element.key == AdvanceFiltersController.kPayableYard,
        )
        .firstOrNull;

    if (yardFilter == null) {
      filterController.addOrUpdateFilter(
        filter: filterController.payableYardFilter,
        value: filterController.payableYardCodeValue,
        text: filterController.payableYardCodeValue
            .map((yardItem) => yardItem.value)
            .join(', '),
      );
    }
  }

  EmrCardController? currentlySelected;

  Widget _getCardView() {
    if (isLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    return EmrQueryLayout<Advance>.card(
      queryLayoutController: controller,
      buildCard: (controller, advance, index) {
        final isSelected = basketController.selectedItems.value.any(
          (adv) => adv.id == advance.id,
        );

        if (isSelected) {
          currentlySelected = EmrCardController(selected: true);
        }

        return AdvancesCard(
          advance: advance,
          toggleController: isSelected
              ? currentlySelected!
              : EmrCardController(),
          onAdvanceSelected: (advance, toggleController) {
            currentlySelected?.isSelected.value = false;
            if (toggleController?.isSelected.value ?? false) {
              currentlySelected = toggleController;
            } else {
              currentlySelected = null;
            }
            final updatedAdvances = basketController.selectedItems.value;
            if (updatedAdvances.any((adv) => adv.id == advance.id)) {
              controller.selectedRows.value = [];
              basketController.clearSelectedItems();
            } else {
              basketController.clearSelectedItems();
              basketController.addSelectedItem(advance);
              controller.selectedRows.value = [advance];
            }
            _updateOverlay();
          },
        );
      },
    );
  }

  Widget _getGridView() {
    return EmrQueryLayout<Advance>.grid(
      gridController: gridController,
      queryLayoutController: controller,
      columns: [
        columnBuilder(
          headerText: context.l10n.payableYard,
          width: 55,
          getSortIcon: () => _sortIcon('payableYardCode'),
          onSortTap: () => controller.dataSource.sortBy('payableYardCode'),
          cellText: (rowItem) => rowItem.payableYard?.yardCode ?? '',
        ),
        columnBuilder(
          width: 70,
          headerText: context.l10n.accountNumber,
          getSortIcon: () => _sortIcon('payableYardCode'),
          cellText: (rowItem) => rowItem.account?.code ?? '',
        ),
        columnBuilder(
          headerText: context.l10n.status,
          width: 60,
          getSortIcon: () => _sortIcon('advanceStatus'),
          onSortTap: () => controller.dataSource.sortBy('advanceStatus'),
          cellText: (rowItem) => rowItem.status.name.toUpperCase(),
        ),
        columnBuilder(
          headerText: context.l10n.companyName,
          width: 150,
          getSortIcon: () => _sortIcon('companyName'),
          cellText: (rowItem) => rowItem.company?.fullName ?? '',
        ),
        columnBuilder(
          headerText: context.l10n.term,
          getSortIcon: () => _sortIcon('term'),
          cellText: (rowItem) => rowItem.term.termType.localizedLabel(context),
        ),
        columnBuilder(
          headerText: context.l10n.reason,
          width: 60,
          getSortIcon: () => _sortIcon('reason'),
          cellText: (rowItem) => rowItem.reason.localizedLabel(context),
        ),
        columnBuilderWidget(
          headerText: context.l10n.toBePaidInFullBy,
          getSortIcon: () => _sortIcon('paidInFullDueDate'),
          onSortTap: () => controller.dataSource.sortBy('paidInFullDueDate'),
          //headerAlignment: MainAxisAlignment.end,
          cellBuilder: (rowItem) => Row(
            //mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(DateFormat.yMd().format(rowItem.paidInFullDueDate!)),
            ],
          ),
        ),
        columnBuilderWidget(
          width: 50,
          headerText: context.l10n.amount,
          getSortIcon: () => _sortIcon('advanceValue'),
          headerAlignment: MainAxisAlignment.center,
          cellBuilder: (rowItem) => Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                TicketsUtility.formatCurrency(
                  context,
                  rowItem.paymentAmount.currencyCode,
                  rowItem.paymentAmount.amount,
                ),
              ),
            ],
          ),
        ),
        columnBuilderWidget(
          width: 50,
          headerText: context.l10n.paidToDate,
          getSortIcon: () => _sortIcon('paidToDate'),
          onSortTap: () => controller.dataSource.sortBy('paidToDate'),
          headerAlignment: MainAxisAlignment.center,
          cellBuilder: (rowItem) => Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                TicketsUtility.formatCurrency(
                  context,
                  rowItem.paymentAmount.currencyCode,
                  rowItem.paymentAmount.amount -
                      rowItem.paymentInfo.outstandingBalance,
                ),
              ),
            ],
          ),
        ),
        columnBuilderWidget(
          headerText: context.l10n.outstandingAmount,
          getSortIcon: () => _sortIcon('outstanding'),
          onSortTap: () => controller.dataSource.sortBy('outstanding'),
          headerAlignment: MainAxisAlignment.end,
          cellBuilder: (rowItem) => Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                TicketsUtility.formatCurrency(
                  context,
                  rowItem.paymentAmount.currencyCode,
                  rowItem.paymentInfo.outstandingBalance,
                ),
              ),
            ],
          ),
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

  EmrGridColumn<Advance> columnBuilder({
    required String headerText,
    required String Function(Advance) cellText,
    void Function()? onSortTap,
    void Function(String? id)? onCellTap,
    Widget Function()? getSortIcon,
    int flex = 4,
    double width = 100,
    MainAxisAlignment headerAlignment = MainAxisAlignment.start,
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
      headerAlignment: headerAlignment,
    );
  }

  EmrGridColumn<Advance> columnBuilderWidget({
    required String headerText,
    required Widget Function(Advance) cellBuilder,
    void Function()? onSortTap,
    void Function(String? id)? onCellTap,
    Widget Function()? getSortIcon,
    int flex = 4,
    double width = 100,
    MainAxisAlignment headerAlignment = MainAxisAlignment.start,
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
            mainAxisAlignment: headerAlignment,
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

  FilledButton _addCreateNewAdvanceButton(BuildContext context) {
    return FilledButton(
      style: EmrButtonStyles.cta(),
      onPressed: () {
        context.pushNamed(
          TicketConstants.kAdvanceFormPath,
          params: {'id': TicketConstants.kEmptyId},
        );
      },
      child: Text(context.l10n.createAdvance),
    );
  }

  List<MenuButtonConfig> _getButtonConfigs() {
    return [
      MenuButtonConfig(
        label: context.l10n.addAndGoToBasket,
        icon: Icons.shopping_cart_outlined,
        onPressed: _addAndGoToBasket,
        shouldEnable: () => !basketController.selectedItems.value.any(
          (advance) => advance.status != AdvanceStatus.draft,
        ),
      ),
      MenuButtonConfig(
        label: context.l10n.addToBasket,
        icon: Icons.add_outlined,
        onPressed: _addToBasket,
        shouldEnable: () => !basketController.selectedItems.value.any(
          (advance) => advance.status != AdvanceStatus.draft,
        ),
      ),
      MenuButtonConfig(
        label: context.l10n.editAdvance,
        icon: Icons.edit_outlined,
        onPressed: _navigateToAdvanceEdit,
        shouldEnable: () => basketController.selectedItems.value.length == 1,
      ),
    ];
  }

  void _updateOverlay() {
    final updatedAdvances = basketController.selectedItems.value;
    overlayController.message.value = updatedAdvances.isNotEmpty
        ? '${context.l10n.advanceCount(updatedAdvances.length)}'
              ' ${context.l10n.selected}'
        : null;
    overlayController.evaluateAllButtons();
    overlayController.isVisible.value = updatedAdvances.isNotEmpty;
  }

  void _navigateToAdvanceEdit() {
    final value = basketController.selectedItems.value.first.id;
    context.pushNamed(TicketConstants.kAdvanceFormPath, params: {'id': value});
  }

  void _addToBasket() {
    basketController.clearBasketItems();
    basketController.addBasketItems(basketController.selectedItems.value);
    overlayController.type = MessageType.success;
    overlayController.message.value =
        '''${context.l10n.advanceCount(basketController.selectedItems.value.length)}'''
        ' ${context.l10n.addedToBasket}';
    Future.delayed(const Duration(seconds: 3), () {
      overlayController.type = MessageType.info;
      if (!mounted) return;
      overlayController.message.value =
          '''${context.l10n.advanceCount(basketController.selectedItems.value.length)}'''
          ' ${context.l10n.selected}';
    });
  }

  void _addAndGoToBasket() {
    _addToBasket();
    _navigateToBasketDetails();
  }

  Widget _getPaymentBasket() {
    return PaymentBasketWidget<Advance>(
      controller: basketController,
      paymentController: paymentController,
      onTap: _navigateToBasketDetails,
    );
  }

  void _navigateToBasketDetails() {
    context.goNamed(RoutingPathName.advancePaymentBasket);
  }

  void _onSelectedItemChanged() {
    overlayController.message.value =
        basketController.selectedItems.value.isNotEmpty
        ? '''${context.l10n.advanceCount(basketController.selectedItems.value.length)} ${context.l10n.selected}'''
        : null;
    overlayController.evaluateAllButtons();
    if (basketController.selectedItems.value.isNotEmpty) {
      gridController.selectedRows.value = [
        basketController.selectedItems.value.last,
      ];
    } else {
      gridController.selectedRows.value = [];
    }
    overlayController.isVisible.value =
        basketController.selectedItems.value.isNotEmpty;
  }

  //Update existing ticket reference with the new reference from response
  //to bypass contains check in emr grid.
  void _updateBasket() {
    basketController.clearSelectedItems();
    final advance = controller.dataSource.data.value.firstOrNull;
    if (advance == null) return;

    final updatedAdvanceById = <String, Advance>{
      for (final t in controller.dataSource.data.value) t.id: t,
    };

    for (final oldAdvance in basketController.basketItems.value) {
      final updatedAdvance = updatedAdvanceById[oldAdvance.id];
      if (updatedAdvance != null) {
        basketController.removeBasketItem(oldAdvance);
        basketController.addBasketItem(updatedAdvance);
        basketController.addSelectedItem(updatedAdvance);
      }
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
}
