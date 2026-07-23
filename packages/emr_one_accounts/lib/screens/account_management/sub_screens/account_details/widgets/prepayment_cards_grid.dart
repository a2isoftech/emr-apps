import 'dart:math';

import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_accounts/constants.dart';
import 'package:emr_one_accounts/emr_one_accounts.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/material.dart';

class PrepaymentCardsGrid extends StatefulWidget {
  const PrepaymentCardsGrid({
    required this.account,
    required this.controller,
    super.key,
  });

  final Account? account;
  final ManagePrepaymentCardsController controller;

  @override
  State<PrepaymentCardsGrid> createState() => _PrepaymentCardsGridState();
}

class _PrepaymentCardsGridState extends State<PrepaymentCardsGrid> {
  late final EmrGridController<PrepaymentCard> gridController;
  final double maxWidth = 147;
  final prepayCardsFormKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    widget.controller.setAllowedYards();
    gridController = EmrGridController<PrepaymentCard>(
      data: ValueNotifier(widget.account?.prepaymentCards ?? []),
    );
    widget.controller.gridRefreshSignal.addListener(_refreshGridData);
  }

  @override
  void didUpdateWidget(covariant PrepaymentCardsGrid oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.controller != widget.controller) {
      oldWidget.controller.gridRefreshSignal.removeListener(_refreshGridData);
      widget.controller.gridRefreshSignal.addListener(_refreshGridData);
    }
    gridController.data.value = widget.account?.prepaymentCards ?? [];
  }

  @override
  void dispose() {
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
      gridController.data.value = newAccount.prepaymentCards;
    }
    if (mounted) {
      gridController.showLoader.value = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<List<PrepaymentCard>>(
      valueListenable: gridController.data,
      builder: (context, cards, _) {
        final height = cards.isEmpty
            ? accountGridEmptyHeight
            : min(cards.length + 1, accountGridMaxVisibleRows)
            * accountGridRowHeight;

        return SizedBox(
          height: height,
          child: EmrGrid<PrepaymentCard>(
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
          headerBuilder: () => EmrGridHeader(text: context.l10n.panDigits),
          cellBuilder: (item) => Text(item.panDigits?.toString() ?? ''),
        ),
        EmrGridColumn(
          headerBuilder: () => EmrGridHeader(text: context.l10n.issuerType),
          cellBuilder: (item) {
            final raw = item.issuerType;
            if (raw == null || raw.isEmpty) {
              return const Text('');
            }

            final label = Enum$PrepayCardIssuer.fromJson(
              raw.contains('.') ? raw.split('.').last : raw.trim(),
            ).displayString(context);
            return Text(label.isNotEmpty ? label : raw);
          },
        ),
        EmrGridColumn(
          headerBuilder: () => EmrGridHeader(text: context.l10n.active),
          cellBuilder: (item) => Text(
            item.active != null && (item.active ?? false) ? 'Yes' : 'No',
          ),
        ),
        EmrGridColumn(
          headerBuilder: () => EmrGridHeader(text: context.l10n.actions),
          cellBuilder: (item) => Row(
            children: [
              Visibility(
                visible: item.active ?? false,
                child: Expanded(
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: ConstrainedBox(
                      constraints: BoxConstraints(maxWidth: maxWidth),
                      child: Tooltip(
                        message: context.l10n.replaceCard,
                        child: FilledButton(
                          onPressed: () => EmrDialog.modal<void>(
                            context,
                            titleText: context.l10n.replacePrepayCard,
                            acceptLabel: context.l10n.save,
                            builder: (context) => ScaffoldMessenger(
                              child: Builder(
                                builder: (context) {
                                  widget.controller.showErrorMessage.value = '';
                                  return SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width * 0.6,
                                    height:
                                        MediaQuery.of(context).size.height *
                                        0.4,
                                    child: ManagePrepaymentCardScreen(
                                      accountId: widget.account?.id ?? '',
                                      managePrepayCardController:
                                          widget.controller,
                                      prepayCardsFormKey: prepayCardsFormKey,
                                      cardCode: item.code,
                                      isReplaceAction: ValueNotifier(true),
                                    ),
                                  );
                                },
                              ),
                            ),
                            onAccept: () async {
                              if (prepayCardsFormKey.currentState?.validate() ??
                                  true) {
                                final (success, error) = await widget.controller
                                    .replace();
                                if (success == false) {
                                  widget.controller.showErrorMessage.value =
                                      error;

                                  return;
                                }
                                widget.controller.reset();
                                widget.controller.gridRefreshSignal.value++;
                                context.pop();
                              } else {
                                widget.controller.isFormValid.value = false;
                              }
                            },
                          ),
                          style: EmrButtonStyles.cta(),
                          child: Text(
                            context.l10n.replaceCard,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
      onRowTapped: (prepaymentCard) => EmrDialog.modal<void>(
        context,
        buttons: {EmrDialogButton.accept},
        titleText: context.l10n.viewPrepayCard,
        acceptLabel: context.l10n.ok,
        builder: (context) => ScaffoldMessenger(
          child: Builder(
            builder: (context) {
              widget.controller.showErrorMessage.value = '';
              return SizedBox(
                width: MediaQuery.of(context).size.width * 0.6,
                height: MediaQuery.of(context).size.height * 0.4,
                child: ManagePrepaymentCardScreen(
                  accountId: widget.account?.id ?? '',
                  managePrepayCardController: widget.controller,
                  prepayCardsFormKey: prepayCardsFormKey,
                  cardCode: prepaymentCard.code,
                  isReplaceAction: ValueNotifier(false),
                ),
              );
            },
          ),
        ),
      ),
          ),
        );
      },
    );
  }
}
