import 'package:collection/collection.dart';
import 'package:emr_core_api/models/api_response.dart';
import 'package:emr_one_cashiersearch/emr_one_cashiersearch.dart';
import 'package:emr_one_cashiersearch/extensions/api_response_extension.dart';
import 'package:emr_one_cashiersearch/services/listeners/graphql_subscription_listeners.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_sharedtypes/enums/payment_method.dart';
import 'package:emr_sharedtypes/models/devices/atm_server_device.dart';
import 'package:emr_sharedtypes/models/devices/devices.dart';
import 'package:emr_sharedtypes/models/payment_methods/payment_methods.dart';
import 'package:emr_sharedtypes/models/yard.dart';
import 'package:flutter/material.dart';

abstract class ITicketPaymentController extends ChangeNotifier {
  ITicketPaymentController({
    required this.service,
    required this.splitPaymentController,
    required this.advanceFlexiPayController,
    required this.includeEdgePaymentMethods,
  });

  final ITicketPaymentService service;
  final SplitPaymentController splitPaymentController;
  final AdvanceFlexiPayController advanceFlexiPayController;
  final bool includeEdgePaymentMethods;
  PaymentMethod get defaultPaymentMode;
  PaymentMethods? get yardPaymentMethods;
  Yard? get yard;

  PaymentMethod get paymentModeSelected;
  AtmServerDevice? get atmServerDevice;

  final ValueNotifier<bool> isBusy = ValueNotifier(false);
  List<PaymentMethod> getPaymentModes();
  void setDefaultPaymentMode(PaymentMethod mode);
  void setSelectedPaymentMode(PaymentMethod mode);

  void setYardPaymentMethods(Yard yard);
  void setAtmServerDevice(AtmServerDevice? value);
  bool isCELSigned(Ticket ticket);
  bool isRoundingEnabled();
  double getTotalPayable(List<PaymentRecordTicket> tickets);
  Future<Map<String, dynamic>> getPaymentMethodNames();

  Future<EncashmentValues?> calculateEncashmentValues(
    PaymentMethod? mode,
    double amount,
    String yardId,
  );

  Future<Account> getAccount(String accountId);

  Future<ApiResponse<bool>> cancelPaymentRequest(String paymentRecordId);
  Future<TicketServiceApiResponse<bool>> unpayPayment(String paymentRecordId);
  Future<TicketServiceApiResponse<PaymentRecord>> proceedToPayments(
    String paymentRecordId,
  );
  Agreement? getCelAgreement(Account? account);
  Agreement? getSecoreAgreement(Account? account);
  Future<PasswordAuthResponse> validateAuthentication(
    String yardCode,
    String userName,
    String password,
  );
  Future<List<String>> searchPaymentAuthorisationApprovers(String yardCode);
  Future<TicketServiceApiResponse<PaymentRecord>> createPaymentRecord(
    Account account,
    List<String> transactionIds,
    PaymentMethod mode,
    AuthorizationMode? authMode,
    UserInfo userInfo,
    PaymentDeductions paymentDeduction,
    PaymentType paymentType,
  );

  bool isAtmReciept(PaymentMethod paymentMethod) => false;
  Future<ApiResponse<PaymentRecord>> getPaymentRecordByTicketId(
    String ticketId,
  );

  Future<ApiResponse<Devices>> getDevices(String yardCode);

  List<ProofDocument>? getIdentifications(Account? account);
  String getBankAccountDetails(BankAccount bankAccount);
  void setSelectedBankAccount(BankAccount? account);
  BankAccount? get selectedBankAccount;

  Future<bool> isPaymentAuthorizationRequired(
    double totalPayable,
    PaymentMethod paymentMode,
    String yardCode,
  );

  Future<
    (Map<String, PaymentValidationResult>, PaymentDeductions, List<Ticket>)
  >
  validateTicketsWithPaymentMethod(
    PaymentMethod mode,
    List<Ticket> tickets,
    List<SplitPaymentBreakup>? splitPaymentBreakups,
    List<AdvanceOffsetInfo>? advanceOverrides,
  );

  Future<(PaymentValidationResult?, PaymentDeductions)>
  validateAdvanceWithPaymentMethod(
    PaymentMethod mode,
    Advance advance,
    List<SplitPaymentBreakup>? splitPaymentBreakups,
  );

  Future<TicketServiceApiResponse<TicketRemittance?>> reprintRemittanceCopy(
    String paymentRecordId,
  );

  final ValueNotifier<String> payeeName = ValueNotifier('');
  final ValueNotifier<String> chequeNumber = ValueNotifier('');
  final ValueNotifier<String> cardId = ValueNotifier('');
  final ValueNotifier<String> lastFourCardDigits = ValueNotifier('');
  final GlobalKey<FormState> requiredDetailsForm = GlobalKey<FormState>();

  void resetPaymentDetails();
  PrepaymentCard? getPrepaymentCardForAccount(Account? accountDetails);

  List<PaymentMethod> get paymentMethodsWithEncashments => const [
    PaymentMethod.autoChequeWithEncashmentAtm,
    PaymentMethod.autoChequeWithEncashmentCash,
  ];

  Future<TicketServiceApiResponse<bool?>> printAtmQrCode(
    String paymentRecordId,
  );

  GraphQLSubscriptionListener<Map<String, dynamic>>
  getPaymentRecordApprovalListener({
    required String url,
    required String Function() getToken,
    required void Function(GraphQLResponse<Map<String, dynamic>>)
      onDataReceived,
  });
}

class TicketPaymentController extends ITicketPaymentController {
  TicketPaymentController({
    required super.service,
    required super.splitPaymentController,
    required super.advanceFlexiPayController,
    required super.includeEdgePaymentMethods,
  });

  PaymentMethod _defaultPaymentMode = PaymentMethod.cash;
  PaymentMethod? _selectedPaymentMode;

  PaymentMethods? _yardPaymentMethods;
  AtmServerDevice? _atmServerDevice;
  Yard? _yard;
  BankAccount? _selectedBankAccount;

  @override
  bool isAtmReciept(PaymentMethod paymentMethod) {
    return paymentMethod == PaymentMethod.atm ||
        paymentMethod == PaymentMethod.autoChequeWithEncashmentAtm ||
        paymentMethod == PaymentMethod.digitalWalletWithAtm;
  }

  @override
  Future<PasswordAuthResponse> validateAuthentication(
    String yardCode,
    String userName,
    String password,
  ) => service.validateAuthentication(yardCode, userName, password);

  @override
  Future<List<String>> searchPaymentAuthorisationApprovers(
    String yardCode,
  ) async {
    final response = await service.searchPaymentAuthorisationApprovers(
      yardCode,
    );
    return response.data ?? [];
  }

  @override
  bool isCELSigned(Ticket ticket) {
    return ticket.account.details != null &&
        ticket.account.details!.celAgreement != null &&
        ticket.account.details!.celAgreement!.agreementDate!.isBefore(
          DateTime.now(),
        ) &&
        (ticket.account.details!.celAgreement!.expiryDate == null ||
            ticket.account.details!.celAgreement!.expiryDate!.isAfter(
              DateTime.now(),
            ));
  }

  @override
  double getTotalPayable(List<PaymentRecordTicket> tickets) {
    final allPayable = tickets.map((e) => e.price);
    final totalPayable = allPayable.reduce((a, b) => a! + b!);

    if (isRoundingEnabled()) {
      return totalPayable!
          .round()
          .toDouble(); // rounding mechanism has to be decided
    }
    return totalPayable ?? 0;
  }

  @override
  Future<EncashmentValues?> calculateEncashmentValues(
    PaymentMethod? mode,
    double amount,
    String yardId,
  ) async {
    if (yardId.isNotEmpty &&
        mode != null &&
        amount != 0 &&
        paymentMethodsWithEncashments.contains(mode)) {
      return service.calculateEncashmentValues(amount, yardId, mode);
    }

    return null;
  }

  @override
  PaymentMethod get defaultPaymentMode => _defaultPaymentMode;

  @override
  PaymentMethod get paymentModeSelected =>
      _selectedPaymentMode ?? _defaultPaymentMode;

  @override
  AtmServerDevice? get atmServerDevice => _atmServerDevice;

  @override
  void setDefaultPaymentMode(PaymentMethod mode) {
    _defaultPaymentMode = mode;
  }

  @override
  void setSelectedPaymentMode(PaymentMethod mode) {
    _selectedPaymentMode = mode;
  }

  @override
  bool isRoundingEnabled() {
    return false; //get this data from preference
  }

  Map<String, dynamic> _getPostingData(
    Account account,
    PaymentMethod paymentMethod,
  ) {
    if (paymentMethod == PaymentMethod.manualCheque) {
      return {'PayeeName': payeeName.value, 'ChequeNumber': chequeNumber.value};
    }

    if (paymentMethod == PaymentMethod.secorePrepayCard &&
        getPrepaymentCardForAccount(account) == null) {
      return {
        'CardId': cardId.value.toBackendCardId(),
        'Last4Digits': lastFourCardDigits.value,
      };
    }

    return {};
  }

  @override
  Future<TicketServiceApiResponse<PaymentRecord>> createPaymentRecord(
    Account account,
    List<String> transactionIds,
    PaymentMethod mode,
    AuthorizationMode? authMode,
    UserInfo userInfo,
    PaymentDeductions paymentDeduction,
    PaymentType paymentType,
  ) async {
    try {
      final paymentMethod = paymentDeduction.netPaid > 0
          ? mode
          : PaymentMethod.cash;
      final createPaymentRecordInput = CreatePaymentRecordInput(
        extendedProperties: {},
        paymentMethodDetails: _getPostingData(account, paymentMethod),
        paymentMethod: paymentMethod,
        yardCode: yard!.yardCode,
        referenceIds: transactionIds,
        paymentType: paymentType,
        paymentRecordItems: _getPaymentRecordItems(
          paymentMethod,
          paymentDeduction,
          account,
        ),
        authorizationType:
            authMode == null || authMode == AuthorizationMode.notSet
            ? null
            : authMode,
        splitPaymentBreakups: splitPaymentController.selectedItems
            .map(
              (item) => SplitPaymentBreakup(
                amount: item.amount.value?.toDouble() ?? 0,
                paymentMethod: item.paymentMethod,
              ),
            )
            .toList(),
        advanceOverrides: advanceFlexiPayController.advances
            ?.map(
              (adv) => AdvanceOffsetInfo(
                advanceId: adv.advanceId,
                amount: adv.usedAmount.value ?? 0,
              ),
            )
            .toList(),
      );

      return service.createPaymentRecord(createPaymentRecordInput);
    } on Exception catch (ex) {
      return ApiResponse<PaymentRecord>(
        success: false,
        message: ex.toString(),
      ).toTicketServiceApiRespone();
    }
  }

  List<PaymentRecordItem> _getPaymentRecordItems(
    PaymentMethod paymentMethod,
    PaymentDeductions deduction,
    Account account,
  ) {
    if (paymentMethod != PaymentMethod.splitPayment) {
      return [];
    }

    final result = <PaymentRecordItem>[];

    for (final item in deduction.paymentDeductionItems) {
      result.add(
        PaymentRecordItem(
          paymentMethod: item.paymentMethod,
          totalAmount: item.grossAmount,
          totalFee: item.encashmentValues?.commissionValue ?? item.totalFee,
          payableAfterCost: item.payableAfterCostAndDeduction,
          payableAmount: item.payableAmount,
          paymentMethodDetails: _getPostingData(account, item.paymentMethod),
        ),
      );
    }

    return result;
  }

  BankAccount? getDefaultBankAccount(Ticket ticket) {
    return ticket.account.details?.bankAccounts?.first;
  }

  @override
  PrepaymentCard? getPrepaymentCardForAccount(Account? accountDetails) {
    return accountDetails?.prepaymentCards
        ?.where((x) => x.active && x.issuerType == PrepayCardIssuerType.secore)
        .firstOrNull;
  }

  @override
  String getBankAccountDetails(BankAccount bankAccount) {
    return '${bankAccount.bankName}\n'
        '${bankAccount.sortCode}'
        ' ${maskData(bankAccount.accountNumber)} '
        '${bankAccount.accountHolderName}';
  }

  @override
  List<ProofDocument>? getIdentifications(Account? account) {
    final ids = account?.accountContacts
        .map((x) => x.value)
        .where(
          (x) =>
              x != null &&
              x.contactTypes.contains(CashierConstants.contactType) &&
              x.proofOfIdentification != null &&
              x.proofOfIdentification!.isNotEmpty &&
              x.proofOfIdentification!.any(
                (y) => y.validTo.isAfter(DateTime.now()),
              ),
        )
        .map((e) => e!.proofOfIdentification!)
        .toList();

    final poas = account?.accountContacts
        .map((x) => x.value)
        .where(
          (x) =>
              x != null &&
              x.contactTypes.contains(CashierConstants.contactType) &&
              x.proofOfAddress != null &&
              x.proofOfAddress!.isNotEmpty &&
              x.proofOfAddress!.any((y) => y.validTo.isAfter(DateTime.now())),
        )
        .map((e) => e!.proofOfAddress!)
        .toList();

    final flattenedList = ids?.expand((list) => list).toList();
    flattenedList?.addAll(poas?.expand((list) => list).toList() ?? []);
    return flattenedList;
  }

  @override
  Agreement? getCelAgreement(Account? account) {
    return account?.celAgreement;
  }

  @override
  Agreement? getSecoreAgreement(Account? account) {
    return account?.secoreAgreement;
  }

  String maskData(String data) {
    if (data.length <= 4) {
      return 'XXXX';
    }
    final firstFour = data.substring(0, 4);
    return data.replaceAll(firstFour, 'XXXX');
  }

  @override
  void setSelectedBankAccount(BankAccount? account) {
    _selectedBankAccount = account;
  }

  @override
  BankAccount? get selectedBankAccount => _selectedBankAccount;

  @override
  Future<bool> isPaymentAuthorizationRequired(
    double totalPayable,
    PaymentMethod paymentMode,
    String yardCode,
  ) async {
    return paymentMode.requiresAuthorization() &&
        (await service.isPaymentAuthorizationRequired(totalPayable, yardCode));
  }

  @override
  Future<ApiResponse<bool>> cancelPaymentRequest(String paymentRecordId) {
    return service.cancelPaymentRequestAsync(paymentRecordId);
  }

  @override
  Future<TicketServiceApiResponse<bool>> unpayPayment(String paymentRecordId) {
    return service.unpayPaymentAsync(paymentRecordId);
  }

  @override
  Future<TicketServiceApiResponse<PaymentRecord>> proceedToPayments(
    String paymentRecordId,
  ) async {
    try {
      return service.patchPaymentRecordStatus(
        paymentRecordId,
        PaymentStatus.ready,
      );
    } on Exception catch (_) {
      rethrow;
    }
  }

  @override
  void resetPaymentDetails() {
    payeeName.value = '';
    chequeNumber.value = '';
    cardId.value = '';
    lastFourCardDigits.value = '';
  }

  @override
  void setYardPaymentMethods(Yard yard) {
    _yardPaymentMethods = yard.paymentMethods;
    _yard = yard;
  }

  @override
  void setAtmServerDevice(AtmServerDevice? value) {
    _atmServerDevice = value;
  }

  @override
  PaymentMethods? get yardPaymentMethods => _yardPaymentMethods;

  @override
  Yard? get yard => _yard;

  @override
  List<PaymentMethod> getPaymentModes() {
    return _yardPaymentMethods != null
        ? TicketsUtility.getPaymentModes(
            _yardPaymentMethods!,
            includeEdgeMethods: includeEdgePaymentMethods,
          )
        : <PaymentMethod>[PaymentMethod.none];
  }

  @override
  Future<ApiResponse<PaymentRecord>> getPaymentRecordByTicketId(
    String ticketId,
  ) {
    return service.getPaymentRecordByTicketId(ticketId);
  }

  @override
  Future<
    (Map<String, PaymentValidationResult>, PaymentDeductions, List<Ticket>)
  >
  validateTicketsWithPaymentMethod(
    PaymentMethod paymentMethod,
    List<Ticket> tickets,
    List<SplitPaymentBreakup>? splitPaymentBreakups,
    List<AdvanceOffsetInfo>? advanceOverrides,
  ) {
    if (_yard?.id?.isEmpty ?? true) {
      throw Exception('Paying Yard not set');
    }

    final yardId = _yard!.id!;

    return service.validateTicketsWithPaymentMethod(
      paymentMethod,
      tickets.map((ticket) => ticket.id).toList(),
      splitPaymentBreakups,
      advanceOverrides,
      yardId,
    );
  }

  @override
  Future<(PaymentValidationResult?, PaymentDeductions)>
  validateAdvanceWithPaymentMethod(
    PaymentMethod mode,
    Advance advance,
    List<SplitPaymentBreakup>? splitPaymentBreakups,
  ) {
    if (_yard?.id?.isEmpty ?? true) {
      throw Exception('Paying Yard not set');
    }

    final yardId = _yard!.id!;
    return service.validateAdvanceWithPaymentMethod(
      mode,
      advance.id,
      splitPaymentBreakups,
      yardId,
    );
  }

  @override
  Future<ApiResponse<Devices>> getDevices(String yardCode) async {
    try {
      final devices = await service.getDevicesByYard(yardCode);
      return ApiResponse(data: devices);
    } on Exception catch (ex) {
      return Future.value(
        ApiResponse<Devices>(success: false, message: ex.toString()),
      );
    }
  }

  @override
  Future<Account> getAccount(String accountId) async {
    return service.getAccountById(accountId);
  }

  @override
  Future<Map<String, dynamic>> getPaymentMethodNames() =>
      service.getPaymentMethodNames();

  @override
  Future<TicketServiceApiResponse<TicketRemittance?>> reprintRemittanceCopy(
    String paymentRecordId,
  ) => service.reprintRemittanceCopy(paymentRecordId);

  @override
  Future<TicketServiceApiResponse<bool?>> printAtmQrCode(
    String paymentRecordId,
  ) => service.printAtmQrCode(paymentRecordId);

  @override
  GraphQLSubscriptionListener<Map<String, dynamic>>
  getPaymentRecordApprovalListener({
    required String url,
    required String Function() getToken,
    required void Function(GraphQLResponse<Map<String, dynamic>>)
      onDataReceived,
  }) {
    return service.getPaymentRecordApprovalListener(
      url: url,
      getToken: getToken,
      onDataReceived: onDataReceived,
    );
  }
}
