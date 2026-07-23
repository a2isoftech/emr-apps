import 'dart:async';

import 'package:emr_one_cashiersearch/emr_one_cashiersearch.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_sharedtypes/enums/payment_method.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

mixin TicketPaymentMixin<T extends StatefulWidget> on State<T> {
  late final ITicketPaymentController paymentController;
  PaymentDeductions? paymentDeduction;
  List<String>? transactionIds;
  List<String>? displayIds;
  Account? account;
  String? currency;
  PaymentType? paymentType;

  @override
  void initState() {
    super.initState();
    paymentController = Provider.of<ITicketPaymentController>(
      context,
      listen: false,
    );
  }

  Future<bool> startPayment({
    required bool isAuthRequired,
    required PaymentMethod paymentMode,
    required String yardCode,
  }) async {
    AuthorizationMode? authMode;

    if (paymentDeduction!.netPaid <= 0 && paymentMode != PaymentMethod.cash) {
      await TicketsUtility.errorDialogWidget(
        context,
        context.l10n.errorMessageAmountLessThanOrEqualToZero,
      );
      return false;
    }

    final canProceedPayment = await _confirmToProceedPayment(
      paymentMode,
      displayIds!,
    );
    if (!canProceedPayment) return false;

    if (isAuthRequired) {
      authMode = await _selectAuthMode(yardCode);
      if (authMode == null || authMode == AuthorizationMode.notSet) {
        return false;
      }
    }

    return _processTicketPayments(paymentMode, authMode);
  }

  bool checkAllRequiredFields(PaymentMethod paymentMode, Account account) {
    final needsValidation =
        paymentMode == PaymentMethod.manualCheque ||
        (paymentMode == PaymentMethod.secorePrepayCard &&
            paymentController.getPrepaymentCardForAccount(account) == null);

    if (needsValidation) {
      final formValid =
          paymentController.requiredDetailsForm.currentState?.validate() ??
          false;

      if (!formValid) {
        paymentController.isBusy.value = false;
        return false;
      }
    }

    return true;
  }

  Future<bool> _confirmToProceedPayment(
    PaymentMethod paymentMode,
    List<String> transactionIds,
  ) async {
    var isOkPressed = false;
    if (!mounted) return false;
    if (paymentDeduction!.netPaid == 0) {
      await TicketsUtility.infoDialogWidget(
        context,
        title: context.l10n.confirmation,
        message: context.l10n.advanceOffsetConfirmation,
        onAccept: () async => isOkPressed = true,
        onCancel: () => isOkPressed = false,
      );
    } else {
      await TicketsUtility.infoDialogWidget(
        context,
        title: context.l10n.confirmation,
        message: context.l10n.ticketPaymentConfirmation(
          TicketsUtility.formatCurrency(
            context,
            currency ?? '',
            paymentDeduction!.netPaid,
          ),
          TicketsUtility.getPaymentName(paymentMode, context),
          transactionIds.join(', '),
        ),
        onAccept: () async => isOkPressed = true,
        onCancel: () => isOkPressed = false,
      );
    }
    return isOkPressed;
  }

  Future<AuthorizationMode?> _selectAuthMode(String yardCode) =>
      showDialog<AuthorizationMode>(
        barrierDismissible: false,
        context: context,
        builder: (_) => AlertDialog(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(context.l10n.authorizationRequired),
              IconButton(
                onPressed: () => context.pop(AuthorizationMode.notSet),
                icon: const Icon(Icons.close),
              ),
            ],
          ),
          titleTextStyle: Theme.of(context).textTheme.titleMedium,
          actions: [
            ElevatedButton(
              onPressed: () => context.pop(AuthorizationMode.workflow),
              child: Text(context.l10n.requestAuthorization),
            ),
            ElevatedButton(
              onPressed: () => _onAuthorizeWithPassword(yardCode),
              child: Text(context.l10n.authorizeWithPassword),
            ),
          ],
          content: Text(context.l10n.authorizationMessage),
        ),
      );

  Future<void> _onAuthorizeWithPassword(String yardCode) async {
    final passwordController = TextEditingController();
    final selectedUser = ValueNotifier<String?>(null);
    final isPasswordAuthorized = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(context.l10n.authorizationCredentials),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            EmrPickerFormField<String>(
              binding: selectedUser,
              labelText: context.l10n.username,
              items: (query) => paymentController
                  .searchPaymentAuthorisationApprovers(yardCode),
              itemTitleText: (item) => item,
              validator: Validators.required,
              mode: EmrPickerMode.dropdown,
            ),
            const SizedBox(height: Insets.gutter),
            Text(context.l10n.password),
            TextFormField(
              obscureText: true,
              obscuringCharacter: '*',
              controller: passwordController,
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => context.pop(),
            child: Text(context.l10n.cancel),
          ),
          ElevatedButton(
            onPressed: () async {
              if ((selectedUser.value == null || selectedUser.value!.isEmpty) ||
                  passwordController.text.isEmpty) {
                await TicketsUtility.errorDialogWidget(
                  context,
                  'Please select a user and enter a password',
                );
                return;
              }
              final response = await paymentController.validateAuthentication(
                yardCode,
                selectedUser.value!,
                passwordController.text,
              );

              if (!context.mounted) return;

              if (response.isSuccess) {
                context.pop(true);
                return;
              }

              await TicketsUtility.infoDialogWidget(
                context,
                message:
                    response.errorMessage ??
                    context.l10n.passwordValidationFailed,
                title: context.l10n.error,
              );
            },
            child: Text(context.l10n.ok),
          ),
        ],
      ),
    );

    if (mounted && (isPasswordAuthorized ?? false)) {
      context.pop(AuthorizationMode.password);
    }
  }

  Future<bool> _processTicketPayments(
    PaymentMethod paymentMode,
    AuthorizationMode? authMode,
  ) async {
    final paymentRecordResult = await paymentController.createPaymentRecord(
      account!,
      transactionIds!,
      paymentMode,
      authMode,
      (await Provider.of<UserInfoService>(
        context,
        listen: false,
      ).getUserInfo())!,
      paymentDeduction!,
      paymentType!,
    );
    if (!mounted) return false;
    if (!paymentRecordResult.isSuccess) {
      if (paymentRecordResult.error!.details.isEmpty) {
        await TicketsUtility.errorDialogWidget(
          context,
          paymentRecordResult.error!.errorMessage,
        );
      } else {
        await EmrDialog.modal<void>(
          context,
          titleText: context.l10n.ticketValidationResultsTitle,
          acceptLabel: context.l10n.ok,
          builder: (context) => LogWidget(
            errors: paymentRecordResult.error!.details.values.toList(),
            warnings:
                paymentRecordResult.warning?.details.values.toList() ?? [],
          ),
          onAccept: () => Navigator.maybePop(context),
        );
      }

      return false;
    }

    if (!mounted) return false;
    if (authMode == AuthorizationMode.workflow) {
      await TicketsUtility.infoDialogWidget(
        context,
        title: context.l10n.success,
        message: context.l10n.paymentSentToApprovals,
      );
    } else {
      await _confirmation(paymentRecordResult);
    }
    paymentController.setSelectedBankAccount(null);

    return true;
  }

  Future<void> _confirmation(
    TicketServiceApiResponse<PaymentRecord> paymentResponse,
  ) async {
    await EmrDialog.modal<void>(
      context,
      titleText: context.l10n.ticketValidationResultsTitle,
      acceptLabel: context.l10n.ok,
      builder: (context) => LogWidget(
        message: context.l10n.paymentSuccess(
          TicketsUtility.getPaymentMethodName(
            paymentResponse.result!.paymentMethod,
            context,
          ),
        ),
        errors: paymentResponse.error == null
            ? []
            : paymentResponse.error!.errorMessage == 'More than 1 error occured'
            ? paymentResponse.error!.details.values.toList()
            : [paymentResponse.error!.errorMessage],
        warnings: paymentResponse.warning == null
            ? []
            : paymentResponse.warning!.message == 'More than 1 warnings'
            ? paymentResponse.warning!.details.values.toList()
            : [paymentResponse.warning!.message],
      ),
    );
  }
}
