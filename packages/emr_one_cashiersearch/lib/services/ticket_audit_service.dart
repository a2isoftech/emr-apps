import 'package:emr_core_api/emr_core_api.dart' hide Ticket;
import 'package:emr_core_api/graphql/queries/payment/payment_posting_task_for_payment_record.graphql.dart';
import 'package:emr_one_cashiersearch/base/base_service.dart';
import 'package:emr_one_cashiersearch/common/enums.dart';
import 'package:emr_one_cashiersearch/models/payment_posting_task.dart';
import 'package:emr_one_cashiersearch/models/ticket.dart';
import 'package:emr_one_cashiersearch/models/ticket_service_api_response.dart';
import 'package:emr_one_core/emr_one_core.dart';

abstract class ITicketAuditService extends BaseService {
  ITicketAuditService({required super.httpClient});
  Future<
    (List<Ticket>, EmrQueryGraphQLMetadata<Query$SearchCashierTicketsFacet>)
  >
  searchTickets({
    String? after,
    String? before,
    int? first,
    int? last,
    Input$SearchCashierTicketsInput? input,
    bool includeAllWbSyncTasks = false,
  });
  Future<PaymentPostingTask?> getPaymentPostingTaskByPaymentRecord(
    String paymentRecordId,
  );

  Future<TicketServiceApiResponse<bool>> resyncTicket(String ticketId);
  Future<TicketServiceApiResponse<bool>> createWeighbridgeSyncTicketTask(
    String ticketId,
  );

  Future<TicketServiceApiResponse<bool>> updatePostingTaskStatus(
    String postingTaskId,
    PaymentPostingTaskStatusEnum status,
  );
}

class TicketAuditService extends ITicketAuditService {
  TicketAuditService({required super.httpClient});

  @override
  Future<PaymentPostingTask?> getPaymentPostingTaskByPaymentRecord(
    String paymentRecordId,
  ) async {
    final result = await documentNodeQuerygetPaymentPostingTasksForPaymentRecord
        .execute(
          httpClient,
          Query$getPaymentPostingTasksForPaymentRecord.fromJson,
          variables: Variables$Query$getPaymentPostingTasksForPaymentRecord(
            paymentRecordIds: [paymentRecordId],
          ),
        );
    if (result.hasErrors()) {
      throw Exception(result.errors);
    }

    final postingTask =
        result.data?.paymentPostingTasksForPaymentRecord.firstOrNull;
    return postingTask != null
        ? PaymentPostingTask.fromJson(postingTask.toJson())
        : null;
  }

  @override
  Future<
    (List<Ticket>, EmrQueryGraphQLMetadata<Query$SearchCashierTicketsFacet>)
  >
  searchTickets({
    String? after,
    String? before,
    int? first,
    int? last,
    Input$SearchCashierTicketsInput? input,
    bool includeAllWbSyncTasks = false,
  }) async {
    final results = await documentNodeQuerysearchCashierTickets.execute(
      httpClient,
      Query$searchCashierTickets.fromJson,
      variables: Variables$Query$searchCashierTickets(
        after: after,
        before: before,
        first: first,
        last: last,
        input: input ?? Input$SearchCashierTicketsInput(),
        includeAllWbSyncTasks: includeAllWbSyncTasks,
      ),
    );

    if (results.hasErrors()) {
      throw Exception(results.errors);
    }
    var tickets = <Ticket>[];
    try {
      tickets =
          results.data?.searchCashierTickets?.nodes
              ?.map((e) => Ticket.fromJson(e.toJson()))
              .toList() ??
          [];
    } catch (e) {
      tickets = [];
    }

    return (
      tickets,
      EmrQueryGraphQLMetadata<Query$SearchCashierTicketsFacet>(
        Query$SearchCashierTicketsFacet(searchCashierTicketsFacet: []),
        results.data?.searchCashierTickets?.totalCount ?? 0,
        EmrQueryGraphQLPageInfo(
          hasPreviousPage:
              results.data?.searchCashierTickets?.pageInfo.hasPreviousPage ??
              false,
          hasNextPage:
              results.data?.searchCashierTickets?.pageInfo.hasNextPage ?? false,
          startCursor: results.data?.searchCashierTickets?.pageInfo.startCursor,
          endCursor: results.data?.searchCashierTickets?.pageInfo.endCursor,
        ),
      ),
    );
  }

  @override
  Future<TicketServiceApiResponse<bool>> resyncTicket(String ticketId) async {
    final result = await documentNodeMutationReSyncTicket.execute(
      httpClient,
      Mutation$ReSyncTicket.fromJson,
      variables: Variables$Mutation$ReSyncTicket(ticketId: ticketId),
    );

    if (result.hasErrors() || result.data?.reSyncTicket == null) {
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
      result.data!.reSyncTicket.toJson(),
      (json) => (json as bool?) ?? false,
    );
  }

  @override
  Future<TicketServiceApiResponse<bool>> createWeighbridgeSyncTicketTask(
    String ticketId,
  ) async {
    final variable = Variables$Mutation$createSyncWeighbridgeTicketTask(
      ticketId: ticketId,
    );
    final response = await documentNodeMutationcreateSyncWeighbridgeTicketTask
        .execute(
          httpClient,
          Mutation$createSyncWeighbridgeTicketTask.fromJson,
          variables: variable,
        );

    if (response.hasErrors() ||
        response.data?.createSyncWeighbridgeTicketTask == null) {
      return TicketServiceApiResponse(
        isSuccess: false,
        error: ApiError(
          errorCode: '',
          errorMessage: response.errors?.map((x) => x.message).join(',') ?? '',
          details: {},
        ),
      );
    }

    return TicketServiceApiResponse<bool>.fromJson(
      response.data!.createSyncWeighbridgeTicketTask.toJson(),
      (json) => (json as bool?) ?? false,
    );
  }

  @override
  Future<TicketServiceApiResponse<bool>> updatePostingTaskStatus(
    String postingTaskId,
    PaymentPostingTaskStatusEnum status,
  ) async {
    final result = await documentNodeMutationupdatePostingTaskStatus.execute(
      httpClient,
      Mutation$updatePostingTaskStatus.fromJson,
      variables: Variables$Mutation$updatePostingTaskStatus(
        postingTaskId: postingTaskId,
        paymentPostingTaskStatus: Enum$PaymentPostingTaskStatus.fromJson(
          _paymentPostingTaskStatusEnumEnumMap[status] ?? '',
        ),
      ),
    );

    if (result.hasErrors() || result.data?.setPostingTaskStatus == null) {
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
      result.data!.setPostingTaskStatus.toJson(),
      (json) => (json as bool?) ?? false,
    );
  }

  final _paymentPostingTaskStatusEnumEnumMap = {
    PaymentPostingTaskStatusEnum.ready: 'READY',
    PaymentPostingTaskStatusEnum.inProgress: 'IN_PROGRESS',
    PaymentPostingTaskStatusEnum.error: 'ERROR',
    PaymentPostingTaskStatusEnum.success: 'SUCCESS',
  };
}
