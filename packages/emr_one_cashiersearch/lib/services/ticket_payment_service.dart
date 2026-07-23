import 'dart:convert';
import 'dart:typed_data';

import 'package:emr_core_api/emr_core_api.dart' hide Ticket;
import 'package:emr_core_api/graphql/queries/account/get_account_details.graphql.dart';
import 'package:emr_core_api/graphql/subscriptions/tickets/payment_record_status_updated.graphql.dart';
import 'package:emr_one_cashiersearch/base/base_service.dart';
import 'package:emr_one_cashiersearch/emr_one_cashiersearch.dart';
import 'package:emr_one_cashiersearch/services/listeners/graphql_subscription_listeners.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_sharedtypes/enums/payment_method.dart';
import 'package:emr_sharedtypes/models/devices/devices.dart';

abstract class ITicketPaymentService extends BaseService {
  ITicketPaymentService({
    required this.pdfPiPrintUrl,
    required super.httpClient,
  });

  final String pdfPiPrintUrl;

  Future<TicketServiceApiResponse<PaymentRecord>> createPaymentRecord(
    CreatePaymentRecordInput paymentRecord,
  );

  Future<TicketServiceApiResponse<PaymentRecord>> patchPaymentRecordStatus(
    String paymentRecordId,
    PaymentStatus paymentStatus,
  );

  Future<Map<String, dynamic>> getPaymentMethodNames();

  Future<ApiResponse<bool>> cancelPaymentRequestAsync(String paymentRecordId);
  Future<TicketServiceApiResponse<bool>> unpayPaymentAsync(
    String paymentRecordId,
  );
  Future<bool> isPaymentAuthorizationRequired(
    double totalAmount,
    String yardCode,
  );
  Future<ApiResponse<PaymentRecord>> getPaymentRecord(String paymentRecordId);
  Future<ApiResponse<PaymentRecord>> getPaymentRecordByTicketId(
    String ticketId,
  );
  Future<Uint8List> print(Object data);

  Future<EncashmentValues?> calculateEncashmentValues(
    double amount,
    String yardId,
    PaymentMethod paymentMode,
  );

  Future<
    (Map<String, PaymentValidationResult>, PaymentDeductions, List<Ticket>)
  >
  validateTicketsWithPaymentMethod(
    PaymentMethod paymentMethod,
    List<String> ticketIds,
    List<SplitPaymentBreakup>? splitPaymentBreakups,
    List<AdvanceOffsetInfo>? advanceOverrides,
    String yardId,
  );

  Future<(PaymentValidationResult?, PaymentDeductions)>
  validateAdvanceWithPaymentMethod(
    PaymentMethod paymentMethod,
    String advanceId,
    List<SplitPaymentBreakup>? splitPaymentBreakups,
    String payingYardId,
  );

  Future<(List<PaymentRecord>, EmrQueryGraphQLMetadata<bool>)>
  searchPaymentRecords({
    String? after,
    String? before,
    int? first,
    int? last,
    Input$PaymentRecordSearchInput? input,
    List<Input$PaymentRecordSortInput>? order,
  });

  Future<PasswordAuthResponse> validateAuthentication(
    String yardCode,
    String userName,
    String password,
  );

  Future<ApiResponse<List<String>>> searchPaymentAuthorisationApprovers(
    String yardCode,
  );

  Future<Devices> getDevicesByYard(String yardCode);
  Future<Account> getAccountById(String accountId);
  Future<TicketServiceApiResponse<TicketRemittance?>> reprintRemittanceCopy(
    String paymentRecordId,
  );

  Future<TicketServiceApiResponse<bool>> printAtmQrCode(String paymentRecordId);

  GraphQLSubscriptionListener<Map<String, dynamic>>
    getPaymentRecordApprovalListener({
    required String url,
    required String Function() getToken,
    required void Function(GraphQLResponse<Map<String, dynamic>>)
      onDataReceived,
  });
}

class TicketPaymentService extends ITicketPaymentService {
  TicketPaymentService({
    required super.pdfPiPrintUrl,
    required super.httpClient,
  });

  @override
  Future<PasswordAuthResponse> validateAuthentication(
    String yardCode,
    String userName,
    String password,
  ) async {
    final response = await documentNodeMutationValidateAuthentication.execute(
      httpClient,
      Mutation$ValidateAuthentication.fromJson,
      variables: Variables$Mutation$ValidateAuthentication(
        yardCode: yardCode,
        userName: userName,
        password: password,
      ),
    );

    if (response.hasErrors() || response.data?.validateAuthentication == null) {
      return PasswordAuthResponse(
        isSuccess: false,
        errorMessage: 'Password authentication failed',
      );
    }

    return PasswordAuthResponse.fromJson(
      response.data!.validateAuthentication.toJson(),
    );
  }

  @override
  Future<ApiResponse<List<String>>> searchPaymentAuthorisationApprovers(
    String yardCode,
  ) async {
    final response =
        await documentNodeQueryGetpaymentAuthorisationApproverUsernames.execute(
          httpClient,
          Query$GetpaymentAuthorisationApproverUsernames.fromJson,
          variables: Variables$Query$GetpaymentAuthorisationApproverUsernames(
            input: Input$PaymentAuthorisationApproverInput(yardCode: yardCode),
          ),
        );

    if (response.hasErrors() ||
        response.data?.paymentAuthorisationApproverUsernames == null) {
      return ApiResponse(
        success: false,
        message: response.errors?.map((x) => x.message).join(',') ?? '',
      );
    }

    final records =
        response.data?.paymentAuthorisationApproverUsernames.toList() ?? [];
    return ApiResponse(data: records);
  }

  @override
  Future<EncashmentValues?> calculateEncashmentValues(
    double amount,
    String yardId,
    PaymentMethod paymentMode,
  ) async {
    final response = await documentNodeQueryCalculateEncashmentValues.execute(
      httpClient,
      Query$CalculateEncashmentValues.fromJson,
      variables: Variables$Query$CalculateEncashmentValues(
        paymentMethod: mapToGraphQLPaymentMethod(paymentMode),
        amount: amount,
        yardId: yardId,
      ),
    );

    if (response.hasErrors() ||
        response.data?.calculateEncashmentValues == null) {
      throw Exception();
    }

    return EncashmentValues.fromJson(
      response.data!.calculateEncashmentValues!.toJson(),
    );
  }

  @override
  Future<TicketServiceApiResponse<PaymentRecord>> patchPaymentRecordStatus(
    String paymentRecordId,
    PaymentStatus paymentStatus,
  ) async {
    final response = await documentNodeMutationPatchPaymentRecordStatus.execute(
      httpClient,
      Mutation$PatchPaymentRecordStatus.fromJson,
      variables: Variables$Mutation$PatchPaymentRecordStatus(
        paymentRecordId: paymentRecordId,
        paymentStatus: switch (paymentStatus) {
          PaymentStatus.approved => Enum$PaymentStatus.APPROVED,
          PaymentStatus.awaitingForApproval =>
            Enum$PaymentStatus.AWAITING_FOR_APPROVAL,
          PaymentStatus.failed => Enum$PaymentStatus.FAILED,
          PaymentStatus.hold => Enum$PaymentStatus.HOLD,
          PaymentStatus.pending => Enum$PaymentStatus.PENDING,
          PaymentStatus.processed => Enum$PaymentStatus.PROCESSED,
          PaymentStatus.ready => Enum$PaymentStatus.READY,
          PaymentStatus.unpaid => Enum$PaymentStatus.UNPAID,
        },
      ),
    );

    if (response.hasErrors() ||
        response.data?.patchPaymentRecordStatus == null) {
      return TicketServiceApiResponse(
        isSuccess: false,
        error: ApiError(
          errorCode: '',
          errorMessage: response.errors?.map((x) => x.message).join(',') ?? '',
          details: {},
        ),
      );
    }

    return TicketServiceApiResponse<PaymentRecord>.fromJson(
      response.data!.patchPaymentRecordStatus.toJson(),
      (json) => PaymentRecord.fromJson(json! as Map<String, dynamic>),
    );
  }

  @override
  Future<TicketServiceApiResponse<PaymentRecord>> createPaymentRecord(
    CreatePaymentRecordInput paymentRecord,
  ) async {
    final response = await documentNodeMutationCreatePaymentRecord.execute(
      httpClient,
      Mutation$CreatePaymentRecord.fromJson,
      variables: Variables$Mutation$CreatePaymentRecord(
        input: Input$CreatePaymentRecordInput.fromJson(paymentRecord.toJson()),
      ),
    );

    if (response.hasErrors() || response.data?.createPaymentRecord == null) {
      return TicketServiceApiResponse(
        isSuccess: false,
        error: ApiError(
          errorCode: '',
          errorMessage: response.errors?.map((x) => x.message).join(',') ?? '',
          details: {},
        ),
      );
    }

    return TicketServiceApiResponse<PaymentRecord>.fromJson(
      response.data!.createPaymentRecord.toJson(),
      (json) => PaymentRecord.fromJson(json! as Map<String, dynamic>),
    );
  }

  @override
  Future<(List<PaymentRecord>, EmrQueryGraphQLMetadata<bool>)>
  searchPaymentRecords({
    String? after,
    String? before,
    int? first,
    int? last,
    Input$PaymentRecordSearchInput? input,
    List<Input$PaymentRecordSortInput>? order,
  }) async {
    final results = await documentNodeQuerypaymentRecords.execute(
      httpClient,
      Query$paymentRecords.fromJson,
      variables: Variables$Query$paymentRecords(
        input: input ?? Input$PaymentRecordSearchInput(),
        after: after,
        before: before,
        first: first,
        last: last,
        order: order,
      ),
    );

    if (results.hasErrors()) {
      throw Exception(results.errors);
    }
    final records =
        results.data?.paymentRecords?.nodes
            ?.map((e) => PaymentRecord.fromJson(e.toJson()))
            .toList() ??
        [];
    return (
      records,
      EmrQueryGraphQLMetadata(
        true,
        results.data?.paymentRecords?.totalCount ?? 0,
        EmrQueryGraphQLPageInfo(
          hasPreviousPage:
              results.data?.paymentRecords?.pageInfo.hasPreviousPage ?? false,
          hasNextPage:
              results.data?.paymentRecords?.pageInfo.hasNextPage ?? false,
          startCursor: results.data?.paymentRecords?.pageInfo.startCursor,
          endCursor: results.data?.paymentRecords?.pageInfo.endCursor,
        ),
      ),
    );
  }

  @override
  Future<ApiResponse<bool>> cancelPaymentRequestAsync(
    String paymentRecordId,
  ) async {
    final result = await documentNodeMutationcancelPayment.execute(
      httpClient,
      Mutation$cancelPayment.fromJson,
      variables: Variables$Mutation$cancelPayment(
        paymentRecordId: paymentRecordId,
      ),
    );
    if (result.hasErrors() ||
        !(result.data?.cancelPayment.isSuccess ?? false)) {
      return ApiResponse(
        success: false,
        message: result.hasErrors()
            ? result.errors?.map((x) => x.message).join(',') ?? ''
            : result.data?.cancelPayment.error?.errorMessage ?? '',
      );
    }
    return ApiResponse(data: result.data?.cancelPayment.result ?? false);
  }

  @override
  Future<TicketServiceApiResponse<bool>> unpayPaymentAsync(
    String paymentRecordId,
  ) async {
    final result = await documentNodeMutationUnpayPaymentRecord.execute(
      httpClient,
      Mutation$UnpayPaymentRecord.fromJson,
      variables: Variables$Mutation$UnpayPaymentRecord(
        paymentRecordId: paymentRecordId,
      ),
    );

    if (result.hasErrors() || result.data?.unpayPaymentRecord == null) {
      return TicketServiceApiResponse(
        isSuccess: false,
        error: ApiError(
          errorCode: '',
          errorMessage: result.errors?.map((x) => x.message).join(',') ?? '',
          details: {},
        ),
      );
    }

    return TicketServiceApiResponse<bool>.fromJson(
      result.data!.unpayPaymentRecord.toJson(),
      (json) => (json as bool?) ?? false,
    );
  }

  @override
  Future<bool> isPaymentAuthorizationRequired(
    double totalAmount,
    String yardCode,
  ) async {
    final result = await documentNodeQueryIsPaymentAuthorizationRequired
        .execute(
          httpClient,
          Query$IsPaymentAuthorizationRequired.fromJson,
          variables: Variables$Query$IsPaymentAuthorizationRequired(
            totalAmount: totalAmount,
            yardCode: yardCode,
          ),
        );
    if (result.hasErrors()) {
      return false;
    }
    return result.data?.isPaymentAuthorizationRequired ?? false;
  }

  @override
  Future<ApiResponse<PaymentRecord>> getPaymentRecord(
    String paymentRecordId,
  ) async {
    final result = await documentNodeQueryGetPaymentRecord.execute(
      httpClient,
      Query$GetPaymentRecord.fromJson,
      variables: Variables$Query$GetPaymentRecord(id: paymentRecordId),
    );
    if (result.hasErrors() || result.data?.paymentRecord == null) {
      return ApiResponse(
        success: false,
        message: result.errors?.map((x) => x.message).join(',') ?? '',
      );
    }
    return ApiResponse(
      data: PaymentRecord.fromJson(result.data!.paymentRecord.toJson()),
    );
  }

  @override
  Future<Uint8List> print(Object data) async {
    final pdfResponse = await httpClient.post(
      Uri.parse('$pdfPiPrintUrl/api/Print'),
      body: jsonEncode(data),
      headers: {'accept': '*/*'},
    );

    if (pdfResponse.statusCode != 200) throw Exception(pdfResponse.statusCode);

    return pdfResponse.bodyBytes;
  }

  @override
  Future<
    (Map<String, PaymentValidationResult>, PaymentDeductions, List<Ticket>)
  >
  validateTicketsWithPaymentMethod(
    PaymentMethod paymentMethod,
    List<String> ticketIds,
    List<SplitPaymentBreakup>? splitPaymentBreakups,
    List<AdvanceOffsetInfo>? advanceOverrides,
    String yardId,
  ) async {
    final results = await documentNodeQueryValidateTicketWithPaymentMethod
        .execute(
          httpClient,
          Query$ValidateTicketWithPaymentMethod.fromJson,
          variables: Variables$Query$ValidateTicketWithPaymentMethod(
            ticketIds: ticketIds,
            paymentMethod: mapToGraphQLPaymentMethod(paymentMethod),
            splitPaymentBreakups: splitPaymentBreakups
                ?.map(
                  (item) =>
                      Input$SplitPaymentBreakupInput.fromJson(item.toJson()),
                )
                .toList(),
            advanceOverrides: advanceOverrides
                ?.map(
                  (item) =>
                      Input$AdvanceOffsetInfoInput.fromJson(item.toJson()),
                )
                .toList(),
            payingYardId: yardId,
          ),
        );

    if (results.hasErrors()) {
      throw Exception(results.errors);
    }

    return (
      {
        for (final item in results.data!.validateTicketsWithPaymentMethod)
          item.key: PaymentValidationResult.fromJson(item.value.toJson()),
      },
      PaymentDeductions.fromJson(
        results.data!.paymentDeductionsForTickets.toJson(),
      ),
      results.data!.ticketsById
          .map((ticket) => Ticket.fromJson(ticket.toJson()))
          .toList(),
    );
  }

  @override
  Future<(PaymentValidationResult?, PaymentDeductions)>
  validateAdvanceWithPaymentMethod(
    PaymentMethod paymentMethod,
    String advanceId,
    List<SplitPaymentBreakup>? splitPaymentBreakups,
    String payingYardId,
  ) async {
    final results = await documentNodeQueryValidateAdvanceWithPaymentMethod
        .execute(
          httpClient,
          Query$ValidateAdvanceWithPaymentMethod.fromJson,
          variables: Variables$Query$ValidateAdvanceWithPaymentMethod(
            advanceId: advanceId,
            payingYardId: payingYardId,
            paymentMethod: mapToGraphQLPaymentMethod(paymentMethod),
            splitPaymentBreakups: splitPaymentBreakups
                ?.map(
                  (item) =>
                      Input$SplitPaymentBreakupInput.fromJson(item.toJson()),
                )
                .toList(),
          ),
        );

    if (results.hasErrors()) {
      throw Exception(results.errors);
    }

    return (
      PaymentValidationResult.fromJson(
        results.data!.validateAdvanceWithPaymentMethod.toJson(),
      ),
      PaymentDeductions.fromJson(
        results.data!.paymentDeductionsForAdvance.toJson(),
      ),
    );
  }

  @override
  Future<ApiResponse<PaymentRecord>> getPaymentRecordByTicketId(
    String ticketId,
  ) async {
    final result = await documentNodeQuerypaymentRecordByTicketId.execute(
      httpClient,
      Query$paymentRecordByTicketId.fromJson,
      variables: Variables$Query$paymentRecordByTicketId(ticketId: ticketId),
    );
    if (result.hasErrors() || result.data?.paymentRecordByTicketId == null) {
      return ApiResponse(
        success: false,
        message: result.errors?.map((x) => x.message).join(',') ?? '',
      );
    }
    return ApiResponse(
      data: PaymentRecord.fromJson(
        result.data!.paymentRecordByTicketId!.toJson(),
      ),
    );
  }

  @override
  Future<Devices> getDevicesByYard(String yardCode) async {
    final result = await documentNodeQueryGetDevices.execute(
      httpClient,
      Query$GetDevices.fromJson,
      variables: Variables$Query$GetDevices(
        input: Input$GetDevicesInput(yardCode: yardCode),
      ),
    );
    if (result.hasErrors() || result.data?.devices == null) {
      throw Exception(result.errors);
    }
    return Devices.fromJson(result.data!.devices!.edges!.first.node.toJson());
  }

  @override
  Future<Account> getAccountById(String accountId) async {
    final result = await documentNodeQueryGetAccountDetails.execute(
      httpClient,
      Query$GetAccountDetails.fromJson,
      variables: Variables$Query$GetAccountDetails(accountId: accountId),
    );

    // ignore: deprecated_member_use
    if (result.hasErrors() || result.data?.accountById == null) {
      throw Exception(result.errors);
    }
    // ignore: deprecated_member_use
    return Account.fromJson(result.data!.accountById.toJson());
  }

  @override
  Future<Map<String, dynamic>> getPaymentMethodNames() async {
    final response = await documentNodeQueryGetReferenceData.execute(
      httpClient,
      Query$GetReferenceData.fromJson,
      variables: {'name': 'paymentMethodNames'},
    );
    return (response.data?.referenceData?['Data'] as Map<String, dynamic>?) ??
        {};
  }

  @override
  Future<TicketServiceApiResponse<TicketRemittance?>> reprintRemittanceCopy(
    String paymentRecordId,
  ) async {
    final result = await documentNodeMutationPrintRemittanceCopy.execute(
      httpClient,
      Mutation$PrintRemittanceCopy.fromJson,
      variables: Variables$Mutation$PrintRemittanceCopy(
        paymentRecordId: paymentRecordId,
      ),
    );

    if (result.hasErrors() || result.data?.printRemittanceCopy == null) {
      return TicketServiceApiResponse(
        isSuccess: false,
        error: ApiError(
          errorCode: '',
          errorMessage: result.errors?.map((x) => x.message).join(',') ?? '',
          details: {},
        ),
      );
    }

    return TicketServiceApiResponse<TicketRemittance?>.fromJson(
      result.data!.printRemittanceCopy.toJson(),
      (json) => TicketRemittance.fromJson(json! as Map<String, dynamic>),
    );
  }

  @override
  Future<TicketServiceApiResponse<bool>> printAtmQrCode(
    String paymentRecordId,
  ) async {
    final result = await documentNodeMutationPrintAtmQrCode.execute(
      httpClient,
      Mutation$PrintAtmQrCode.fromJson,
      variables: Variables$Mutation$PrintAtmQrCode(
        paymentRecordId: paymentRecordId,
      ),
    );

    if (result.hasErrors() || result.data?.printAtmQrCode == null) {
      return TicketServiceApiResponse(
        isSuccess: false,
        error: ApiError(
          errorCode: '',
          errorMessage: result.errors?.map((x) => x.message).join(',') ?? '',
          details: {},
        ),
      );
    }

    return TicketServiceApiResponse(
      isSuccess: result.data!.printAtmQrCode.isSuccess,
      result: result.data!.printAtmQrCode.result,
      error: result.data?.printAtmQrCode.error == null
          ? null
          : ApiError.fromJson(result.data!.printAtmQrCode.error!.toJson()),
      warning: result.data?.printAtmQrCode.warning == null
          ? null
          : ApiWarning.fromJson(result.data!.printAtmQrCode.warning!.toJson()),
    );
  }

  @override
  GraphQLSubscriptionListener<Map<String, dynamic>>
    getPaymentRecordApprovalListener({
      required String url,
      required String Function() getToken,
      required void Function(GraphQLResponse<Map<String, dynamic>>)
        onDataReceived,
      }) => GraphQLSubscriptionListener(
      baseUrl: url,
      getToken: getToken,
      node: documentNodeSubscriptionPaymentRecordStatusUpdated,
      fromJson: (item) => item['paymentRecordStatusUpdated'] as
        Map<String, dynamic>,
      onDataReceived: onDataReceived);
}
