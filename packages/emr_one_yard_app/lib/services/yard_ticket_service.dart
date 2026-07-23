import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_core_api/graphql/mutations/yard_app/tickets/add_inspection_comment.graphql.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:http/http.dart';

class YardTicketService {
  YardTicketService({
    required BaseClient httpClient,
    required String apiUrl,
    required this.mediaApiUrl,
    this.cacheTtl = const Duration(minutes: 1),
  })  : _httpClient = httpClient,
        _apiUrl = apiUrl;

  final BaseClient _httpClient;
  final Duration cacheTtl;
  final String _apiUrl;
  final String mediaApiUrl;

  Future<List<Query$SearchTickets$searchTickets$nodes>> getYardTickets({
    required Input$SearchTicketsInput input,
    required int count,
    List<Input$SearchTicketsSortInput>? order,
  }) async {
    final response = await documentNodeQuerySearchTickets.execute(
      _httpClient,
      url: Uri.tryParse(_apiUrl),
      Query$SearchTickets.fromJson,
      variables: Variables$Query$SearchTickets(
        order: order,
        input: input,
        first: count,
      ),
    );

    if (response.hasErrors()) {
      throw Exception(response.errors);
    }

    return response.data?.searchTickets?.nodes ?? [];
  }

  Future<Query$GetTicketDetails?> getTicketDetails(String id) async {
    final response = await documentNodeQueryGetTicketDetails.execute(
      _httpClient,
      url: Uri.tryParse(_apiUrl),
      Query$GetTicketDetails.fromJson,
      variables: Variables$Query$GetTicketDetails(input: id),
    );

    if (response.hasErrors()) {
      throw Exception(response.errors);
    }
    if (response.data == null) {
      return null;
    }
    return response.data;
  }

  Future<bool> updateTicketMedia(
    Input$TicketInspectionMediaInput input,
  ) async {
    final response =
        await documentNodeMutationUpsertTicketInspectionMedia.execute(
      _httpClient,
      url: Uri.tryParse(_apiUrl),
      Mutation$UpsertTicketInspectionMedia.fromJson,
      variables: Variables$Mutation$UpsertTicketInspectionMedia(input: input),
    );

    if (response.hasErrors()) {
      throw Exception(response.errors);
    }

    return response.data != null;
  }

  Future<List<Query$GetTicketDiscrepantTypes$ticketDiscrepantTypes>>
      getTicketDiscrepantTypes() async {
    final response = await documentNodeQueryGetTicketDiscrepantTypes.execute(
      _httpClient,
      url: Uri.tryParse(_apiUrl),
      Query$GetTicketDiscrepantTypes.fromJson,
    );

    if (response.hasErrors()) {
      throw Exception(response.errors);
    }

    return response.data?.ticketDiscrepantTypes ?? [];
  }

  Future<bool> updateMediaComment(
    String ticketId,
    int line,
    String? note,
    String mediaUrl,
  ) async {
    final response = await documentNodeMutationUpdateMediaComment.execute(
      _httpClient,
      url: Uri.tryParse(_apiUrl),
      Mutation$UpdateMediaComment.fromJson,
      variables: Variables$Mutation$UpdateMediaComment(
        ticketId: ticketId,
        media: Input$YardAppMediaInput(
          url: mediaUrl,
          lineNumber: line,
          comment: note,
        ),
      ),
    );

    if (response.hasErrors()) {
      throw Exception(response.errors);
    }

    return response.data != null;
  }

  Future<bool> upsertInspectionDetails(
    Input$TicketInspectionInput input,
  ) async {
    final response =
        await documentNodeMutationUpsertTicketInspectionDetails.execute(
      _httpClient,
      url: Uri.tryParse(_apiUrl),
      Mutation$UpsertTicketInspectionDetails.fromJson,
      variables: Variables$Mutation$UpsertTicketInspectionDetails(input: input),
    );

    if (response.hasErrors()) {
      throw Exception(response.errors);
    }

    return response.data != null;
  }

  Future<bool> addInspectionComment(
    String ticketId,
    int line,
    String comment,
  ) async {
    final response = await documentNodeMutationAddInspectionComment.execute(
      _httpClient,
      url: Uri.tryParse(_apiUrl),
      Mutation$AddInspectionComment.fromJson,
      variables: Variables$Mutation$AddInspectionComment(
        input: Input$TicketInspectionInput(
          comment: comment,
          lineNumber: line,
          ticketId: ticketId,
          media: [],
          discrepancies: [],
        ),
      ),
    );

    if (response.hasErrors()) {
      throw Exception(response.errors);
    }

    return response.data != null &&
        response.data!.addInspectionComment.isNotEmpty;
  }
}
