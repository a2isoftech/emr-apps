import 'dart:math';

import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_accounts/constants.dart';
import 'package:emr_one_accounts/emr_one_accounts.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/material.dart';

class ProductEWCGrid extends StatefulWidget {
  const ProductEWCGrid({
    required this.account,
    required this.controller,
    super.key,
  });

  final Account? account;
  final ManageProductEWCController controller;

  @override
  State<ProductEWCGrid> createState() => _ProductEWCGridState();
}

class _ProductEWCGridState extends State<ProductEWCGrid> {
  late EmrGridController<ProductEWC> gridController;
  final productEwcKey = GlobalKey<FormState>();
  final Map<String, ManageProductEWCController> _deleteControllers = {};

  ManageProductEWCController _getDeleteController(ProductEWC item) {
    final key = '${item.product.id}_${item.eWCCode}';
    return _deleteControllers.putIfAbsent(
      key,
      () => ManageProductEWCController(
        coreApiService: widget.controller.coreApiService,
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    gridController = EmrGridController<ProductEWC>(
      data: ValueNotifier(widget.account?.productEWCCodes ?? []),
    );
    widget.controller.gridRefreshSignal.addListener(_refreshGridData);
  }

  @override
  void didUpdateWidget(covariant ProductEWCGrid oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.controller != widget.controller) {
      oldWidget.controller.gridRefreshSignal.removeListener(_refreshGridData);
      widget.controller.gridRefreshSignal.addListener(_refreshGridData);
    }
    gridController.data.value = widget.account?.productEWCCodes ?? [];
  }

  @override
  void dispose() {
    for (final c in _deleteControllers.values) {
      c.dispose();
    }
    widget.controller.gridRefreshSignal.removeListener(_refreshGridData);
    super.dispose();
  }

  Future<void> _refreshGridData() async {
    gridController.showLoader.value = true;
    final result = await context.coreApi.accountService.getAccountInfo(
      widget.account?.id ?? '',
      forceLoad: true,
    );
    final newAccount = result.$1;
    if (newAccount != null && mounted) {
      gridController.data.value = newAccount.productEWCCodes;
    }
    if (mounted) {
      gridController.showLoader.value = false;
    }
  }

  void _openProductEWCPopup(
    BuildContext context, {
    required String? productId,
  }) {
    EmrDialog.modal<void>(
      context,
      titleText: context.l10n.editProductEwc,
      acceptLabel: context.l10n.save,
      builder: (_) => Builder(
        builder: (context) {
          widget.controller.showErrorMessage.value = '';

          return Column(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.5,
                height: MediaQuery.of(context).size.height * 0.4,
                child: ManageProductEWCScreen(
                  accountId: widget.account?.id ?? '',
                  productId: productId,
                  controller: widget.controller,
                  productEwcFormKey: productEwcKey,
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.5,
                child: ValueListenableBuilder<String>(
                  valueListenable: widget.controller.showErrorMessage,
                  builder: (_, visible, __) {
                    return visible != ''
                        ? Container(
                            padding: const EdgeInsets.all(Insets.gutter / 2),
                            color: Theme.of(context).colorScheme.error,
                            child: Text(
                              widget.controller.showErrorMessage.value,
                              style: const TextStyle(color: Colors.white),
                            ),
                          )
                        : const SizedBox.shrink();
                  },
                ),
              ),
            ],
          );
        },
      ),
      onAccept: () async {
        final form = productEwcKey.currentState;
        if (form == null || !form.validate()) return;

        widget.controller.account = widget.account;

        final (success, error) = await widget.controller.update();

        if (!mounted) return;

        if (!success) {
          await EmrModal.showMessageBar(
            context,
            error,
            messageType: MessageBarTypes.error,
          );
          return;
        }

        Navigator.of(context).pop();
        widget.controller.gridRefreshSignal.value++;

        await EmrModal.showMessageBar(
          context,
          context.l10n.updateProductEwcSuccessMessage,
        );
      },
    ).whenComplete(widget.controller.reset);
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<List<ProductEWC>>(
      valueListenable: gridController.data,
      builder: (context, productEwcs, _) {
        final visibleRows = min(productEwcs.length + 1,
        accountGridMaxVisibleRows);
        final height = productEwcs.isEmpty
            ? accountGridEmptyHeight
            : (visibleRows * accountGridRowHeight) + (Insets.gutter * 2);

        return SizedBox(
          height: height,
          child: EmrGrid<ProductEWC>(
      controller: gridController,
      alternateBackgroundRowColour: true,
      pinnedRowCount: 1,
      rowHeight: (rowIndex) => accountGridRowHeight,
      noRecordsMessage: Text(context.l10n.noRecordsMessage),
      columns: [
        EmrGridColumn(
          headerBuilder: () => EmrGridHeader(text: context.l10n.product),
          cellBuilder: (item) =>
              Text('${item.product.code} - ${item.product.description}'),
        ),
        EmrGridColumn(
          headerBuilder: () => EmrGridHeader(text: context.l10n.ewcCode),
          cellBuilder: (item) => Text(item.eWCCode),
        ),
        EmrGridColumn(
          headerBuilder: () => EmrGridHeader(text: context.l10n.actions),
          cellBuilder: (item) => Row(
            children: [
              Builder(
                builder: (context) {
                  final deleteController = _getDeleteController(item);
                  return RecordDeleter(
                    controller: deleteController,
                    entityName: context.l10n.productEwc,
                    showIcon: true,
                    onPreDelete: () {
                      deleteController.account = widget.account;
                      deleteController.setProductEWC(item);
                    },
                    onDelete:
                        ({required bool success, required String error}) async {
                          if (!mounted) return;

                          if (!success) {
                            await EmrModal.showMessageBar(
                              context,
                              error,
                              messageType: MessageBarTypes.error,
                            );
                            return;
                          }

                          final key = '${item.product.id}_${item.eWCCode}';
                          _deleteControllers.remove(key)?.dispose();
                          widget.controller.reset();
                          widget.controller.gridRefreshSignal.value++;

                          await EmrModal.showMessageBar(
                            context,
                            context.l10n.deleteProductEwcSuccessMessage,
                          );
                        },
                  );
                },
              ),
            ],
          ),
        ),
      ],
      onRowTapped: (productEWC) =>
          _openProductEWCPopup(context, productId: productEWC.product.id),
          ),
        );
      },
    );
  }
}
