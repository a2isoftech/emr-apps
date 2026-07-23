import 'package:emr_one_cashiersearch/common/constants.dart';
import 'package:emr_one_cashiersearch/common/enums.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:emr_sharedtypes/enums/payment_method.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TicketsUtility {
  static const double ticketCardWidth = 328;

  static Widget getPaymentIcon(PaymentMethod mode, Color? iconColor) {
    switch (mode) {
      case PaymentMethod.cash:
        return Icon(Icons.money, color: iconColor);
      case PaymentMethod.manualCheque:
        return Icon(Icons.credit_card, color: iconColor);
      case PaymentMethod.autoCheque:
      case PaymentMethod.autoChequeWithEncashmentAtm:
      case PaymentMethod.digitalWalletWithAtm:
        return Icon(Icons.credit_card, color: iconColor);
      case PaymentMethod.digitalWalletWithCash:
      case PaymentMethod.autoChequeWithEncashmentCash:
        return Icon(Icons.payments_outlined, color: iconColor);
      case PaymentMethod.atm:
        return Icon(Icons.atm, color: iconColor);
      case PaymentMethod.overnightFasterPayment:
        return Icon(Icons.assured_workload_sharp, color: iconColor);
      case PaymentMethod.fasterPayment:
        return Icon(Icons.assured_workload, color: iconColor);
      case PaymentMethod.secorePrepayCard:
        return Icon(Icons.credit_card, color: iconColor);
      case PaymentMethod.splitPayment:
        return Icon(Icons.splitscreen_outlined, color: iconColor);
      case PaymentMethod.none:
        return Icon(Icons.warning, color: iconColor);
    }
  }

  static String getPaymentName(PaymentMethod? mode, BuildContext context) {
    if (mode != null) {
      switch (mode) {
        case PaymentMethod.cash:
          return context.l10n.paymentNameCash;
        case PaymentMethod.atm:
          return context.l10n.paymentNameAtm;
        case PaymentMethod.autoCheque:
          return context.l10n.paymentNameAutoCheque;
        case PaymentMethod.autoChequeWithEncashmentAtm:
          return context.l10n.paymentNameAutoChequeWithEncashmentAtm;
        case PaymentMethod.autoChequeWithEncashmentCash:
          return context.l10n.paymentNameAutoChequeWithEncashmentCash;
        case PaymentMethod.digitalWalletWithAtm:
          return context.l10n.paymentNameDigitalWalletWithAtm;
        case PaymentMethod.digitalWalletWithCash:
          return context.l10n.paymentNameDigitalWalletWithCash;
        case PaymentMethod.manualCheque:
          return context.l10n.paymentNameManualCheque;
        case PaymentMethod.overnightFasterPayment:
          return context.l10n.paymentNameOvernightFasterPayment;
        case PaymentMethod.fasterPayment:
          return context.l10n.paymentNameFasterPayment;
        case PaymentMethod.secorePrepayCard:
          return context.l10n.paymentNameSecorePrepayCard;
        case PaymentMethod.splitPayment:
          return context.l10n.splitPayment;
        case PaymentMethod.none:
          return context.l10n.paymentNameNone;
      }
    }
    return '-';
  }

  static String getPaymentMethodName(
    PaymentMethod? mode,
    BuildContext context,
  ) {
    if (mode != null) {
      switch (mode) {
        case PaymentMethod.cash:
          return context.l10n.paymentMethodNameCash;
        case PaymentMethod.atm:
          return context.l10n.paymentMethodNameAtm;
        case PaymentMethod.autoCheque:
        case PaymentMethod.manualCheque:
          return context.l10n.paymentMethodNameCheque;
        case PaymentMethod.autoChequeWithEncashmentAtm:
          return context.l10n.paymentMethodNameAutoChequeWithEncashmentAtm;
        case PaymentMethod.autoChequeWithEncashmentCash:
          return context.l10n.paymentMethodNameAutoChequeWithEncashmentCash;
        case PaymentMethod.digitalWalletWithAtm:
          return context.l10n.paymentMethodNameDigitalWalletWithAtm;
        case PaymentMethod.digitalWalletWithCash:
          return context.l10n.paymentMethodNameDigitalWalletWithCash;
        case PaymentMethod.overnightFasterPayment:
          return context.l10n.paymentMethodNameTransferOvernight;
        case PaymentMethod.fasterPayment:
          return context.l10n.paymentMethodNameTransferSameDay;
        case PaymentMethod.secorePrepayCard:
          return context.l10n.paymentMethodNamePrePayCard;
        case PaymentMethod.splitPayment:
          return context.l10n.splitPayment;
        case PaymentMethod.none:
          return context.l10n.paymentMethodNameNone;
      }
    }
    return '-';
  }

  static List<PaymentMethod> getPaymentModes(
    PaymentMethods yard, {
    bool includeEdgeMethods = true,
  }) => [
    PaymentMethod.none,
    if (yard.atm.enabled && includeEdgeMethods) PaymentMethod.atm,
    if (yard.autoCheque.enabled) PaymentMethod.autoCheque,
    if (yard.autoChequeWithEncashmentAtm.enabled && includeEdgeMethods)
      PaymentMethod.autoChequeWithEncashmentAtm,
    if (yard.autoChequeWithEncashmentCash.enabled && includeEdgeMethods)
      PaymentMethod.autoChequeWithEncashmentCash,
    if (yard.digitalWalletWithAtm.enabled && includeEdgeMethods)
      PaymentMethod.digitalWalletWithAtm,
    if (yard.digitalWalletWithCash.enabled && includeEdgeMethods)
      PaymentMethod.digitalWalletWithCash,
    if (yard.cash.enabled && includeEdgeMethods) PaymentMethod.cash,
    if (yard.fasterpay.enabled) PaymentMethod.fasterPayment,
    if (yard.manualCheque.enabled) PaymentMethod.manualCheque,
    if (yard.overnightFasterpay.enabled) PaymentMethod.overnightFasterPayment,
    if (yard.secorePrepaid.enabled) PaymentMethod.secorePrepayCard,
    if (yard.splitPayment.enabled) PaymentMethod.splitPayment,
  ];

  static String getCurrencySymbol(BuildContext context, String currencyCode) {
    final locale = Localizations.localeOf(context).toString();
    final formatter = NumberFormat.simpleCurrency(
      name: currencyCode,
      locale: locale,
    );
    return formatter.currencySymbol;
  }

  static String formatCurrency(
    BuildContext context,
    String? currencyCode,
    double value, {
    int decimalDigits = 2,
    bool showNegativeSign = false,
  }) {
    final locale = Localizations.localeOf(context);
    final formatter = NumberFormat.simpleCurrency(
      name: currencyCode,
      locale: locale.toString(),
    );
    final numberFormat = NumberFormat.currency(
      locale: locale.toString(),
      decimalDigits: decimalDigits,
      symbol: formatter.currencySymbol,
    );
    final formattedNumber = numberFormat.format(value);
    if (showNegativeSign && value > 0) {
      return '- $formattedNumber';
    }
    return formattedNumber;
  }

  static String getCurrencyCodeFromLocale(BuildContext context) {
    final locale = Localizations.localeOf(context).toString();
    final formatter = NumberFormat.simpleCurrency(locale: locale);
    return formatter.currencyName ?? formatter.currencySymbol;
  }

  static String getFormattedCompactCurrency(
    BuildContext context,
    String? currencyCode,
    double value, {
    int decimalDigits = 2,
  }) {
    final locale = Localizations.localeOf(context).toString();
    final formatter = NumberFormat.simpleCurrency(
      name: currencyCode,
      locale: locale,
    );
    final numberFormat = NumberFormat.currency(
      locale: locale,
      decimalDigits: decimalDigits,
      symbol: formatter.currencySymbol,
    );
    var result = numberFormat.format(value);
    if (result.length > 1) {
      final compactNumberFormat = NumberFormat.compactCurrency(
        locale: locale,
        decimalDigits: decimalDigits,
        symbol: formatter.currencySymbol,
      );
      result = compactNumberFormat.format(value);
    }
    return result;
  }

  static String formatDecimal(
    BuildContext context,
    double value,
    int decimalDigits,
  ) {
    final locale = Localizations.localeOf(context);
    final formatter = NumberFormat.decimalPatternDigits(
      locale: locale.toString(),
      decimalDigits: decimalDigits,
    );
    final result = formatter.format(value);
    return result;
  }

  static String formatUomValue(BuildContext context, UomValue uomValue) {
    final decimalDigits = uomValue.isRate
        ? 2
        : uomValue.uom.displayFormatFractionalDigits;

    final result = formatDecimal(context, uomValue.value, decimalDigits);
    final separator = uomValue.isRate ? ' / ' : ' ';
    final uomName = uomValue.uom.name.toUpperCase();

    return '$result$separator$uomName';
  }

  static bool isSmallScreen(BuildContext context) {
    final shortestSide = MediaQuery.of(context).size.shortestSide;
    return !kIsWeb && shortestSide < 600;
  }

  static Future<void> errorDialogWidget(
    BuildContext context,
    String errorMessage,
  ) {
    return infoDialogWidget(
      context,
      title: context.l10n.error,
      message: errorMessage,
    );
  }

  static Future<void> infoDialogWidget(
    BuildContext context, {
    required String title,
    required String message,
    Future<void> Function()? onAccept,
    String? acceptLabel,
    bool isDanger = false,
    void Function()? onCancel,
  }) {
    return EmrDialog.modal<void>(
      context,
      titleText: title,
      builder: (context) => Center(
        child: Text(
          message,
          softWrap: true,
          overflow: TextOverflow.ellipsis,
          maxLines: 3,
        ),
      ),
      acceptLabel: acceptLabel ?? context.l10n.ok,
      onAccept: () async {
        await onAccept?.call();
        if (!context.mounted) return;
        context.pop();
      },
      onCancel: () async {
        onCancel?.call();
        context.pop();
      },
      isDanger: isDanger,
    );
  }

  static Future<void> errorYardDialogWidget(
    BuildContext context,
    String errorMessage,
  ) {
    return infoDialogWidget(
      context,
      title: context.l10n.error,
      message: getYardErrorMessage(context, errorMessage),
    );
  }

  static String getYardErrorMessage(BuildContext context, String errorCode) {
    switch (errorCode) {
      case YardErrorCodes.paymentMethodsNotFound:
        return context.l10n.yardPaymentsNotFounderror;
    }
    return errorCode;
  }

  static String getWasteRejectedReasonTypeString(
    WasteRejectedReason wasteReason,
    BuildContext context,
  ) {
    switch (wasteReason) {
      case WasteRejectedReason.noNoteSupplied:
        return context.l10n.noNoteSupplied;
      case WasteRejectedReason.noteMissingInformation:
        return context.l10n.noteMissingInformation;
      case WasteRejectedReason.wasteTypeNoteAccepted:
        return context.l10n.wasteTypeNoteAccepted;
    }
  }
}
