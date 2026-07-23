import 'package:emr_one_cashiersearch/emr_one_cashiersearch.dart';
import 'package:emr_one_core/extensions/extensions.dart';
import 'package:emr_sharedtypes/enums/payment_method.dart';
import 'package:flutter/material.dart';

class PaymentModeLargeButton extends StatefulWidget {
  const PaymentModeLargeButton({
    required this.isSelected,
    required this.mode,
    required this.accountDetails,
    required this.paymentController,
    this.onSelect,
    this.onEdit,
    this.showBorder = true,
    this.canEdit = false,
    super.key,
    this.paymentMethodName,
  });

  final bool isSelected;
  final bool showBorder;
  final bool canEdit;
  final PaymentMethod mode;
  final void Function()? onSelect;
  final void Function(PaymentMethod mode)? onEdit;
  final Account? accountDetails;
  final ITicketPaymentController paymentController;
  final String? paymentMethodName;

  @override
  State<PaymentModeLargeButton> createState() => _PaymentModeLargeButtonState();
}

class _PaymentModeLargeButtonState extends State<PaymentModeLargeButton> {
  final editPayment = ValueNotifier<bool>(false);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Column(
      children: [
        Tooltip(
          message: TicketsUtility.getPaymentName(widget.mode, context),
          child: InkWell(
            onTap: () => widget.onSelect?.call(),
            child: DecoratedBox(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: widget.showBorder
                    ? Border.all(
                        color: widget.isSelected
                            ? CashierSearchColors.green
                            : CashierSearchColors.disabledBackground,
                        strokeAlign: BorderSide.strokeAlignOutside,
                        width: widget.isSelected ? 2 : 1,
                      )
                    : null,
                color: CashierSearchColors.background,
              ),
              child: Center(
                child: ListTile(
                  mouseCursor: MouseCursor.defer,
                  dense: true,
                  shape: const RoundedRectangleBorder(),
                  visualDensity: VisualDensity.compact,
                  leading: CircleAvatar(
                    backgroundColor: widget.isSelected
                        ? CashierSearchColors.green
                        : Theme.of(context).colorScheme.onSurface,
                    child: TicketsUtility.getPaymentIcon(
                      widget.mode,
                      widget.isSelected
                          ? null
                          : Theme.of(context).colorScheme.surface,
                    ),
                  ),
                  trailing: widget.canEdit
                      ? IconButton(
                          onPressed: () async {
                            editPayment.value = !editPayment.value;
                          },
                          icon: const Icon(Icons.chevron_right_sharp),
                        )
                      : null,
                  title: Text(
                    style: textTheme.bodyMedium!.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                    widget.paymentMethodName ?? '',
                    overflow: TextOverflow.ellipsis,
                  ),
                  subtitle: AnimatedBuilder(
                    animation: Listenable.merge([
                      editPayment,
                      widget.paymentController.chequeNumber,
                    ]),
                    builder: (context, child) => Text(
                      _getPaymentModeData(widget.accountDetails, widget.mode),
                      style: textTheme.bodySmall!.copyWith(
                        color: Theme.of(
                          context,
                        ).colorScheme.onSurface.withAlpha(127),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        Visibility(
          visible: widget.canEdit,
          child: ValueListenableBuilder(
            valueListenable: editPayment,
            builder: (context, value, child) {
              return Visibility(
                visible: value,
                child: RadioGroup<BankAccount>(
                  groupValue: widget.accountDetails!.bankAccounts!
                      .where((x) => x.isDefault)
                      .firstOrNull,
                  onChanged: (value) {
                    for (final x in widget.accountDetails!.bankAccounts!) {
                      x.isDefault = false;
                    }
                    widget.accountDetails!.bankAccounts!
                            .where((x) => x == value)
                            .first
                            .isDefault =
                        true;

                    widget.paymentController.setSelectedBankAccount(value);
                    editPayment.value = !editPayment.value;
                  },
                  child: Column(
                    children: widget.accountDetails!.bankAccounts!
                        .map(
                          (account) => ListTile(
                            leading: Radio<BankAccount>(value: account),
                            title: Text(
                              widget.paymentController.getBankAccountDetails(
                                account,
                              ),
                              style: textTheme.bodySmall,
                            ),
                          ),
                        )
                        .toList(),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  String _getPaymentModeData(Account? accountDetails, PaymentMethod mode) {
    if (accountDetails == null) {
      return '';
    }
    final atmDetails = widget.paymentController.atmServerDevice?.name ?? '--';
    switch (mode) {
      case PaymentMethod.atm:
        return atmDetails;
      case PaymentMethod.fasterPayment:
      case PaymentMethod.overnightFasterPayment:
        var bankAccount = accountDetails.bankAccounts
            ?.where((x) => x.isDefault)
            .firstOrNull;
        bankAccount ??= accountDetails.bankAccounts?.firstOrNull;
        if (bankAccount != null) {
          return widget.paymentController.getBankAccountDetails(bankAccount);
        }
        return '-';
      case PaymentMethod.autoChequeWithEncashmentAtm:
        return atmDetails;
      case PaymentMethod.digitalWalletWithAtm:
      case PaymentMethod.digitalWalletWithCash:
        return (accountDetails.settings?.isDigitalWalletActivated ?? false)
            ? '${context.l10n.walletActivated} ($atmDetails)'
            : '${context.l10n.activateDigitalWallet} ($atmDetails)';
      case PaymentMethod.manualCheque:
        return widget.paymentController.chequeNumber.value.isEmpty
            ? 'XXX-XXX'
            : widget.paymentController.chequeNumber.value;
      case PaymentMethod.secorePrepayCard:
        final prepayCard = widget.paymentController.getPrepaymentCardForAccount(
          accountDetails,
        );

        return (prepayCard?.code.isEmpty ?? true)
            ? widget.paymentController.cardId.value.isEmpty
                  ? context.l10n.addNewCard
                  : widget.paymentController.cardId.value.toUiCardId()
            : '${context.l10n.cardNumber}: ${prepayCard!.code.toUiCardId()}';
      case PaymentMethod.none:
      case PaymentMethod.autoCheque:
      case PaymentMethod.autoChequeWithEncashmentCash:
      case PaymentMethod.cash:
      case PaymentMethod.splitPayment:
        return '';
    }
  }
}
