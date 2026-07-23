import 'package:collection/collection.dart';
import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_core/controllers/settings_controller.dart';
import 'package:emr_one_core/data/emr_query_scope_sort_order.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_crm/screens/pricing-admin/admin_pricing_add_tags_screen.dart';
import 'package:emr_one_crm/screens/pricing-admin/admin_pricing_datasource.dart';
import 'package:emr_one_crm/screens/pricing-admin/admin_pricing_filter_controller.dart';
import 'package:emr_one_crm/screens/pricing-admin/components/collected_tag_icon.dart';
import 'package:emr_one_crm/screens/pricing-admin/components/tag_icon.dart';
import 'package:emr_one_crm/screens/pricing-admin/send_email.dart';
import 'package:emr_one_crm/services/haulage_price_matrix_service.dart';
import 'package:emr_sharedtypes/pricing/delivery_method.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class AdminPricingScreen extends StatefulWidget {
  const AdminPricingScreen({
    required this.coreapiService,
    required this.filterController,
    required this.datasource,
    required this.haulagePriceMatrixService,
    required this.userInfoService,
    required this.settingsController,
    super.key,
  });

  final AdminPricingFilterController filterController;
  final CoreApiService coreapiService;
  final UserInfoService userInfoService;
  final AdminPricingDatasource datasource;
  final HaulagePriceMatrixService haulagePriceMatrixService;
  final SettingsController settingsController;

  @override
  State<AdminPricingScreen> createState() => _AdminPricingScreenState();
}

class _AdminPricingScreenState extends State<AdminPricingScreen> {
  late EmrGridController<AccountPrice> _gridController;
  late EmrQueryLayoutController<AccountPrice> _queryLayoutController;
  final formatter = DateFormat('d-MMMM-yyyy');
  final List<OverlayEntry> activeEntries = [];
  @override
  void initState() {
    super.initState();

    _queryLayoutController = EmrQueryLayoutController<AccountPrice>(
      dataSource: widget.datasource,
      filterController: widget.filterController,
      actionsBuilder: (context) => Row(
        children: [
          IconButton(
            icon: const Icon(Icons.send),
            tooltip: context.l10n.sendPriceList,
            onPressed: () async {
              await EmrModal.showModalBottomSheetOrFlyout<bool>(
                context,
                child: SendEmail(
                  coreapiService: widget.coreapiService,
                  userInfoService: widget.userInfoService,
                ),
              );
            },
          ),
          ValueListenableBuilder(
            valueListenable: _gridController.selectedRows,
            builder:
                (
                  BuildContext context,
                  List<AccountPrice> value,
                  Widget? child,
                ) {
                  return IconButton(
                    onPressed: value.isEmpty
                        ? null
                        : () async {
                            await EmrModal.showModalBottomSheetOrFlyout<bool>(
                              context,
                              child: AdminPricingAddTagsScreen(
                                coreapiService: widget.coreapiService,
                                accountPrices: value,
                                settingsController: widget.settingsController,
                              ),
                            );

                            _gridController.selectedRows.value = [];
                            await _queryLayoutController.dataSource.refresh();
                          },
                    icon: const Icon(Icons.new_label_outlined),
                    tooltip: context.l10n.addTags,
                  );
                },
          ),
        ],
      ),
    );

    widget.datasource.onRefresh = () async {
      _gridController.selectedRows.value = [];
    };

    _gridController = EmrGridController<AccountPrice>(
      data: _queryLayoutController.dataSource.data,
      rowSelectionMode: RowSelectionMode.multiple,
      showLoader: _queryLayoutController.dataSource.loading,
      onSelectedRowsChanged: (selectedRows) {
        if (selectedRows.isEmpty) {
          _gridController.selectedRows.value = [];
          return;
        }

        final selectedUom = selectedRows.first.rate?.uom.name;
        final allMatch = selectedRows.every(
          (row) => row.rate?.uom.name == selectedUom,
        );

        if (allMatch) {
          _gridController.selectedRows.value = selectedRows;
        } else {
          final validRows = [...selectedRows]
            ..removeWhere((row) => row.rate?.uom.name != selectedUom);

          _gridController.selectedRows.value = validRows;
          if (context.mounted) {
            EmrModal.showMessageBar(
              context,
              context.l10n.errMsgUnitMismatchError,
              messageType: MessageBarTypes.error,
            );
          }
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return EmrQueryLayout.grid(
      gridController: _gridController,
      pinnedColumnCount: 3,
      queryLayoutController: _queryLayoutController,
      columns: [
        EmrGridColumn<AccountPrice>(
          headerBuilder: () => _getBoldText(context.l10n.tags),
          width: 50,
          cellBuilder: (rowItem) => rowItem.tags.isNotEmpty
              ? TagIcon(
                  refresh: widget.datasource.refresh,
                  coreApiService: widget.coreapiService,
                  accountPrice: rowItem,
                )
              : Container(),
        ),
        EmrGridColumn<AccountPrice>(
          headerBuilder: () => MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
              onTap: () =>
                  _queryLayoutController.dataSource.sortBy('accountCode'),
              child: Row(
                children: [
                  _getBoldText(context.l10n.account),
                  _sortIcon('accountCode'),
                ],
              ),
            ),
          ),
          cellBuilder: (rowItem) => Tooltip(
            message: rowItem.accountName,
            child: SelectableText(rowItem.accountCode),
          ),
        ),
        EmrGridColumn<AccountPrice>(
          headerBuilder: () => _getBoldText(context.l10n.accountManager),
          cellBuilder: (rowItem) => SelectableText(rowItem.managerName),
        ),
        EmrGridColumn<AccountPrice>(
          headerBuilder: () => MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
              onTap: () => _queryLayoutController.dataSource.sortBy('yardCode'),
              child: Row(
                children: [
                  _getBoldText(context.l10n.yard),
                  _sortIcon('yardCode'),
                ],
              ),
            ),
          ),
          cellBuilder: (rowItem) => SelectableText(rowItem.yardCode),
          width: 70,
        ),
        EmrGridColumn<AccountPrice>(
          headerBuilder: () => MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
              onTap: () =>
                  _queryLayoutController.dataSource.sortBy('publicationName'),
              child: Row(
                children: [
                  _getBoldText(context.l10n.publication),
                  _sortIcon('publicationName'),
                ],
              ),
            ),
          ),
          cellBuilder: (rowItem) => SelectableText(rowItem.publicationName),
          width: 180,
        ),
        EmrGridColumn<AccountPrice>(
          width: 90,
          headerBuilder: () => MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
              onTap: () =>
                  _queryLayoutController.dataSource.sortBy('productCode'),
              child: Row(
                children: [
                  _getBoldText(context.l10n.product),
                  _sortIcon('productCode'),
                ],
              ),
            ),
          ),
          cellBuilder: (rowItem) => Tooltip(
            message: rowItem.productName,
            child: SelectableText(rowItem.product),
          ),
        ),
        EmrGridColumn<AccountPrice>(
          headerBuilder: () => MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
              onTap: () =>
                  _queryLayoutController.dataSource.sortBy('deliveryMethod'),
              child: Row(
                children: [
                  _getBoldText(context.l10n.deliveryMethod),
                  _sortIcon('deliveryMethod'),
                ],
              ),
            ),
          ),
          cellBuilder: (rowItem) =>
              SelectableText(switch (rowItem.deliveryMethod) {
                DeliveryMethod.collected => context.l10n.collected,
                DeliveryMethod.delivered => context.l10n.delivered,
                _ => context.l10n.none,
              }),
          width: 130,
        ),
        EmrGridColumn<AccountPrice>(
          headerBuilder: () => Text(
            context.l10n.resultantPrice,
            style: const TextStyle(fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          width: 200,
          cellBuilder: (rowItem) {
            final tagDelta = rowItem.tagDelta ?? 0;
            final sign = switch (tagDelta) {
              > 0 => '+',
              _ => '',
            };

            return Row(
              children: [
                Visibility(
                  visible: rowItem.tags.any(
                    (item) =>
                        item.accountLocationKeys != null &&
                        item.accountLocationKeys!.isNotEmpty &&
                        (item.effectiveFrom.toLocal().isBefore(
                              DateTime.now(),
                            ) ||
                            (item.effectiveFrom.year == DateTime.now().year &&
                                item.effectiveFrom.month ==
                                    DateTime.now().month &&
                                item.effectiveFrom.day ==
                                    DateTime.now().day)) &&
                        (item.effectiveTo.toLocal().isAfter(DateTime.now()) ||
                            (item.effectiveTo.year == DateTime.now().year &&
                                item.effectiveTo.month ==
                                    DateTime.now().month &&
                                item.effectiveTo.day == DateTime.now().day)),
                  ),
                  child: CollectedTagIcon(
                    refresh: widget.datasource.refresh,
                    coreApiService: widget.coreapiService,
                    accountPrice: rowItem,
                    activeEntries: activeEntries,
                  ),
                ),
                const SizedBox(width: 4),
                SelectableText(
                  style: const TextStyle(fontWeight: FontWeight.bold),
                  tagDelta == 0
                      ? '${rowItem.rate?.value.toStringAsFixed(2)} / ${rowItem.rate?.uom.name.toUpperCase()}'
                      : '${rowItem.resultantPrice?.value.toStringAsFixed(2)} ('
                            '${tagDelta > 0 ? sign : ''}'
                            '${tagDelta.toStringAsFixed(2)}) /'
                            '${rowItem.resultantPrice!.uom.name.toUpperCase()}',
                ),
              ],
            );
          },
        ),
        EmrGridColumn<AccountPrice>(
          headerBuilder: () => _getBoldText(context.l10n.currentIssue),
          cellBuilder: (rowItem) => SelectableText(
            '${rowItem.rate?.value.toStringAsFixed(2)} / ${rowItem.rate?.uom.name.toUpperCase()}',
          ),
          width: 130,
        ),
        EmrGridColumn<AccountPrice>(
          headerBuilder: () => Text(
            context.l10n.previousIssue,
            style: const TextStyle(fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          width: 130,
          cellBuilder: (rowItem) => SelectableText(
            rowItem.previousIssueRate == null
                ? ''
                : '${rowItem.previousIssueRate?.value.toStringAsFixed(2)} / ${rowItem.previousIssueRate?.uom.name.toUpperCase()}',
          ),
        ),
        EmrGridColumn<AccountPrice>(
          headerBuilder: () => Text(
            context.l10n.issueDate,
            style: const TextStyle(fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          cellBuilder: (rowItem) => rowItem.issueDate == null
              ? Container()
              : SelectableText(formatter.format(rowItem.issueDate!.toLocal())),
          width: 140,
        ),
      ],
    );
  }

  Widget _sortIcon(String field) {
    final value = _queryLayoutController.dataSource.queryScope.sortOrder
        .firstWhereOrNull((element) => element.field == field);

    return value == null
        ? const SizedBox.shrink()
        : value.direction == EmrQueryScopeSortOrderDirection.asc
        ? const Icon(Icons.arrow_drop_up)
        : const Icon(Icons.arrow_drop_down);
  }

  static Text _getBoldText(String content) => Text(
    content,
    style: const TextStyle(fontWeight: FontWeight.bold),
    textAlign: TextAlign.center,
  );
}
