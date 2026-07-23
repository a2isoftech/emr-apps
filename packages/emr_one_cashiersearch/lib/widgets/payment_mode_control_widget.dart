import 'package:emr_one_cashiersearch/emr_one_cashiersearch.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_sharedtypes/enums/payment_method.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_grid/responsive_grid.dart';

class PaymentModeControlWidget extends StatefulWidget {
  const PaymentModeControlWidget({
    required this.onModeSelect,
    required this.paymentController,
    required this.isPayable,
    required this.isEnabled,
    this.defaultSelectedMode,
    this.accountDetails,
    this.currencyCode,
    super.key,
  });
  final ITicketPaymentController paymentController;
  final void Function(PaymentMethod, {required bool shouldInvokeParent})
  onModeSelect;
  final bool isPayable;
  final bool isEnabled;
  final PaymentMethod? defaultSelectedMode;
  final Account? accountDetails;
  final String? currencyCode;

  @override
  State<PaymentModeControlWidget> createState() =>
      _PaymentModeControlWidgetState();
}

class _PaymentModeControlWidgetState extends State<PaymentModeControlWidget> {
  final toggle = ValueNotifier<bool>(false);
  PaymentMethod? selectedMode;
  late SplitPaymentController splitPaymentController;

  @override
  void initState() {
    super.initState();
    selectedMode = widget.isEnabled ? widget.defaultSelectedMode : selectedMode;
    splitPaymentController = Provider.of<SplitPaymentController>(
      context,
      listen: false,
    );
  }

  @override
  Widget build(BuildContext context) {
    final activeCard = widget.paymentController.getPrepaymentCardForAccount(
      widget.accountDetails,
    );

    final paymentModes = widget.paymentController.getPaymentModes();

    if (!paymentModes.contains(selectedMode))
    {
      selectedMode = PaymentMethod.none;
    }

    return FutureBuilder(
      future: widget.paymentController.getPaymentMethodNames(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        }

        return Column(
          children: [
            Material(
              elevation: 2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              child: PaymentModeLargeButton(
                paymentController: widget.paymentController,
                isSelected: true,
                mode: selectedMode!,
                onSelect: () {
                  toggle.value = !toggle.value;
                },
                paymentMethodName: selectedMode != null
                    ? snapshot.data!.getIgnoreCase(selectedMode!.name)
                              as String? ??
                          selectedMode!.name
                    : null,
                canEdit:
                    (selectedMode == PaymentMethod.overnightFasterPayment ||
                        selectedMode == PaymentMethod.fasterPayment) &&
                    widget.accountDetails?.bankAccounts != null &&
                    widget.accountDetails!.bankAccounts!.length > 1,
                accountDetails: widget.accountDetails,
              ),
            ),
            const SizedBox(height: Insets.gutter),
            ValueListenableBuilder(
              valueListenable: toggle,
              builder: (BuildContext context, isVisible, Widget? child) {
                return Visibility(
                  visible: isVisible,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: Insets.gutter,
                    ),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                          color: CashierSearchColors.disabledBackground,
                          strokeAlign: BorderSide.strokeAlignOutside,
                        ),
                        color: CashierSearchColors.background,
                      ),
                      child: Material(
                        elevation: 2,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: ResponsiveGridRow(
                          children: paymentModes
                              .where(
                                (element) =>
                                    element != selectedMode &&
                                    element != PaymentMethod.none,
                              )
                              .map((x) {
                                final paymentMethodName =
                                    snapshot.data!.getIgnoreCase(x.name)
                                        as String? ??
                                    x.name;
                                return ResponsiveGridCol(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                      vertical: Insets.gutter / 4,
                                    ),
                                    child: Column(
                                      children: [
                                        _getPaymentModeButton(
                                          x,
                                          selectedMode!,
                                          paymentMethodName,
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              })
                              .toList(),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
            if (selectedMode == PaymentMethod.splitPayment &&
                widget.isPayable) ...[
              FilledButton(
                onPressed: () async {
                  final invokeParent = await _showSplitPaymentDialog();
                  widget.onModeSelect.call(
                    selectedMode!,
                    shouldInvokeParent: invokeParent,
                  );
                },
                style: EmrButtonStyles.cta(),
                child: Text(context.l10n.editSplitPayment),
              ),
              const SizedBox(height: Insets.gutter / 2),
            ],
            if (selectedMode == PaymentMethod.manualCheque)
              ChequeDetailsForm(
                paymentController: widget.paymentController,
                selectedMode: selectedMode,
                formKey: widget.paymentController.requiredDetailsForm,
                payeeName: widget.accountDetails?.name ?? '',
              ),
            if (selectedMode == PaymentMethod.secorePrepayCard &&
                activeCard == null)
              SecorePrePayCardDetailsForm(
                paymentController: widget.paymentController,
                selectedMode: selectedMode,
                formKey: widget.paymentController.requiredDetailsForm,
              ),
          ],
        );
      },
    );
  }

  Widget _getPaymentModeButton(
    PaymentMethod currentMode,
    PaymentMethod selected,
    String paymentMethodName,
  ) {
    return PaymentModeLargeButton(
      paymentController: widget.paymentController,
      canEdit:
          (currentMode == PaymentMethod.overnightFasterPayment ||
              currentMode == PaymentMethod.fasterPayment) &&
          widget.accountDetails?.bankAccounts != null &&
          widget.accountDetails!.bankAccounts!.length > 1,
      isSelected: currentMode == selected,
      mode: currentMode,
      showBorder: false,
      paymentMethodName: paymentMethodName,
      onSelect: () async {
        if (widget.isEnabled) {
          toggle.value = !toggle.value;
          setState(() {
            selectedMode = currentMode;
          });

          var shouldInvokeParent = false;

          if (currentMode == PaymentMethod.splitPayment) {
            shouldInvokeParent = await _showSplitPaymentDialog();
          } else {
            shouldInvokeParent = true;
          }
          widget.onModeSelect.call(
            currentMode,
            shouldInvokeParent: shouldInvokeParent,
          );
        }
      },
      accountDetails: widget.accountDetails,
    );
  }

  Future<bool> _showSplitPaymentDialog() async {
    var shouldInvoke = false;
    if (!widget.isPayable) {
      await TicketsUtility.errorDialogWidget(
        context,
        context.l10n.errorSplitPaymentWithZeroPayable,
      );
      return shouldInvoke;
    }

    await EmrDialog.modal<void>(
      context,
      titleText: context.l10n.splitPayment,
      builder: (currentContext) {
        return SplitPaymentPopup(
          splitPaymentController: splitPaymentController,
          paymentController: widget.paymentController,
          currencyCode: widget.currencyCode,
          accountDetails: widget.accountDetails,
        );
      },
      onAccept: () async {
        if (!splitPaymentController.isAllFormsValid()) {
          return;
        }

        if (!splitPaymentController.isAmountValid) {
          await TicketsUtility.errorDialogWidget(
            context,
            context.l10n.incorrectAmount,
          );
          return;
        }

        shouldInvoke = true;
        Navigator.of(context).pop();
      },
    );
    return shouldInvoke;
  }
}
