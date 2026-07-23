import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:http/http.dart';

class LoadOutService {
  LoadOutService({required BaseClient httpClient, required String apiUrl})
      : _httpClient = httpClient,
        _apiUrl = apiUrl;

  final BaseClient _httpClient;
  final String _apiUrl;

  Future<List<Query$SearchLoadOuts$loadOuts$nodes>?> searchLoadOuts(
    Input$SearchLoadOutsInput input,
  ) async {
    final response = await documentNodeQuerySearchLoadOuts.execute(
      _httpClient,
      Query$SearchLoadOuts.fromJson,
      url: Uri.tryParse(_apiUrl),
      variables: Variables$Query$SearchLoadOuts(
        input: input,
        first: 50,
      ),
    );

    if (response.hasErrors()) {
      throw Exception(response.errors);
    }

    return response.data?.loadOuts?.nodes;
  }

  Future<Query$GetLoadOutDetails$loadOut?> getLoadOut({
    String? loadOutId,
    String? ticketId,
  }) async {
    final response = await documentNodeQueryGetLoadOutDetails.execute(
      _httpClient,
      Query$GetLoadOutDetails.fromJson,
      url: Uri.tryParse(_apiUrl),
      variables: Variables$Query$GetLoadOutDetails(
        id: loadOutId,
        ticketId: ticketId,
      ),
    );

    if (response.hasErrors()) {
      throw Exception(response.errors);
    }

    return response.data?.loadOut;
  }

  Future<GraphQLResponse<Mutation$SaveLoadOut?>> saveLoadOut(
    Input$SaveLoadOutInput loadOut,
  ) async =>
      documentNodeMutationSaveLoadOut.execute(
        _httpClient,
        Mutation$SaveLoadOut.fromJson,
        url: Uri.tryParse(_apiUrl),
        variables: Variables$Mutation$SaveLoadOut(input: loadOut),
      );

  Future<GraphQLResponse<Mutation$CreateLoadOut?>> createLoadOut(
    Input$CreateLoadOutInput loadOutInput,
  ) =>
      documentNodeMutationCreateLoadOut.execute(
        _httpClient,
        Mutation$CreateLoadOut.fromJson,
        url: Uri.tryParse(_apiUrl),
        variables: Variables$Mutation$CreateLoadOut(input: loadOutInput),
      );

  Future<GraphQLResponse<Mutation$CompleteLoadOut?>> completeLoadOut(
    Input$SaveLoadOutInput loadOut,
  ) =>
      documentNodeMutationCompleteLoadOut.execute(
        _httpClient,
        Mutation$CompleteLoadOut.fromJson,
        url: Uri.tryParse(_apiUrl),
        variables: Variables$Mutation$CompleteLoadOut(input: loadOut),
      );
}
