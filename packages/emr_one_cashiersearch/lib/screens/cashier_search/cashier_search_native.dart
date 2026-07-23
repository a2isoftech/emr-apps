import 'package:emr_one_cashiersearch/emr_one_cashiersearch.dart';
import 'package:emr_one_cashiersearch/screens/cashier_search/cashier_search_common.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';

class CashierSearchNative extends CashierSearchCommon {
  CashierSearchNative({required super.controller, super.key});

  @override
  State<CashierSearchNative> createState() => _CashierSearchNativeState();
}

class _CashierSearchNativeState
    extends CashierSearchCommonState<CashierSearchNative> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: GestureDetector(
          onVerticalDragStart: (details) {
            final startY = details.globalPosition.dy;
            final screenHeight = MediaQuery.sizeOf(context).height;
            final bottomThreshold = screenHeight * 0.10; // bottom 15% area

            if (startY > screenHeight - bottomThreshold) {
              showOptionsMenu(context);
            }
          },
          child: Column(
            children: [
              Flexible(
                child: ContextMenuWrapperWidget(
                  overlayController: overlayController,
                  child: body(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Future<void> onTicketsPaid(List<int> tickets) async {
    if (useMobileView.value) {
      widget.controller.dataSource.loading.value = true;
      final gridDataSource =
          widget.controller.dataSource as CashierSearchScreenDataSource;
      gridDataSource.isScanned = false;
      final paidTickets = tickets.map((x) => x.toString());
      final ticketNumbers = gridDataSource.preserveScannedData
          .map((e) => e.ticketNumber.toString())
          .toList();
      ticketNumbers.removeWhere(paidTickets.contains);
      if (ticketNumbers.isNotEmpty) {
        gridDataSource.queryScope.filters[CashierSearchFiltersController
                .kTicketNumber] =
            ticketNumbers;

        await gridDataSource.refresh();
      } else {
        gridDataSource.data.value = [];
      }
      clearPreservedData(tickets);
      gridController.selectedRows.value = [];
      widget.controller.dataSource.loading.value = false;
      paymentController.setSelectedBankAccount(null);
    } else {
      await super.onTicketsPaid(tickets);
    }
  }

  void clearPreservedData(List<int> tickets) {
    final gridDataSource =
        widget.controller.dataSource as CashierSearchScreenDataSource;
    gridDataSource.preserveData.removeWhere(
      (e) => tickets.contains(e.ticketNumber),
    );
    gridDataSource.preserveScannedData.removeWhere(
      (e) => tickets.contains(e.ticketNumber),
    );
  }

  @override
  Widget addScanButton() {
    if (useMobileView.value) {
      return Tooltip(
        message: 'Scan to Search',
        child: OutlinedButton(
          style: OutlinedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(EmrCard.cardRadius),
            ),
          ),
          onPressed: () async {
            final scannedCode = await ScanHelper.startInlineCodeScan(
              context,
              title: 'Scan',
            );
            if (scannedCode != null && scannedCode.isNotEmpty) {
              scanTicketNumber(scannedCode);
            }
          },
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.qr_code),
              SizedBox(width: Insets.gutter / 2),
              Text('Scan'),
            ],
          ),
        ),
      );
    }
    return super.addScanButton();
  }

  @override
  void scanTicketNumber(String? scannedCode) {
    if (scannedCode?.isNotEmpty ?? false) {
      if (useMobileView.value) {
        final gridDataSource =
            widget.controller.dataSource as CashierSearchScreenDataSource;
        gridDataSource.isScanned = true;
        final existingData = gridDataSource.data.value.map(
          (e) => e.ticketNumber.toString(),
        );
        final filters = scannedCode!.split('/');
        if (filters.last.isEmpty || filters.first.isEmpty) {
          return;
        }
        if (existingData.contains(filters.last)) {
          return;
        }

        gridDataSource.queryScope.filters[CashierSearchFiltersController
            .kTicketNumber] = [
          filters.last,
        ];
        gridDataSource.queryScope.filters[CashierSearchFiltersController
                .kYard] =
            filters.first;
        _updateYardFilterOnScan(filters.first);
        gridDataSource.refresh();
      } else {
        super.scanTicketNumber(scannedCode);
      }
    }
  }

  void _updateYardFilterOnScan(String updatedYard) {
    final filterController =
        widget.controller.filterController! as CashierSearchFiltersController;
    filterController.filters.value.add(
      EmrFilterModel<List<String>>(
        key: CashierSearchFiltersController.kYard,
        name: 'Yard',
        value: [updatedYard],
        text: updatedYard,
        enableDelete: false,
      ),
    );
  }

  @override
  void mobileViewConfiguration() {
    if (useMobileView.value) {
      final gridDataSource =
          widget.controller.dataSource as CashierSearchScreenDataSource;
      gridDataSource.supportsPaging = false;
    }
  }

  void addScannedToBasket() {
    final gridDataSource =
        widget.controller.dataSource as CashierSearchScreenDataSource;
    if (useMobileView.value && gridDataSource.isScanned) {
      gridDataSource.preserveData = [];
      gridDataSource.preserveScannedData.addAll([...gridDataSource.data.value]);
      gridDataSource.data.value = [...gridDataSource.preserveScannedData];
      if (gridDataSource.data.value.length > 1) {
        if (canSelectAll(gridDataSource.data.value)) {
          gridController.selectedRows.value = [...gridDataSource.data.value];
          gridDataSource.preserveData.addAll(gridController.selectedRows.value);
        } else {
          gridController.selectedRows.value = [];
          gridDataSource.isScanned = false;
          final lastTicketScanned = gridDataSource.data.value.last;
          gridDataSource.preserveScannedData = [lastTicketScanned];
          gridDataSource.data.value = [lastTicketScanned];
          return;
        }
      }
      gridDataSource.isScanned = false;
      return;
    }
    gridController.selectedRows.value = [];
  }

  Future<void> showOptionsMenu(BuildContext context) async {
    await showModalBottomSheet<void>(
      context: context,
      backgroundColor: Theme.of(context).colorScheme.outlineVariant,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(Insets.gutter),
          topRight: Radius.circular(Insets.gutter),
        ),
      ),
      builder: (context1) {
        return Wrap(
          children: [
            InkWell(
              overlayColor: const WidgetStatePropertyAll(Colors.transparent),
              onTap: () async {
                if (context1.mounted) {
                  Navigator.pop(context1);
                  await context1.pushNamed(RoutingPathName.ticketPayments);
                }
              },
              child: Padding(
                padding: const EdgeInsets.all(Insets.gutter / 2),
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(Insets.gutter / 4),
                      height: 46,
                      width: 46,
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.surface,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Theme.of(
                            context,
                          ).colorScheme.onSurface.withValues(alpha: 0.5),
                        ),
                      ),
                      child: Icon(
                        Icons.lock_clock,
                        color: Theme.of(
                          context,
                        ).colorScheme.onSurface.withValues(alpha: 0.5),
                        size: 24,
                      ),
                    ),
                    const SizedBox(width: Insets.gutter),
                    Text(
                      'Payment Authorisations',
                      style: Theme.of(context).textTheme.labelMedium!.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(Insets.gutter / 4),
              child: Row(
                children: [
                  PaymentBasketWidget<Ticket>(
                    onTap: () {
                      context1.pop();
                      context1.goNamed(RoutingPathName.paymentBasket);
                    },
                    controller: basketController,
                    paymentController: paymentController,
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
