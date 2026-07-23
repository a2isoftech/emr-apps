import 'dart:async';
import 'dart:convert';

import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_core_api/graphql/fragments/payment/payment_approval.graphql.dart';
import 'package:emr_core_api/graphql/fragments/payment/payment_record.graphql.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_tickets/emr_one_tickets.dart';
import 'package:emr_one_tickets/exceptions/exceptions.dart';
import 'package:emr_one_tickets/extensions/graphql_response_extensions.dart';
import 'package:emr_one_tickets/services/gallery_downloader.dart';
import 'package:http/http.dart';

class TicketsService {
  TicketsService({
    required this.httpClient,
    required this.contentUrl,
    this.cacheTtl = const Duration(minutes: 1),
  });

  final BaseClient httpClient;
  final Duration cacheTtl;
  final String contentUrl;

  Future<
      (
        List<Query$SearchTrade2Tickets$searchTrade2Tickets$nodes>,
        EmrQueryGraphQLMetadata<Query$SearchTrade2TicketsFacet>
      )> searchTickets({
    String? query,
    List<String>? depotFilters,
    List<String>? vehicleFilters,
    List<String>? gradeFilters,
    Enum$Trade2TicketCategory? ticketCategory,
    Enum$Trade2TicketStatus? ticketStatus,
    Enum$Trade2TicketType? ticketType,
    int? epochMin,
    int? epochMax,
    String? before,
    String? after,
    int? first,
    int? last,
    List<Input$Trade2TicketSortInput>? order,
  }) async {
    final facets = await searchTicketsFacet(
      query: query,
      depotFilters: depotFilters,
      vehicleFilters: vehicleFilters,
      gradeFilters: gradeFilters,
      ticketCategory: ticketCategory,
      ticketStatus: ticketStatus,
      ticketType: ticketType,
      epochMin: epochMin,
      epochMax: epochMax,
    );

    final response = await documentNodeQuerySearchTrade2Tickets.execute(
      httpClient,
      Query$SearchTrade2Tickets.fromJson,
      variables: Variables$Query$SearchTrade2Tickets(
        before: before,
        after: after,
        first: first,
        last: last,
        order: order,
        input: Input$SearchTrade2TicketsInput(
          query: query == null || query.isEmpty ? null : '$query*',
          ticketCategory: ticketCategory,
          ticketStatus: ticketStatus,
          ticketType: ticketType,
          depotFilter: depotFilters,
          gradeFilter: gradeFilters,
          epochMin: epochMin,
          epochMax: epochMax,
          vehicleNoFilter: vehicleFilters,
        ),
      ),
    );

    if (response.hasErrors()) {
      throw Exception(response.errors);
    }

    return (
      response.data?.searchTrade2Tickets?.nodes ?? [],
      EmrQueryGraphQLMetadata<Query$SearchTrade2TicketsFacet>(
        facets,
        response.data?.searchTrade2Tickets?.totalCount ?? 0,
        EmrQueryGraphQLPageInfo(
          hasPreviousPage:
              response.data?.searchTrade2Tickets?.pageInfo.hasPreviousPage ??
                  false,
          hasNextPage:
              response.data?.searchTrade2Tickets?.pageInfo.hasNextPage ?? false,
          startCursor: response.data?.searchTrade2Tickets?.pageInfo.startCursor,
          endCursor: response.data?.searchTrade2Tickets?.pageInfo.endCursor,
        ),
      )
    );
  }

  Future<Query$SearchTrade2TicketsFacet> searchTicketsFacet({
    String? query,
    List<String>? depotFilters,
    List<String>? vehicleFilters,
    List<String>? gradeFilters,
    Enum$Trade2TicketCategory? ticketCategory,
    Enum$Trade2TicketStatus? ticketStatus,
    Enum$Trade2TicketType? ticketType,
    int? epochMin,
    int? epochMax,
  }) async {
    final response = await documentNodeQuerySearchTrade2TicketsFacet.execute(
      httpClient,
      Query$SearchTrade2TicketsFacet.fromJson,
      variables: Variables$Query$SearchTrade2TicketsFacet(
        input: Input$SearchTrade2TicketsInput(
          query: query == null || query.isEmpty ? null : '$query*',
          ticketCategory: ticketCategory,
          ticketStatus: ticketStatus,
          ticketType: ticketType,
          vehicleNoFilter: vehicleFilters,
          depotFilter: depotFilters,
          gradeFilter: gradeFilters,
          epochMin: epochMin,
          epochMax: epochMax,
        ),
      ),
    );

    if (response.hasErrors()) {
      throw Exception(response.errors);
    }

    return response.data!;
  }

  Future<Mutation$CreateTicketGallery> createTicketGallery(
    String title,
    List<String> ticketIds,
  ) async {
    final response = await documentNodeMutationCreateTicketGallery.execute(
      httpClient,
      Mutation$CreateTicketGallery.fromJson,
      variables: Variables$Mutation$CreateTicketGallery(
        input: Input$CreateTicketGalleryInput(
          title: title,
          ticketIds: ticketIds,
          createdBy: 'emr_one_tickets',
          createdDate: DateTime.now(),
        ),
      ),
    );

    if (response.hasErrors()) {
      throw Exception(response.errors);
    }

    return response.data!;
  }

  Future<GraphQLResponse<(TicketGallery, String)>> loadTicketGallery(
    String id,
  ) {
    return documentNodeQueryLoadTicketGallery.execute(
      httpClient,
      (data) {
        return (
          TicketGallery.fromJson(
            (data['loadTicketGalleryDocument']
                as Map<String, dynamic>)['gallery'] as Map<String, dynamic>,
          ),
          (data['loadTicketGalleryDocument']
              as Map<String, dynamic>)['changeVector'] as String
        );
      },
      variables: Variables$Query$LoadTicketGallery(id: id),
    );
  }

  Future<GraphQLResponse<(TicketGallery, String)>> saveTicketGallery(
    TicketGallery ticketGallery, {
    String changeVector = '',
  }) {
    final ticketJson = jsonEncode(ticketGallery.toJson());

    final deserialized = Input$TicketGalleryInput.fromJson(
      jsonDecode(ticketJson) as Map<String, dynamic>,
    );

    return documentNodeMutationSaveTicketGallery.execute(
      httpClient,
      (data) {
        return (
          TicketGallery.fromJson(
            (data['saveTicketGallery'] as Map<String, dynamic>)['gallery']
                as Map<String, dynamic>,
          ),
          (data['saveTicketGallery'] as Map<String, dynamic>)['changeVector']
              as String
        );
      },
      variables: Variables$Mutation$SaveTicketGallery(
        changeVector: changeVector,
        gallery: deserialized,
      ),
    );
  }

  Future<GraphQLResponse<String?>> createPublicAlbum(String galleryId) {
    return documentNodeMutationCreatePublicAlbum.execute(
      httpClient,
      (data) => data['createPublicAlbum'] as String,
      variables: Variables$Mutation$CreatePublicAlbum(id: galleryId),
    );
  }

  Future<bool> createZipArchive(
    String zipdownloadUrl,
    String galleryId,
    List<String> images,
    String filename,
  ) =>
      TicketGalleryDownloader.createZipArchive(
        Uri.parse(zipdownloadUrl),
        httpClient,
        galleryId,
        images,
        filename,
      );

  Future<Fragment$PaymentApproval> getPaymentApproval(
    String id,
  ) async {
    final response = await documentNodeQuerygetPaymentApproval.execute(
      httpClient,
      Query$getPaymentApproval.fromJson,
      variables: Variables$Query$getPaymentApproval(id: id),
    );

    if (response.hasErrors()) {
      return switch (response.errorCode) {
        PaymentApprovalErrorCodes.kPaymentApprovalNotFound =>
          throw PaymentApprovalNotFound(id),
        PaymentApprovalErrorCodes.kPaymentApprovalNotAuthorized =>
          throw PaymentApprovalNotAuthorized(id),
        _ => throw Exception(response.errors)
      };
    }

    return response.data!.loadPaymentApproval.entity;
  }

  Future<Fragment$PaymentRecordFields> getPaymentRecordById(String id) async {
    final response = await documentNodeQuerypaymentRecordById.execute(
      httpClient,
      Query$paymentRecordById.fromJson,
      variables: Variables$Query$paymentRecordById(id: id),
    );

    if (response.hasErrors()) {
      throw Exception(response.errors);
    }

    return response.data!.paymentRecord;
  }

  Future<bool> approvePaymentApproval(
    String id, {
    required bool isApproved,
  }) async {
    final response = await documentNodeMutationapprovePayment.execute(
      httpClient,
      Mutation$approvePayment.fromJson,
      variables: Variables$Mutation$approvePayment(
        id: id,
        approved: isApproved,
      ),
    );

    if (response.hasErrors()) {
      return switch (response.errorCode) {
        PaymentApprovalErrorCodes.kPaymentApprovalNotFound =>
          throw PaymentApprovalNotFound(id),
        PaymentApprovalErrorCodes.kPaymentApprovalNotAuthorized =>
          throw PaymentApprovalNotAuthorized(id),
        PaymentApprovalErrorCodes.kPaymentApprovalNotPending =>
          throw PaymentApprovalNotPending(id),
        _ => throw Exception(response.errors)
      };
    }

    return true;
  }

  Future<(bool, String?)> createPublicAlbumFromTicketGallery(
    String galleryId,
  ) async {
    final response = await httpClient.post(
      Uri.parse(
        '$contentUrl/api/Album?galleryId=$galleryId',
      ),
    );

    if (response.statusCode != 201) {
      EmrLogger.event(
        TicketsConstants.kTicketsTelemetryPublicUrlError,
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
      TicketsConstants.kTicketsTelemetryPublicUrlCreated,
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
}
