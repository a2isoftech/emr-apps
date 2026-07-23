import 'dart:math';

import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_accounts/constants.dart';
import 'package:emr_one_accounts/emr_one_accounts.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class LoyaltyCardsGrid extends StatefulWidget {
  const LoyaltyCardsGrid({
    required this.account,
    required this.controller,
    super.key,
  });

  final Account? account;
  final ManageLoyaltyCardsController controller;

  @override
  State<LoyaltyCardsGrid> createState() => _LoyaltyCardsGridState();
}

class _LoyaltyCardsGridState extends State<LoyaltyCardsGrid> {
  late EmrGridController<LoyaltyCard> gridController;
  final cardsFormKey = GlobalKey<FormState>();
  final FocusNode _gridFocusNode = FocusNode();
  final Map<String, ManageLoyaltyCardsController> _deleteControllers = {};

  ManageLoyaltyCardsController _getDeleteController(LoyaltyCard item) {
    return _deleteControllers.putIfAbsent(
      item.code ?? '',
      () => ManageLoyaltyCardsController(
        coreApiService: widget.controller.coreApiService,
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    gridController = EmrGridController<LoyaltyCard>(
      data: ValueNotifier(widget.account?.loyaltyCards ?? []),
    );
    widget.controller.gridRefreshSignal.addListener(_refreshGridData);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) {
        _gridFocusNode.requestFocus();
      }
    });
  }

  @override
  void didUpdateWidget(covariant LoyaltyCardsGrid oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.controller != widget.controller) {
      oldWidget.controller.gridRefreshSignal.removeListener(_refreshGridData);
      widget.controller.gridRefreshSignal.addListener(_refreshGridData);
    }
    if (oldWidget.account?.id != widget.account?.id) {
      gridController.data.value = widget.account?.loyaltyCards ?? [];
    }
  }

  @override
  void dispose() {
    for (final c in _deleteControllers.values) {
      c.dispose();
    }
    widget.controller.gridRefreshSignal.removeListener(_refreshGridData);
    _gridFocusNode.dispose();
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
      gridController.data.value = newAccount.loyaltyCards;
    }
    if (mounted) {
      gridController.showLoader.value = false;
    }
  }

  void _openLoyaltyCardPopup(
    BuildContext context, {
    required String? cardCode,
  }) {
    EmrDialog.modal<void>(
      context,
      titleText: context.l10n.editLoyaltyCard,
      acceptLabel: context.l10n.saveButtonText,
      builder: (_) {
        widget.controller.showErrorMessage.value = '';
        return Column(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.4,
              height: MediaQuery.of(context).size.height * 0.4,
              child: ManageLoyaltyCardScreen(
                accountId: widget.account?.id ?? '',
                cardCode: cardCode,
                controller: widget.controller,
                cardsFormKey: cardsFormKey,
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.4,
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
      onAccept: () async {
        final form = widget.controller.cardsFormKey?.currentState;
        if (form == null || !form.validate()) return;

        widget.controller.account = widget.account;

        final (success, error) = await widget.controller.update();

        if (!mounted) return;

        if (!success) {
          widget.controller.showErrorMessage.value = error;
          return;
        }

        Navigator.of(context).pop();
        widget.controller.gridRefreshSignal.value++;

        await EmrModal.showMessageBar(
          context,
          context.l10n.loyaltyCardUpdateSuccessMessage,
        );
      },
    ).whenComplete(() {
      widget.controller.reset();
    });
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<List<LoyaltyCard>>(
      valueListenable: gridController.data,
      builder: (context, loyaltyCards, _) {
        final height = loyaltyCards.isEmpty
            ? accountGridEmptyHeight
            : min(loyaltyCards.length + 1, accountGridMaxVisibleRows)
            * accountGridRowHeight;

        return SizedBox(
          height: height,
          child: Focus(
            focusNode: _gridFocusNode,
            child: EmrGrid<LoyaltyCard>(
        controller: gridController,
        alternateBackgroundRowColour: true,
        pinnedRowCount: 1,
        rowHeight: (rowIndex) => accountGridRowHeight,
        noRecordsMessage: Text(context.l10n.noRecordsMessage),
        columns: [
          EmrGridColumn(
            headerBuilder: () => EmrGridHeader(text: context.l10n.code),
            cellBuilder: (item) => Text(item.code ?? ''),
          ),
          EmrGridColumn(
            headerBuilder: () => EmrGridHeader(text: context.l10n.issueDate),
            cellBuilder: (item) => Text(
              item.issueDate != null
                  ? DateFormat.yMd(
                      Localizations.localeOf(context).toString(),
                    ).format(item.issueDate!)
                  : '',
            ),
          ),
          EmrGridColumn(
            headerBuilder: () => EmrGridHeader(text: context.l10n.actions),
            cellBuilder: (item) => Builder(
              builder: (context) {
                final deleteController = _getDeleteController(item);
                return RecordDeleter(
                  controller: deleteController,
                  entityName: context.l10n.loyaltycard,
                  showIcon: true,
                  onPreDelete: () {
                    deleteController.account = widget.account;
                    deleteController.setLoyaltyCard(item);
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
                        _deleteControllers.remove(item.code ?? '')?.dispose();
                        widget.account?.loyaltyCards.removeWhere(
                          (c) => c.code == item.code,
                        );
                        widget.controller.reset();
                        widget.controller.gridRefreshSignal.value++;

                        await EmrModal.showMessageBar(
                          context,
                          context.l10n.loyaltyCardDeleteSuccessMessage,
                        );
                      },
                );
              },
            ),
          ),
        ],
        onRowTapped: (item) =>
            _openLoyaltyCardPopup(context, cardCode: item.code),
        ),
      ),
        );
      },
    );
  }
}
