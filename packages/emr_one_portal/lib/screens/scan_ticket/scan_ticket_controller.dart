import 'package:emr_account_registration/signup.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_portal/portal.dart';
import 'package:flutter/material.dart';

class ScanTicketController with ChangeNotifier {
  ScanTicketController({
    required this.ticketService,
    required this.customerUserInfoService,
    required this.accountService,
    required this.context,
  });

  final TicketService ticketService;
  final CustomerUserInfoService customerUserInfoService;
  final AccountServicePortal accountService;
  final BuildContext context;

  List<TicketViewModel> tickets = [];

  String manualTicketNo = '';

  String manualDepot = '';

  bool showBasketSummary() => tickets.isNotEmpty;

  bool showTicketDetail() => viewTicketDetails && selectedTicket != null;

  bool showCheckout() => checkout && tickets.isNotEmpty;

  bool showSuccessMessage() => paymentsRequested;

  bool viewTicketDetails = false;

  bool checkout = false;

  bool paymentsRequested = false;

  int _failedAttempts = 0;
  bool showManualControls() => _failedAttempts >= 3;

  TicketViewModel? selectedTicket;
  int? selectedPaymentMethod = PortalSettings.paymentMethodNextDayPayment;
  bool? agreeToPaymentTerms = false;

  late bool _submitting = false;
  void toggleSubmitting({bool value = false}) {
    _submitting = value;
    notifyListeners();
  }

  bool isSubmitting() => _submitting;

  FeedbackModel feedbackModel = FeedbackModel();
  bool showFeedback() {
    if (feedbackModel.hasFeedback) {
      Future.delayed(
        const Duration(
          seconds: PortalSettings.errorDisplayDuration,
        ),
        notifyListeners,
      );
      feedbackModel.hasFeedback = false;
      return true;
    }
    return false;
  }

  void toggleViewTicketDetails({
    required bool value,
    required TicketViewModel? ticket,
  }) {
    viewTicketDetails = value;
    selectedTicket = ticket;
    notifyListeners();
  }

  void toggleCheckout({
    required bool value,
  }) {
    checkout = true;
    notifyListeners();
  }

  void goToScanTicket() {
    checkout = false;
    viewTicketDetails = false;
    selectedTicket = null;
    paymentsRequested = false;
    notifyListeners();
  }

  void updatePaymentMethod(int val) {
    selectedPaymentMethod = val;
    notifyListeners();
  }

  void updateAgreeToTnC({
    bool? val,
  }) {
    agreeToPaymentTerms = val;
    notifyListeners();
  }

  void updateManualTicketNumber(String val) {
    manualTicketNo = val;
    notifyListeners();
  }

  void updateManualDepotNumber(String val) {
    manualDepot = val;
    notifyListeners();
  }

  bool canFindTicketManually(
    BuildContext buildContext,
  ) =>
      ValidationService.validateInteger(manualTicketNo, '', buildContext) ==
          null &&
      ValidationService.validateString(manualDepot, '', buildContext) == null;

  double getTotal() {
    var sum = 0.0;
    for (final e in tickets) {
      sum += e.totalPayableAsDouble()!;
    }
    return sum;
  }

  String getTotalAsString() {
    return getTotal().toStringAsFixed(2);
  }

  String totalPayableMinusFee() {
    final fee =
        selectedPaymentMethod == PortalSettings.paymentMethodSameDayPayment
            ? PortalSettings.feeFasterPay
            : 0;
    return (getTotal() - fee).toStringAsFixed(2);
  }

  Future<ScanTicketModel> getModel() async {
    final bankDetails = await accountService.getBankDetails();
    return ScanTicketModel(bankAccountNumber: bankDetails?.accountNumber ?? '');
  }

  bool canSubmit() {
    return (agreeToPaymentTerms ?? false) && selectedPaymentMethod != null;
  }

  Future<void> addTicket(
    String ticketNo,
    String depot,
  ) async {
    if (ticketNo.isEmpty) {
      feedbackModel.set(
        msg: context.l10n.invalidQrCode,
        type: FeedbackType.error,
      );
    } else {
      if (tickets.any((element) => element.ticketNo == ticketNo)) {
        feedbackModel.set(
          msg: context.l10n.ticketAlreadyAdded,
          type: FeedbackType.error,
        );
      } else if (await ticketService.isValidTicket(ticketNo, depot)) {
        final ticket = await ticketService.getTicket(
          ticketNo,
          depot,
        );
        if (ticket != null) {
          if (ticket.isPaid()) {
            feedbackModel.set(
              msg: context.mounted
                  ? context.l10n.ticketAlreadyPaid
                  : 'Ticket already paid',
              type: FeedbackType.error,
            );
          } else {
            tickets.add(ticket);
          }
        } else {
          _failedAttempts++;
          feedbackModel.set(
            msg: context.mounted
                ? context.l10n.ticketNotFound
                : 'Ticket could not be found',
            type: FeedbackType.error,
          );
        }
      } else {
        feedbackModel.set(
          msg: context.mounted
              ? context.l10n.ticketUnpayable
              : 'Ticket cant be paid',
          type: FeedbackType.error,
        );
      }
    }
    toggleSubmitting();
  }

  Future<void> addTicketByUrl(
    String ticketUrl,
  ) async {
    final (ticketNo, depot) = _parseTicketUrl(ticketUrl);
    await addTicket(
      ticketNo,
      depot,
    );
  }

  Future<bool> requestPayments() async {
    toggleSubmitting(
      value: true,
    );
    final (bool isSuccessful, String? error) =
        await ticketService.requestPaymentsLegacy(
      tickets,
      selectedPaymentMethod ?? PortalSettings.paymentMethodNextDayPayment,
    );
    if (isSuccessful) {
      feedbackModel.set(
        msg: 'Payments requested successfully.',
        type: FeedbackType.success,
      );
      paymentsRequested = true;
      checkout = false;
    } else {
      feedbackModel.set(
        msg: error ?? 'Payments could not be requested.',
        type: FeedbackType.error,
      );
    }
    toggleSubmitting();
    return isSuccessful;
  }

  (String ticketNo, String depot) _parseTicketUrl(String ticketUrl) {
    final uri = Uri.parse(ticketUrl);
    if (uri.pathSegments.length < 5) {
      return ('', '');
    } else {
      final ticketNumber = uri.pathSegments.elementAt(2);
      final depot = uri.pathSegments.elementAt(3);
      return (ticketNumber, depot);
    }
  }
}
