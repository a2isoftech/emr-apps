import 'dart:async';
import 'dart:convert';

import 'package:emr_core_api/emr_core_api.dart' hide Ticket;
import 'package:emr_one_cashiersearch/emr_one_cashiersearch.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:http/http.dart';

class EdgeTicketsService {
  EdgeTicketsService({
    required this.httpClient,
    required this.contentUrl,
    this.cacheTtl = const Duration(minutes: 1),
  });

  final BaseClient httpClient;
  final Duration cacheTtl;
  final String contentUrl;

  Future<
      (
        List<Query$SearchEdgeTickets$searchTickets$nodes>,
        EmrQueryGraphQLMetadata<Query$SearchEdgeTicketsFacet>
      )> searchTickets({
    String? query,
    List<String>? vehicleFilters,
    List<String>? productFilters,
    List<String>? partyAccountNos,
    List<String>? partyAccountNames,
    List<String>? contractOrderBookTypeNames,
    List<String>? contractNumbers,
    Enum$TicketCategory? ticketCategory,
    Enum$TicketStatus? ticketStatus,
    Enum$TicketType? ticketType,
    List<String>? yardCodes,
    int? epochMin,
    int? epochMax,
    bool? locked,
    List<int>? ticketNumbers,
    String? before,
    String? after,
    int? first,
    int? last,
    List<Input$SearchTicketsSortInput>? order,
  }) async {
    final facets = await searchTicketsFacet(
      query: query,
      vehicleFilters: vehicleFilters,
      productFilters: productFilters,
      ticketCategory: ticketCategory,
      ticketStatus: ticketStatus,
      ticketType: ticketType,
      epochMin: epochMin,
      epochMax: epochMax,
      partyAccountNos: partyAccountNos,
      partyAccountNames: partyAccountNames,
      contractOrderBookTypeNames: contractOrderBookTypeNames,
      contractNumbers: contractNumbers,
      yardCodes: yardCodes,
      ticketNumbers: ticketNumbers,
    );

    final response = await documentNodeQuerySearchEdgeTickets.execute(
      httpClient,
      Query$SearchEdgeTickets.fromJson,
      variables: Variables$Query$SearchEdgeTickets(
        before: before,
        after: after,
        first: first,
        last: last,
        order: order,
        input: Input$SearchTicketsInput(
          query: query == null || query.isEmpty ? null : '*$query*',
          ticketCategory: ticketCategory,
          ticketStatus: ticketStatus == null ? null : [ticketStatus],
          yardCodes: yardCodes,
          ticketType: ticketType,
          productFilter: productFilters,
          epochMin: epochMin,
          epochMax: epochMax,
          vehicleNoFilter: vehicleFilters,
          partyAccountNos: partyAccountNos,
          partyNames: partyAccountNames,
          contractOrderBookTypeNames: contractOrderBookTypeNames,
          contractNumbers: contractNumbers,
          locked: locked,
          ticketNos: ticketNumbers,
        ),
      ),
    );

    if (response.hasErrors()) {
      throw Exception(response.errors);
    }

    return (
      response.data?.searchTickets?.nodes ?? [],
      EmrQueryGraphQLMetadata<Query$SearchEdgeTicketsFacet>(
        facets,
        response.data?.searchTickets?.totalCount ?? 0,
        EmrQueryGraphQLPageInfo(
          hasPreviousPage:
              response.data?.searchTickets?.pageInfo.hasPreviousPage ?? false,
          hasNextPage:
              response.data?.searchTickets?.pageInfo.hasNextPage ?? false,
          startCursor: response.data?.searchTickets?.pageInfo.startCursor,
          endCursor: response.data?.searchTickets?.pageInfo.endCursor,
        ),
      )
    );
  }

  Future<Query$SearchEdgeTicketsFacet> searchTicketsFacet({
    String? query,
    List<String>? vehicleFilters,
    List<String>? productFilters,
    List<String>? partyAccountNos,
    List<String>? partyAccountNames,
    List<String>? contractOrderBookTypeNames,
    List<String>? contractNumbers,
    List<String>? yardCodes,
    Enum$TicketCategory? ticketCategory,
    Enum$TicketStatus? ticketStatus,
    Enum$TicketType? ticketType,
    int? epochMin,
    int? epochMax,
    List<int>? ticketNumbers,
  }) async {
    final response = await documentNodeQuerySearchEdgeTicketsFacet.execute(
      httpClient,
      Query$SearchEdgeTicketsFacet.fromJson,
      variables: Variables$Query$SearchEdgeTicketsFacet(
        input: Input$SearchTicketsInput(
          query: query == null || query.isEmpty ? null : '*$query*',
          ticketCategory: ticketCategory,
          ticketStatus: ticketStatus == null ? null : [ticketStatus],
          partyAccountNos: partyAccountNos,
          partyNames: partyAccountNames,
          contractOrderBookTypeNames: contractOrderBookTypeNames,
          contractNumbers: contractNumbers,
          yardCodes: yardCodes,
          ticketType: ticketType,
          vehicleNoFilter: vehicleFilters,
          productFilter: productFilters,
          epochMin: epochMin,
          epochMax: epochMax,
          ticketNos: ticketNumbers,
        ),
      ),
    );

    if (response.hasErrors()) {
      throw Exception(response.errors);
    }

    return response.data!;
  }

  Future<Mutation$CreateEdgeTicketGallery> createTicketGallery(
    String title,
    List<String> ticketIds,
  ) async {
    final response = await documentNodeMutationCreateEdgeTicketGallery.execute(
      httpClient,
      Mutation$CreateEdgeTicketGallery.fromJson,
      variables: Variables$Mutation$CreateEdgeTicketGallery(
        input: Input$CreateEdgeTicketGalleryInput(
          title: title,
          ticketIds: ticketIds,
        ),
      ),
    );

    if (response.hasErrors()) {
      throw Exception(response.errors);
    }

    return response.data!;
  }

  Future<GraphQLResponse<(EdgeTicketGallery, String)>> loadTicketGallery(
    String id,
  ) {
    return documentNodeQueryLoadEdgeTicketGallery.execute(
      httpClient,
      (data) {
        return (
          EdgeTicketGallery.fromJson(
            (data['loadEdgeTicketGalleryDocument']
                as Map<String, dynamic>)['gallery'] as Map<String, dynamic>,
          ),
          (data['loadEdgeTicketGalleryDocument']
              as Map<String, dynamic>)['changeVector'] as String
        );
      },
      variables: Variables$Query$LoadEdgeTicketGallery(id: id),
    );
  }

  Future<GraphQLResponse<(EdgeTicketGallery, String)>> saveTicketGallery(
    EdgeTicketGallery ticketGallery, {
    String changeVector = '',
  }) {
    final tempTicketGalley = EdgeTicketGallery(
      ticketGallery.id,
      [],
      ticketGallery.title,
      ticketGallery.excludedImageUrls,
      ticketGallery.publicUrl,
      ticketGallery.created,
      ticketGallery.modified,
    );

    final ticketJson = jsonEncode(tempTicketGalley.toJson());

    final deserialized = Input$EdgeTicketGalleryInput.fromJson(
      jsonDecode(ticketJson) as Map<String, dynamic>,
    );

    return documentNodeMutationSaveEdgeTicketGallery.execute(
      httpClient,
      (data) {
        return (
          EdgeTicketGallery.fromJson(
            (data['saveEdgeTicketGallery'] as Map<String, dynamic>)['gallery']
                as Map<String, dynamic>,
          ),
          (data['saveEdgeTicketGallery']
              as Map<String, dynamic>)['changeVector'] as String
        );
      },
      variables: Variables$Mutation$SaveEdgeTicketGallery(
        changeVector: changeVector,
        gallery: deserialized,
      ),
    );
  }

  Future<GraphQLResponse<String?>> createPublicAlbum(String galleryId) {
    return documentNodeMutationCreateEdgePublicAlbum.execute(
      httpClient,
      (data) => data['createEdgePublicAlbum'] as String,
      variables: Variables$Mutation$CreateEdgePublicAlbum(id: galleryId),
    );
  }

  Future<bool> createZipArchive(
    String zipdownloadUrl,
    String galleryId,
    List<String> images,
    String filename,
  ) =>
      GalleryDownloader.createZipArchive(
        Uri.parse(zipdownloadUrl),
        httpClient,
        galleryId,
        images,
        filename,
      );

  Future<List<String>> searchAccountNumber(String searchText) async {
    final results = await documentNodeQueryAccountSearchByAccountNumber.execute(
      httpClient,
      Query$AccountSearchByAccountNumber.fromJson,
      variables: Variables$Query$AccountSearchByAccountNumber(
        input: searchText,
      ),
    );

    if (results.hasErrors()) {
      throw Exception(results.errors);
    }
    return results.data?.searchAccountsByAccountNumber?.nodes
            ?.map((x) => x.code)
            .toSet()
            .toList() ??
        [];
  }

  Future<List<String>> searchAccountName(String searchText) async {
    final results = await documentNodeQueryAccountSearchByAccountName.execute(
      httpClient,
      Query$AccountSearchByAccountName.fromJson,
      variables: Variables$Query$AccountSearchByAccountName(
        input: searchText,
      ),
    );

    if (results.hasErrors()) {
      throw Exception(results.errors);
    }
    return results.data?.searchAccountsByAccountName?.nodes
            ?.map((x) => x.name)
            .toSet()
            .toList() ??
        [];
  }

  Future<List<String>> searchContractNumber(String searchText) async {
    final results = await documentNodeQueryContractSearchByCustomerRef.execute(
      httpClient,
      Query$ContractSearchByCustomerRef.fromJson,
      variables: Variables$Query$ContractSearchByCustomerRef(
        input: searchText,
      ),
    );

    if (results.hasErrors()) {
      throw Exception(results.errors);
    }
    return results.data?.searchContractsByCustomerReference?.nodes
            ?.map((x) => x.customerReference)
            .toSet()
            .toList() ??
        [];
  }

  Future<List<String>> searchOrderBookNumber(String searchText) async {
    final results = await documentNodeQuerySearchContractOrderBookName.execute(
      httpClient,
      Query$SearchContractOrderBookName.fromJson,
      variables: Variables$Query$SearchContractOrderBookName(
        input: searchText,
      ),
    );

    if (results.hasErrors()) {
      throw Exception(results.errors);
    }
    return results.data?.searchContractOrderBookName ?? [];
  }

  Future<List<String>> searchSuggestions(
    String searchText,
    Enum$TicketSearchPropertyType propertyType,
  ) {
    return switch (propertyType) {
      Enum$TicketSearchPropertyType.PARTY_ACCOUNT_NUMBER =>
        searchAccountNumber(searchText),
      Enum$TicketSearchPropertyType.PARTY_NAME => searchAccountName(searchText),
      Enum$TicketSearchPropertyType.CONTRACT_NUMBER =>
        searchContractNumber(searchText),
      Enum$TicketSearchPropertyType.CONTRACT_ORDER_BOOK_TYPE_NAME =>
        searchOrderBookNumber(searchText),
      _ => Future.value([])
    };
  }

  Future<(bool, String?)> createPublicAlbumFromTicketGallery(
    String galleryId,
  ) async {
    final response = await httpClient.post(
      Uri.parse(
        '$contentUrl/api/Album?galleryId=$galleryId',
      ),
      headers: {
        'Access-Control-Allow-Origin': '*',
      },
    );
    if (response.statusCode != 201) {
      EmrLogger.event(
        source: 'Edge Ticket Service',
        TicketConstants.kTicketsTelemetryPublicUrlError,
        params: {
          'galleryId': galleryId,
          'response': '{"statusCode": ${response.statusCode}}',
        },
      );
      return (false, null);
    }
    // The response body contains a quoted location URL
    final location = response.body.replaceAll('"', '');
    // remove all quotes from location
    EmrLogger.event(
      source: 'Edge Ticket Service',
      TicketConstants.kTicketsTelemetryPublicUrlCreated,
      params: {
        'galleryId': galleryId,
        'response': location,
      },
    );

    return (
      true,
      location,
    );
  }

  Future<Ticket?> getTicketById(String ticketId) async {
    final response = await documentNodeQuerygetTicketById.execute(
      httpClient,
      Query$getTicketById.fromJson,
      variables: Variables$Query$getTicketById(id: ticketId),
    );
    if (response.data?.ticket == null) {
      return null;
    }

    return Ticket.fromJson(response.data!.ticket.toJson());
  }
}
