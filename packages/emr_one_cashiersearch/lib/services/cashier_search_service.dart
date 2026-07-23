import 'package:emr_core_api/graphql/queries/inventory/ticket/search_cashier_ticket_facets.graphql.dart';
import 'package:emr_core_api/graphql/queries/inventory/ticket/search_cashier_tickets.graphql.dart';
import 'package:emr_core_api/graphql/queries/inventory/ticket/search_edge_ticket_facets.graphql.dart';
import 'package:emr_core_api/graphql/queries/inventory/ticket/search_payment_tickets.graphql.dart';
import 'package:emr_core_api/graphql/queries/inventory/ticket/search_suggestions.graphql.dart';
import 'package:emr_core_api/graphql/queries/inventory/ticket/search_suggestions_ticket.graphql.dart';
import 'package:emr_core_api/graphql/queries/reference_data/get_yard_by_id.graphql.dart';
import 'package:emr_core_api/graphql/schema.graphql.dart';
import 'package:emr_core_api/models/api_response.dart';
import 'package:emr_one_cashiersearch/base/base_service.dart';
import 'package:emr_one_cashiersearch/models/ticket.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_sharedtypes/models/yard.dart';

abstract class ICashierSearchService extends BaseService {
  ICashierSearchService({required super.httpClient});

  Future<(List<Ticket>, EmrQueryGraphQLMetadata<Query$SearchEdgeTicketsFacet>)>
      searchTickets({
    String? after,
    String? before,
    int? first,
    int? last,
    Input$SearchTicketsInput? input,
    List<Input$SearchTicketsSortInput> order,
  });
  Future<Query$SearchEdgeTicketsFacet> getSearchTicketsFacets({
    Input$SearchTicketsInput? input,
  });

  Future<
      (
        List<Ticket>,
        EmrQueryGraphQLMetadata<Query$SearchCashierTicketsFacet>
      )> searchCashierTickets({
    String? after,
    String? before,
    int? first,
    int? last,
    Input$SearchCashierTicketsInput? input,
    List<Input$SearchTicketsSortInput> order,
  });
  Future<Query$SearchCashierTicketsFacet> getSearchCashierTicketsFacets({
    Input$SearchCashierTicketsInput? input,
  });

  Future<List<String>> searchSuggestions(
    String searchText,
    Enum$TicketSearchPropertyType propertyType,
  );

  Future<ApiResponse<Yard>> getYardById(String id);

  Future<List<(String id, int ticketNumber)>> searchTicketSuggestions(
    String searchText,
  );
}

class CashierSearchService extends ICashierSearchService {
  CashierSearchService({required super.httpClient});

  @override
  Future<(List<Ticket>, EmrQueryGraphQLMetadata<Query$SearchEdgeTicketsFacet>)>
      searchTickets({
    String? after,
    String? before,
    int? first,
    int? last,
    Input$SearchTicketsInput? input,
    List<Input$SearchTicketsSortInput>? order,
  }) async {
    final facets = await getSearchTicketsFacets(
      input: input,
    );
    final results = await documentNodeQuerysearchPaymentTickets.execute(
      httpClient,
      Query$searchPaymentTickets.fromJson,
      variables: Variables$Query$searchPaymentTickets(
        after: after,
        before: before,
        first: first,
        last: last,
        input: input ?? Input$SearchTicketsInput(),
        order: order,
      ),
    );

    if (results.hasErrors()) {
      throw Exception(results.errors);
    }

    final tickets = results.data?.searchTickets?.nodes
            ?.map((e) => Ticket.fromJson(e.toJson()))
            .toList() ??
        [];

    return (
      tickets,
      EmrQueryGraphQLMetadata<Query$SearchEdgeTicketsFacet>(
        facets,
        results.data?.searchTickets?.totalCount ?? 0,
        EmrQueryGraphQLPageInfo(
          hasPreviousPage:
              results.data?.searchTickets?.pageInfo.hasPreviousPage ?? false,
          hasNextPage:
              results.data?.searchTickets?.pageInfo.hasNextPage ?? false,
          startCursor: results.data?.searchTickets?.pageInfo.startCursor,
          endCursor: results.data?.searchTickets?.pageInfo.endCursor,
        ),
      )
    );
  }

  @override
  Future<Query$SearchEdgeTicketsFacet> getSearchTicketsFacets({
    Input$SearchTicketsInput? input,
  }) async {
    final results = await documentNodeQuerySearchEdgeTicketsFacet.execute(
      httpClient,
      Query$SearchEdgeTicketsFacet.fromJson,
      variables: Variables$Query$SearchEdgeTicketsFacet(
        input: input ?? Input$SearchTicketsInput(),
      ),
    );
    if (results.hasErrors()) {
      throw Exception(results.errors);
    }
    return results.data!;
  }

  @override
  Future<
      (
        List<Ticket>,
        EmrQueryGraphQLMetadata<Query$SearchCashierTicketsFacet>
      )> searchCashierTickets({
    String? after,
    String? before,
    int? first,
    int? last,
    Input$SearchCashierTicketsInput? input,
    List<Input$SearchTicketsSortInput>? order,
  }) async {
    final facets = await getSearchCashierTicketsFacets(
      input: input,
    );
    final results = await documentNodeQuerysearchCashierTickets.execute(
      httpClient,
      Query$searchCashierTickets.fromJson,
      variables: Variables$Query$searchCashierTickets(
        after: after,
        before: before,
        first: first,
        last: last,
        input: input ?? Input$SearchCashierTicketsInput(),
        order: order,
      ),
    );

    if (results.hasErrors()) {
      throw Exception(results.errors);
    }

    final tickets = results.data?.searchCashierTickets?.nodes
            ?.map((e) => Ticket.fromJson(e.toJson()))
            .toList() ??
        [];

    return (
      tickets,
      EmrQueryGraphQLMetadata<Query$SearchCashierTicketsFacet>(
        facets,
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
      )
    );
  }

  @override
  Future<Query$SearchCashierTicketsFacet> getSearchCashierTicketsFacets({
    Input$SearchCashierTicketsInput? input,
  }) async {
    final results = await documentNodeQuerySearchCashierTicketsFacet.execute(
      httpClient,
      Query$SearchCashierTicketsFacet.fromJson,
      variables: Variables$Query$SearchCashierTicketsFacet(
        input: input ?? Input$SearchCashierTicketsInput(),
      ),
    );
    if (results.hasErrors()) {
      throw Exception(results.errors);
    }
    return results.data!;
  }

  @override
  Future<List<String>> searchSuggestions(
    String searchText,
    Enum$TicketSearchPropertyType propertyType,
  ) async {
    final results = await documentNodeQuerysearchSuggestions.execute(
      httpClient,
      Query$searchSuggestions.fromJson,
      variables: Variables$Query$searchSuggestions(
        searchText: searchText,
        searchPropertyType: propertyType,
      ),
    );
    if (results.hasErrors()) {
      throw Exception(results.errors);
    }

    return results.data?.searchSuggestions ?? [];
  }

  @override
  Future<ApiResponse<Yard>> getYardById(String id) async {
    final results = await documentNodeQueryGetYardById.execute(
      httpClient,
      Query$GetYardById.fromJson,
      variables: Variables$Query$GetYardById(yardId: 'yards/$id'),
    );
    if (results.hasErrors()) {
      return ApiResponse(
        success: false,
        message: results.errors?.map((x) => x.message).firstOrNull ?? '',
      );
    }

    return ApiResponse(
      data: Yard.fromJson(results.data!.yard.toJson()),
    );
  }

  @override
  Future<List<(String id, int ticketNumber)>> searchTicketSuggestions(
    String searchText,
  ) async {
    final results = await documentNodeQuerysearchTicketSuggestions.execute(
      httpClient,
      Query$searchTicketSuggestions.fromJson,
      variables: Variables$Query$searchTicketSuggestions(
        searchText: searchText,
      ),
    );
    if (results.hasErrors()) {
      throw Exception(results.errors);
    }

    return results.data?.searchTicketSuggestions
            .map((e) => (e.id, e.ticketNumber))
            .toList() ??
        [];
  }
}
