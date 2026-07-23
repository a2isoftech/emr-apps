import 'dart:async';
import 'dart:math';

import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_accounts/constants.dart';
import 'package:emr_one_accounts/emr_one_accounts.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/material.dart';

class BankAccountsGrid extends StatefulWidget {
  const BankAccountsGrid({
    required this.account,
    required this.controller,
    super.key,
  });

  final Account? account;
  final ManageBankAccountDetailsController controller;

  @override
  State<BankAccountsGrid> createState() => _BankAccountsGridState();
}

class _BankAccountsGridState extends State<BankAccountsGrid> {
  late final EmrGridController<BankAccount> gridController;
  final bankAccountDetailsFormKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();

    gridController = EmrGridController<BankAccount>(
      data: ValueNotifier(widget.account?.bankAccounts ?? []),
    );

    widget.controller.gridRefreshSignal.addListener(_refreshGridData);
  }

  @override
  void didUpdateWidget(covariant BankAccountsGrid oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.controller != widget.controller) {
      oldWidget.controller.gridRefreshSignal.removeListener(_refreshGridData);
      widget.controller.gridRefreshSignal.addListener(_refreshGridData);
    }
    gridController.data.value = widget.account?.bankAccounts ?? [];
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
      gridController.data.value = newAccount.bankAccounts ?? [];
    }
    if (mounted) {
      gridController.showLoader.value = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<List<BankAccount>>(
      valueListenable: gridController.data,
      builder: (context, bankAccounts, _) {
        final height = bankAccounts.isEmpty
            ? accountGridEmptyHeight
            : min(bankAccounts.length + 1, accountGridMaxVisibleRows)
            * accountGridRowHeight;

        return SizedBox(
          height: height,
          child: EmrGrid<BankAccount>(
            controller: gridController,
            alternateBackgroundRowColour: true,
            pinnedRowCount: 1,
            rowHeight: (rowIndex) => accountGridRowHeight,
            noRecordsMessage: Text(context.l10n.noRecordsMessage),
            columns: [
              EmrGridColumn(
                headerBuilder: () =>
                    EmrGridHeader(text: context.l10n.bankAccountType),
                cellBuilder: (item) {
                  final selectedAccountType =
                      Enum$BankAccountType.fromJson(item.bankAccountType
                      ?? Enum$BankAccountType.NONE.toJson())
                      .displayString(context);
                  return Text(selectedAccountType);
                },
              ),
              EmrGridColumn(
                headerBuilder: () =>
                    EmrGridHeader(text: context.l10n.accountName),
                cellBuilder: (item) => Text(item.accountHolderName ?? ''),
              ),
              EmrGridColumn(
                headerBuilder: () =>
                    EmrGridHeader(text: context.l10n.bankName),
                cellBuilder: (item) => Text(item.bankName ?? ''),
              ),
            ],
            onRowTapped: (bankAccount) => EmrDialog.modal<void>(
              context,
              titleText: context.l10n.editBankAccount,
              acceptLabel: context.l10n.save,
              builder: (context) => ScaffoldMessenger(
                child: Builder(
                  builder: (context) {
                    widget.controller.showErrorMessage.value = '';
                    return Column(
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.6,
                          height: MediaQuery.of(context).size.height * 0.6,
                          child: ManageBankAccountDetailsScreen(
                            accountId: widget.account?.id ?? '',
                            controller: widget.controller,
                            bankAccountDetailsFormKey:
                                bankAccountDetailsFormKey,
                            isEditing: true,
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.6,
                          child: ValueListenableBuilder<String>(
                            valueListenable:
                                widget.controller.showErrorMessage,
                            builder: (_, visible, __) {
                              return visible != ''
                                  ? Container(
                                      padding: const EdgeInsets.all(
                                        Insets.gutter / 2,
                                      ),
                                      color:
                                          Theme.of(context).colorScheme.error,
                                      child: Text(
                                        widget
                                            .controller
                                            .showErrorMessage
                                            .value,
                                        style: const TextStyle(
                                          color: Colors.white,
                                        ),
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
              ),
              onAccept: () async {
                if (bankAccountDetailsFormKey.currentState?.validate() ??
                    true) {
                  final (success, error) =
                      await widget.controller.update();
                  if (success == false) {
                    widget.controller.showErrorMessage.value = error;
                    return;
                  }
                  widget.controller.reset();
                  if (context.mounted) {
                    context.pop();
                    unawaited(
                      EmrModal.showMessageBar(
                        context,
                        context.l10n.updatedSuccessfully,
                      ),
                    );
                    widget.controller.gridRefreshSignal.value++;
                  }
                } else {
                  widget.controller.isFormValid.value = false;
                }
              },
            ),
          ),
        );
      },
    );
  }
}
